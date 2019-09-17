package bebemamma;

import java.util.HashMap;
import java.util.List;
import com.bebemamma.sqlMap.*; 
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSession;

public class MemberMgr {
    private SqlSessionFactory sqlSessionFactory = null; 
    private SqlSession sqlSession = null;
	
	public MemberMgr() {
		this.sqlSessionFactory = SqlSessionManager.getSqlSession();
        this.sqlSession = sqlSessionFactory.openSession(true);
	}
	
	public int login(String userID, String userPassword) {
    	try{
    		String result = sqlSession.selectOne("check_pw", userID);
    		if(result != null) {
				// 패스워드 일치한다면 실행
				if (result.equals(userPassword)) {
					return 1; // 로그인 성공
				} else
					return 0; // 비밀번호 불일치
    		}	
			return -1; // 아이디가 없음 오류
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류를 의미
	}
	
	public boolean checkId(String id) {
		try{
    		String result = sqlSession.selectOne("check_id", id);
    		if(result != null) {
				return true;
    		}	
    		else return false; 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public int get_Idnum(String id) {
		int result = sqlSession.selectOne("get_num_fromid", id);
		return result;
	}
	
	public boolean insertMember(MemberBean bean) {
		try {
			HashMap<String, Object> hash = new HashMap<String, Object>();
			
			String ag = "";
			
			for(int i = 0; i < bean.getAllergy().length; i++) {
				ag = ag + bean.getAllergy()[i];
			
				if(i != bean.getAllergy().length - 1){
					ag = ag + ", ";
				}
			}
			bean.setrealAllergy(ag);
			int result = sqlSession.insert("member_insert", bean);
			
			System.out.println(result);
			if(result==1) {
				return true;
			}
			else return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public String getAllegy(String id) {
		String alle = sqlSession.selectOne("check_allegy", id); 
		return alle;
	}

}
