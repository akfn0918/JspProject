package com.jo2.command;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.jo2.DAO.MemDAO;
import com.jo2.DAO.PetDAO;
import com.jo2.DAO.RvDAO;
import com.jo2.VO.MemInfoVo;
import com.jo2.VO.PetInfoVo;
import com.jo2.VO.RvInfoVo;

public class MyPageCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		System.out.println("마이페이지커맨드 작동");
		
		String tel = request.getParameter("tel");	
		
		MemDAO mDAO = new MemDAO();
		PetDAO pDAO = new PetDAO();
		RvDAO rvDAO = new RvDAO();
		
		MemInfoVo mVO = mDAO.selectInfo(tel);
		ArrayList<PetInfoVo> pVO = pDAO.selectMyPets(mVO.getM_pk());
		ArrayList<RvInfoVo> rVO = rvDAO.selectMyRv(mVO.getM_pk());
		

		request.setAttribute("tel", tel);/////////
		request.setAttribute("mVO", mVO);/////////////
		request.setAttribute("pVO", pVO);/////////////
		request.setAttribute("rvVO", rVO);/////////////

		
		
		
		
	}

}
