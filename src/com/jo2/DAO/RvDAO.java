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
import com.jo2.VO.PetInfoVo;
import com.jo2.VO.RvInfoVo;





public class RvDAO {
	
	private static RvDAO instance;
	
    public static RvDAO getInstance() throws ClassNotFoundException, SQLException{
        if(instance == null)
            instance = new RvDAO();
        return instance;
     }

	private Connection con;						
	
	//코넥션
	public RvDAO() throws ClassNotFoundException, SQLException {
		con=new DBconnection().getConnection(); 
		
	} 
	
	//신규 회원 등록 : C
	public void  rRegister(int mID, int pID, String inDate,String outDate, String Serv) throws SQLException {	
		System.out.println("rRegister메소드 : "+mID+"\t"+pID+"\t"+inDate+"\t"+outDate+"\t"+Serv);
		PreparedStatement pstmt=null;
		ResultSet rs=null;			
		String query = "insert into bw_rv values(?,?,?,?,?)";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, mID); 
			pstmt.setInt(2, pID); 
			pstmt.setString(3,	inDate);  
			pstmt.setString(4,	outDate);  
			pstmt.setString(5,	Serv);  			
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
	public void updateRv (RvInfoVo rv) {
		
		PreparedStatement pstmt=null;
		String query = "update bw_rv set in_date=?, out_date=?, serv_type where m_pk=? and p_pk=?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, rv.getIn_date());
			pstmt.setString(2, rv.getOut_date());
			pstmt.setString(3, rv.getS_type());
			pstmt.setInt(4, rv.getM_id());
			pstmt.setInt(5, rv.getP_id());			
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
	public RvInfoVo selectInfo(RvInfoVo rv)	throws SQLException{
		System.out.println("getInfo(rv)메소드 : "+rv.toString());
		PreparedStatement pstmt=null;
		ResultSet rs=null;	
		RvInfoVo rVO=null;		
		String sql = "SELECT * FROM bw_rv "
				+ "	  where m_pk=?"
				+ "	  and p_pk=?"
				+ "	  and in_date=?";	//? : 원하는 사람 이름 
		
	
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, rv.getM_id()); 
		pstmt.setInt(2, rv.getP_id()); 
		pstmt.setString(3,	rv.getIn_date());
		rs = pstmt.executeQuery();
		if(rs.next()){	//찾았으면 rs종이박스에 홍길동정보가 있다는것 
			int mID = rs.getInt("m_pk");
			int pID_ = rs.getInt("p_pk");
			String pName = rs.getString("in_date");
			String pWeight = rs.getString("out_date");
			String pBirth = rs.getString("serv_type");				//홍길동정보 전부꺼내서 
			rVO=new RvInfoVo(mID,pID_,pName,pWeight,pBirth);	//vo 그릇에 넣자 
			//생성자로 가서 
		}else { //그런 이름이 없으면 
			rVO=null;	//tv객체참조변수에 null (return null) 
		}				
		return rVO;		//그런이름이 있으면 vo리턴 
	}
	
	//특정회원 예약 리스트
	public ArrayList<RvInfoVo> selectMyRv(int mID) throws SQLException{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList<RvInfoVo> myRvList = new ArrayList<RvInfoVo>();
		
		String query = "select * from bw_rv where m_pk=?";
		pstmt = con.prepareStatement(query);
		pstmt.setInt(1, mID);
		rs = pstmt.executeQuery();		
		while(rs.next()) {
			int pID = rs.getInt(2);
			String inDate = rs.getString(3);			
			String outDate = rs.getString(4);			
			String sType = rs.getString(5);	
			RvInfoVo rVO = new RvInfoVo(mID,pID,inDate,outDate,sType);
			myRvList.add(rVO);
		}//while-end			
		return myRvList;
	}
	
	
	//D
	public boolean deleteRv(RvInfoVo rv) {
		PreparedStatement pstmt=null;		
		String query = "delete from bw_rv "
				+ "	  where m_pk=?"
				+ "	  and p_pk=?"
				+ "	  and in_date=?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, rv.getM_id()); 
			pstmt.setInt(2, rv.getP_id()); 
			pstmt.setString(3,	rv.getIn_date());
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









