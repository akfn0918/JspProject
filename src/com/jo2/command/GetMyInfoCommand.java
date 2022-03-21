package com.jo2.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.ParseConversionEvent;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

import com.jo2.DAO.MemDAO;
import com.jo2.VO.MemInfoVo;

public class GetMyInfoCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String tel = request.getParameter("tel");	
		String pw  = request.getParameter("pw");
		
		MemDAO mDAO = null;
		MemInfoVo mVO = null;
		
		
		
		
		
	}

}
