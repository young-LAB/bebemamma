package bebemamma;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
public class UserDAO {
    private Connection conn;   //데이터베이스에 접근하기 위한 객체
    private PreparedStatement pstmt;  
    private ResultSet rs;   //정보를 담을 수 있는 변수를 생성
    
    public UserDAO() {
        try {
            //생성자
        	Class.forName("com.mysql.cj.jdbc.Driver");
            String dbURL="jdbc:mysql://localhost:3306/bebemamma?serverTimezone=UTC";                             
            String dbID="root";// mysql 아이디 
            String dbPassword="0000";// mysql 비밀번호
            
            conn=DriverManager.getConnection(dbURL, dbID, dbPassword);
        }
        catch (Exception e) {
        	System.out.println("error");
        }
    }
    
    public int login(String userID, String userPassword) {
		String SQL = "SELECT password FROM meminfo WHERE mem_id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			// 결과가 존재한다면 실행
			if (rs.next()) {
				// 패스워드 일치한다면 실행
				if (rs.getString(1).equals(userPassword)) {
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
    
    public int join(User user) {
        String SQL= "INSERT INTO MEMINFO VALUES(?, ?, ?, ?, ?, ?, ?, ?) ";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1,user.getUserID());
            pstmt.setString(2,user.getUserPassword());
            pstmt.setString(3,user.getUserHeight());
            pstmt.setString(4,user.getUserWeight());
            pstmt.setString(5,user.getUserMonth());
            pstmt.setString(6,user.getUserSkin());
            pstmt.setString(7,user.getUserAllergy());
            pstmt.setString(8,user.getUserName());
            return pstmt.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}

