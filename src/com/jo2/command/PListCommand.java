package com.jo2.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;
import javax.xml.bind.ParseConversionEvent;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

import com.jo2.DAO.MemDAO;
import com.jo2.DAO.PetDAO;
import com.jo2.VO.MemInfoVo;

public class PListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		
		String tel = request.getParameter("tel");
		
		MemDAO mDAO = new MemDAO();
		PetDAO pDAO = new PetDAO();
		
		int mID= mDAO.selectInfo(tel).getM_pk();
		
	

		
	}

}
