package com.jo2.command;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;
import javax.xml.bind.ParseConversionEvent;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

import com.jo2.DAO.MemDAO;
import com.jo2.DAO.PetDAO;
import com.jo2.DAO.RvDAO;
import com.jo2.VO.MemInfoVo;
import com.jo2.VO.RvInfoVo;

public class RvListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		
		String tel = request.getParameter("tel");
		
		MemInfoVo mVO = new MemInfoVo();
		
		MemDAO mDAO = new MemDAO();
		PetDAO pDAO = new PetDAO();
		RvDAO rDAO = new RvDAO();
		
		mVO = mDAO.selectInfo(tel);
		
		ArrayList<RvInfoVo> myRvList = rDAO.selectMyRv(mVO.getM_pk());
		
		request.setAttribute("myRvList", myRvList);
	

		
	}

}
