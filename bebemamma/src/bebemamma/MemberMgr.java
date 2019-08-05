package bebemamma;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberMgr {
	
	private Connection conn;
//	private DBConnectionMgr pool;
	
	public MemberMgr() {
		try {
            //생성자
        	Class.forName("com.mysql.cj.jdbc.Driver");
            String dbURL="jdbc:mysql://localhost:3306/bebemamma?serverTimezone=UTC";                             
            String dbID="root";// mysql 아이디 
            String dbPassword="tnqls123";// mysql 비밀번호
            
            conn=DriverManager.getConnection(dbURL, dbID, dbPassword);
        }
        catch (Exception e) {
        	System.out.println("error");
        }
	}
	
	public boolean checkId(String id) {
	//	Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
		//	con = pool.getConnection();
			sql = "select mem_id from meminfo where mem_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			flag = pstmt.executeQuery().next();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
		//	pool.freeConnection(con, pstmt, rs);
		}
		
		return flag;
	}
	
	public boolean insertMember(MemberBean bean) {
	//	Connection con = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		String sql = "insert into meminfo(mem_id, password, mem_name, mem_gender, baby_name, baby_gender, baby_month, baby_height, baby_weight, skinproblem, allergy)"
				+ "values(?,?,?,?,?,?,?,?,?,?,?)";
		try {
		//	con = pool.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getMemId());
			pstmt.setString(2, bean.getPwd());
			pstmt.setString(3, bean.getMemName());
			pstmt.setString(4, bean.getMemGender());
			pstmt.setString(5, bean.getBabyName());
			pstmt.setString(6, bean.getBabyGender());
			pstmt.setInt(7, bean.getBabyMonth());
			pstmt.setFloat(8, bean.getBabyHeight());
			pstmt.setFloat(9, bean.getBabyWeight());
			pstmt.setFloat(10, bean.getSkinproblem());
			
			String ag = "";
			
			for(int i = 0; i < bean.getAllergy().length; i++) {
				ag = ag + bean.getAllergy()[i];
			
				if(i != bean.getAllergy().length - 1){
					ag = ag + ", ";
				}
			}
			
			pstmt.setString(11, ag);
			if(pstmt.executeUpdate() == 1){
				flag = true;
			}
//			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
//		return -1;
		return flag;
	}
}
