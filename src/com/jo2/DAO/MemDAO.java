package com.jo2.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

import com.jo2.DBConnction.DBconnection;
import com.jo2.VO.MemInfoVo;





public class MemDAO {
	
	private static MemDAO instance;
	
    public static MemDAO getInstance() throws ClassNotFoundException, SQLException{
        if(instance == null)
            instance = new MemDAO();
        return instance;
     }

	private Connection con;						
	
	//코넥션
	public MemDAO() throws ClassNotFoundException, SQLException {
		con=new DBconnection().getConnection(); 
		
	} 
	
	//신규 회원 등록 : C
	public void  mJoin(String userName, String tel, String pw, String memo) throws SQLException {	
		System.out.println("Join메소드 : "+userName+"\t"+tel+"\t"+pw);
		PreparedStatement pstmt=null;
		ResultSet rs=null;			
		String query = "insert into bw_member values(mem_seq.nextval,?,?,?,?)";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userName); 
			pstmt.setString(2, tel); 
			pstmt.setString(3,	pw); 
			pstmt.setString(4,	memo); 
			
			pstmt.executeUpdate();				
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}//t-r-end
		}				
	}
		
	//업데이트 U
	public void updateMember (MemInfoVo member) {
		
		PreparedStatement pstmt=null;
		String query = "update bw_member set m_name=?, tel=?, pw=?, memo=? where m_pk=?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, member.getM_name());
			pstmt.setString(2, member.getTel());
			pstmt.setString(3, member.getPw());
			pstmt.setString(4, member.getMemo());
			pstmt.setInt(5, member.getM_pk());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}//t-r-end
		}		
	}
	
	//tel로 해당 멤버 조회 R
	public MemInfoVo selectInfo(String tel)	throws SQLException{
		System.out.println("selectInfo메소드(m) : "+tel);
		PreparedStatement pstmt=null;
		ResultSet rs=null;	
		MemInfoVo mVO=null;		
		String sql ="select * from bw_member where tel=?";	//? : 원하는 사람 이름 
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, tel);
		rs = pstmt.executeQuery();
		
		if(rs.next()){	//찾았으면 rs종이박스에 홍길동정보가 있다는것 
			int id=rs.getInt("m_pk");
			String name =rs.getString("m_name");
			String tel1 = rs.getString("tel");
			String pw = rs.getString("pw");
			String memo = rs.getString("memo");				//홍길동정보 전부꺼내서 
			mVO=new MemInfoVo(id,name,tel1,pw,memo);	//vo 그릇에 넣자 
			//생성자로 가서 
		}else { //그런 이름이 없으면 
			mVO=null;	//tv객체참조변수에 null (return null) 
		}				
		return mVO;		//그런이름이 있으면 vo리턴 
	}
	
	
	//D
	public boolean deleteMember(String tel, String pw) {
		PreparedStatement pstmt=null;		
		String query = "delete from bw_table where tel=? and pw=?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, tel);
			pstmt.setString(2, pw);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("delete 에러!");
			e.printStackTrace();
			return false;
		}
		return true;
	}	
	

	
	
	
	//회원 로그인 (tel,code)
	
	
	
} //DAO -end









