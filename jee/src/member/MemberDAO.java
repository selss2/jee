package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import global.Constants;

public class MemberDAO {
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs; // executeQuery() 에서만 리턴받는 객체
	private static MemberDAO instance = new MemberDAO();
	MemberBean session;
	public static MemberDAO getInstance() {
		return instance;
	}

	private MemberDAO() {
		try {
			Class.forName(Constants.ORACLE_DRIVER);
			con = DriverManager.getConnection(
					Constants.ORACLE_URL,
					Constants.USER_ID,
					Constants.USER_PW);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int insert(MemberBean param){
		String sql = "insert into member(id,pw,name,REG,ssn)"
				+ "values('"+param.getId()+"','"+param.getPw()+"','"+param.getName()
				+"','"+param.getRegDate()+"','"+param.getSsn()+"')";
		return exeUpdate(sql);
	}
	public MemberBean show() {
		System.out.println("session 생년월일:"+session.getBirth());
		return session;
	}
	
	public int update(MemberBean mem){
		String sql = "update member set pw = '"+mem.getPw()
			+"'where id = '"+mem.getId()+"'";
		return exeUpdate(sql);
	}
	public int exeUpdate(String sql) {
		int result = 0;
		try {
			Class.forName(Constants.ORACLE_DRIVER);
			con = DriverManager.getConnection(
					Constants.ORACLE_URL,
					Constants.USER_ID,
					Constants.USER_PW);
			stmt = con.createStatement();
			result = stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (result==0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");	
		}
		return result;
	}
	// list
	public List<MemberBean> list() {
		String sql="select * from member";
		List<MemberBean> list = new ArrayList<MemberBean>();
		try {
			Class.forName(Constants.ORACLE_DRIVER);
			con=DriverManager.getConnection(
					Constants.ORACLE_URL,
					Constants.USER_ID,
					Constants.USER_PW);
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				MemberBean t = new MemberBean(
						rs.getString("ID"),
						rs.getString("PW"),
						rs.getString("NAME"), 
						rs.getString("SSN")
						);
				t.setRegDate(rs.getString("REG"));
				list.add(t);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return list;
	}
	// findByPK
	public MemberBean findById(String pk) {
		String sql = "select * from member where id = '"+pk+"'";
		MemberBean temp = new MemberBean();
		try {
			Class.forName(Constants.ORACLE_DRIVER);
			con = DriverManager.getConnection(
					Constants.ORACLE_URL,
					Constants.USER_ID,
					Constants.USER_PW
					);
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				temp.setId(rs.getString("ID"));
				temp.setPw(rs.getString("PW"));
				temp.setName(rs.getString("NAME"));
				temp.setEmail(rs.getString("EMAIL"));
				temp.setGenderAndBirth(rs.getString("SSN"));
				temp.setRegDate(rs.getString("REG"));
				temp.setProfileImg(rs.getString("PROFILE_IMG"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return temp;
	}
	// findByNotPK
	public List<MemberBean> findByName(String name) {
		String sql = "select * from member where name ='"+name+"'";
		
		return null;
	}
	// count
	public int count() {
		String sql = "select count(*) as count from member";
		int count = 0;
		try {
			Class.forName(Constants.ORACLE_DRIVER);
			con = DriverManager.getConnection(
					Constants.ORACLE_URL,
					Constants.USER_ID,
					Constants.USER_PW
					);
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				count = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	public int delete(String id) {
		String sql = "delete from member where id = '"+id+"'";
		return exeUpdate(sql);
	}
	
	public boolean login(MemberBean param) {
		boolean loginOk= false;
		if(param.getId()!=null 
				&& param.getPw()!=null 
				&& this.existId(param.getId())){
			MemberBean member = this.findById(param.getId());
			if(member.getPw().equals(param.getPw())){
				loginOk = true;
			}
		}
		return loginOk;
	}
	public boolean existId(String id){
		boolean existOK = false;
		String sql = "select count(*) as count from member where id = ?";
		int result = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				result = rs.getInt("count");
				System.out.println("ID 카운트 결과:"+result);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result == 1){
			existOK = true;
		}
		return existOK;
	}
}