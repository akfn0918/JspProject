package com.jo2.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.jo2.DBConnction.DBconnection;
import com.jo2.VO.MemInfoVo;
import com.jo2.VO.PetInfoVo;



public class PetDAO {

	private Connection con;						
	
	//코넥션
	public PetDAO() throws ClassNotFoundException, SQLException {
		con=new DBconnection().getConnection(); 
	} 
	

	//C
	public void  pJoin(int mID, String petName, String pWeight, String pBirth, String memo) throws SQLException {	
		System.out.println("등록메소드 작동"+mID+"\t"+petName+"\t"+pWeight+"\t"+pBirth);
		PreparedStatement pstmt=null;
		ResultSet rs=null;			
		
		String query = "insert into bw_pet values(?,pet_seq.nextval,?,?,?,?)";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, mID); 
			pstmt.setString(2, petName); 
			pstmt.setString(3,pWeight);
			pstmt.setString(4, pBirth);
			pstmt.setString(5, memo);
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
	//U
	public void updatePet (PetInfoVo pet) {
		
		PreparedStatement pstmt=null;
		String query = "update bw_pet set p_name=?, p_weight=?, p_birth=? where m_pk=? and p_pk=?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,pet.getP_name());
			pstmt.setInt(2, pet.getP_weight());
			pstmt.setString(3, pet.getP_birth());
			pstmt.setInt(4, pet.getM_id());
			pstmt.setInt(5, pet.getP_id());			
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
	//R
	public PetInfoVo selectInfo(int pID)	throws SQLException{
		System.out.println("getInfo(pet)메소드 : "+pID);
		PreparedStatement pstmt=null;
		ResultSet rs=null;	
		PetInfoVo pVO=null;		
		String sql = "SELECT * FROM bw_pet where p_pk=?";	//? : 원하는 사람 이름 
		
	
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, pID);
		rs = pstmt.executeQuery();
		if(rs.next()){	//찾았으면 rs종이박스에 홍길동정보가 있다는것 
			int mID = rs.getInt("m_pk");
			int pID_ = rs.getInt("p_pk");
			String pName = rs.getString("p_name");
			int pWeight = rs.getInt("p_weight");
			String pBirth = rs.getString("p_birth");				//홍길동정보 전부꺼내서 
			String memo = rs.getString("memo");				//홍길동정보 전부꺼내서 
			pVO=new PetInfoVo(mID,pID_,pName,pWeight,pBirth,memo);	//vo 그릇에 넣자 
			//생성자로 가서 
		}else { //그런 이름이 없으면 
			pVO=null;	//tv객체참조변수에 null (return null) 
		}				
		return pVO;		//그런이름이 있으면 vo리턴 
	}
	
	public PetInfoVo selectInfo2(int mID , String pName)	throws SQLException{
		System.out.println("selectInfo2(pet)메소드 : "+mID+"\t"+pName);
		PreparedStatement pstmt=null;
		ResultSet rs=null;	
		PetInfoVo pVO=null;		
		String sql = "SELECT * FROM bw_pet where m_pk=? and p_name=?";	//? : 원하는 사람 이름 
		
	
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, mID);
		pstmt.setString(2, pName);
		rs = pstmt.executeQuery();
		if(rs.next()){	//찾았으면 rs종이박스에 홍길동정보가 있다는것 
			int mID2 = rs.getInt("m_pk");
			int pID2 = rs.getInt("p_pk");
			String pName2 = rs.getString("p_name");
			int pWeight2 = rs.getInt("p_weight");
			String pBirth2 = rs.getString("p_birth");				//홍길동정보 전부꺼내서 
			String memo2 = rs.getString("memo");				//홍길동정보 전부꺼내서 
			pVO=new PetInfoVo(mID2,pID2,pName2,pWeight2,pBirth2,memo2);	//vo 그릇에 넣자 
			//생성자로 가서 
		}else { //그런 이름이 없으면 
			pVO=null;	//tv객체참조변수에 null (return null) 
		}				
		return pVO;		//그런이름이 있으면 vo리턴 
	}
	
	//모든 동물 리스트 R2
	public ArrayList<PetInfoVo> selectAll() throws SQLException{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList<PetInfoVo> petList = new ArrayList<PetInfoVo>();
		
		String query = "select * from bw_pet";
		pstmt = con.prepareStatement(query);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			int mID = rs.getInt(1);
			int pID = rs.getInt(2);
			String pName = rs.getString(3);			
			int pWeight = rs.getInt(4);			
			String pBirth = rs.getString(5);	
			String memo = rs.getString(6);	
			
			PetInfoVo pvo = new PetInfoVo(mID,pID,pName,pWeight,pBirth,memo);
			
			petList.add(pvo);
		}//while-end
		return petList;
		
				
	}
	
	//D!
	public boolean deletePet(int m_id, String pName) {
		PreparedStatement pstmt=null;		
		String query = "delete from bw_table where m_pk=? and p_name=?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, m_id);
			pstmt.setString(2, pName);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("delete 에러!");
			e.printStackTrace();
			return false;
		}
		return true;
	}
	//특정 회원의 동물 리스트
	public ArrayList<PetInfoVo> selectMyPets(int m_id) throws SQLException{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList<PetInfoVo> petList = new ArrayList<PetInfoVo>();
		
		String query = "select * from bw_pet where m_pk=?";
		pstmt = con.prepareStatement(query);
		pstmt.setInt(1, m_id);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			int mID = rs.getInt(1);
			int pID = rs.getInt(2);
			String pName = rs.getString(3);			
			int pWeight = rs.getInt(4);			
			String pBirth = rs.getString(5);	
			String memo = rs.getString(6);	
			
			PetInfoVo pvo = new PetInfoVo(mID,pID,pName,pWeight,pBirth,memo);
			
			petList.add(pvo);
		}//while-end
		return petList;				
	}
	
	public int getID(int mID) throws SQLException {		
		PreparedStatement pstmt=null;
		ResultSet rs=null;			
		String query = "Select * from bw_pet where m_pk='?'";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, mID); 
			rs = pstmt.executeQuery();
			rs.next();
			
			return rs.getInt(2);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}//t-r-end
		}
		return rs.getInt(2); 			
	}
	
	
	
	//회원 로그인 (tel,code)
	
	
	
} //DAO -end









