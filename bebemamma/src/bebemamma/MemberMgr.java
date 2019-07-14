package bebemamma;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.util.Vector;

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
			sql = "select id from meminfo where id = ?";
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
		String sql = null;
		PreparedStatement num;
		boolean flag = false;
		try {
		//	con = pool.getConnection();
			sql = "insert into meminfo(mem_num, mem_id, password, name, height, weight, month, skinproblem)values(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,12);   //어떻게 해야할지 모르겠음.
			pstmt.setString(2, bean.getId());
			pstmt.setString(3, bean.getPwd());
			pstmt.setString(4, bean.getName());
			pstmt.setFloat(5, bean.getHeight());
			pstmt.setFloat(6, bean.getWeight());
			pstmt.setInt(7, bean.getAge());
			pstmt.setInt(8, bean.getSkin());
			if(pstmt.executeUpdate() == 1){
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		//	pool.freeConnection(con, pstmt);
		}
		return flag;
	}
}
