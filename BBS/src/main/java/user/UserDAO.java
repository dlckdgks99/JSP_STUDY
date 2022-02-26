package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	//mysql접속 
	public UserDAO() {
		try {
			String dbURL="jdbc:mysql://localhost:3306/BBS";
			String dbID="root";
			String dbPassword="1748";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		} catch (Exception e) {
			e.printStackTrace();		
			}
	}
	//로그인 시도 함수
	public int login(String userID, String userPassword) {
		//sql에 입력할 명령어
		String SQL="SELECT userPassword From USER WHERE userID = ?";
		try {
			
			//해킹을 피하기 위해서
			pstmt=conn.prepareStatement(SQL);
			
			pstmt.setString(1,userID);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;//로그인 성공
					}
				else 
					return 0;//비밀번호 불일치
			}
			return -1;//아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;//데이터베이스 오류
	}
	public int join(User user) {
		String SQL="INSERT INTO USER VALUES (?, ?, ?, ?, ?)";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt=setString(1, user.getUserID());
			pstmt=setString(2, user.getUserPassword());
			pstmt=setString(3, user.getUserName());
			pstmt=setString(4, user.getUserGender());
			pstmt=setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		//Insert는 1이상의 값이 반환되기때문에
		return -1; //데이터 베이스 오류
	}
	private PreparedStatement setString(int i, String userID) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
