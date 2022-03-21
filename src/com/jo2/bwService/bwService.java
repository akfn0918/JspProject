package com.jo2.bwService;

import java.sql.SQLException;

import com.jo2.DAO.MemDAO;
import com.jo2.DAO.PetDAO;
import com.jo2.VO.MemInfoVo;
import com.jo2.VO.PetInfoVo;

public class bwService { 
	
	private MemDAO mDAO;
	public bwService() throws ClassNotFoundException, SQLException {
		mDAO = MemDAO.getInstance();
	}
	
	public boolean login (String tel, String pw) throws SQLException {
		MemInfoVo mVO = mDAO.selectInfo(tel);
		System.out.println("서비스.로그인 시도중");
		if (mVO==null) { //정보가 없으면 로그인 실패!
			return false;
		}else { //정보가 있으면 pw 확인
			if(mVO.getPw().equals(pw)) {
				return true;
			}else {
				System.out.println("pw 틀렸어요");
				return false;
			}				
		}		
	}
	
	
	public boolean telCheck(String tel) throws SQLException {
		System.out.println("서비스.전화번호 확인중");
		MemInfoVo mVO = mDAO.selectInfo(tel);
		
		if (mVO==null) { //정보가 없으면 로그인 실패!
			return false;
		}else { //정보가 있으면 tel 확인
			if(mVO.getTel().equals(tel)) {
				return true;
			}else {
				return false;
			}	
		}		
	}
	
	public boolean petCheck(String tel,String pName) throws ClassNotFoundException, SQLException {
		System.out.println("petcheck 작동");
		
		MemDAO mDAO = new MemDAO();
		PetDAO pDAO = new PetDAO();
		
		MemInfoVo mVO = mDAO.selectInfo(tel);
		PetInfoVo pVO = pDAO.selectInfo2(mVO.getM_pk(), pName);
				
		if (pVO==null) { //정보가 없으면 로그인 실패!
			return false;
		}else { //정보가 있으면 tel 확인
			if(pVO.getP_name().equals(pName)) {
				return true;
			}else {
				return false;
			}
		}	
		
	}
	

}
