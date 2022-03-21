package com.jo2.command;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.ParseConversionEvent;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

import com.jo2.DAO.MemDAO;
import com.jo2.DAO.PetDAO;
import com.jo2.DAO.RvDAO;
import com.jo2.VO.MemInfoVo;

public class PetAppendCommand implements BCommand {
	private static final long serialVersionUID = 1L;
	

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String tel = request.getParameter("tel");
		
		String petName = request.getParameter("pname");
		String p_weight = request.getParameter("pweight");
		String p_birth = request.getParameter("age");
		String memo = request.getParameter("memo");
		
		MemDAO mDao = new MemDAO();
		PetDAO pDao	=  new PetDAO();
		
		MemInfoVo mVO = mDao.selectInfo(tel);
		
		
		pDao.pJoin(mVO.getM_pk(),petName, p_weight,p_birth,memo);
		
		
		
		
		
		/*반려동물
		String petName = request.getParameter("pname");
		String p_weight = request.getParameter("pweight");
		String p_birth = request.getParameter("age");
		
		
		//예약정보
		String inDate = request.getParameter("desire-date");
		String outDate = request.getParameter("checkout-date");
		String service = request.getParameter("service");
		*/
		
		/*
		PetDAO pDao	=  new PetDAO();
		pDao.pRegister(mDao.getID(tel),petName, p_weight,p_birth);
		
		
		//date string
		RvDAO rDao = new RvDAO();
		rDao.rRegister(mDao.getID(tel),pDao.getID(mDao.getID(tel)), inDate,outDate,service);
		
		*/
		


	}
}
