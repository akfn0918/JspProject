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
import com.jo2.VO.PetInfoVo;

public class RvAppendCommand implements BCommand {
	private static final long serialVersionUID = 1L;
	

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		//회원정보
		String pName = request.getParameter("pname");
		String tel = request.getParameter("tel");
		String pweight = request.getParameter("pweight");
		
		//예약정보 
		String inDate = request.getParameter("desire-date");
		String outDate = request.getParameter("checkout-date");
		String service = request.getParameter("service");


		MemDAO mDAO = new MemDAO();
		PetDAO pDAO = new PetDAO();
		RvDAO rDAO = new RvDAO();
		
		MemInfoVo mVO = mDAO.selectInfo(tel);	
		PetInfoVo pVO = pDAO.selectInfo2(mVO.getM_pk(), pName);

		request.setAttribute("mVO", mVO);
		request.setAttribute("pVO", pVO);
		
		
		rDAO.rRegister( mVO.getM_pk(),				//member_id >
						pVO.getP_id(), 	//pet_id
						inDate,
						outDate,
						service);
			
		
			


	}
}
