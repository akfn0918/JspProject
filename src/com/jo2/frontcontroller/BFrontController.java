package com.jo2.frontcontroller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jo2.DAO.MemDAO;
import com.jo2.DAO.PetDAO;
import com.jo2.VO.MemInfoVo;
import com.jo2.VO.PetInfoVo;
import com.jo2.bwService.bwService;
import com.jo2.command.BCommand;
import com.jo2.command.MemberJoinCommand;
import com.jo2.command.MyPageCommand;
import com.jo2.command.PListCommand;
import com.jo2.command.PetAppendCommand;
import com.jo2.command.RvAppendCommand;
import com.jo2.command.RvListCommand;


/**
 * Servlet implementation class SawonFrontController
 */
//@WebServlet("/SawonFrontController")
@WebServlet("*.do")   // 확장자가 .do 면 무조건 이곳으로 오게 된다.
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private bwService service;
	
	public BFrontController() throws ClassNotFoundException, SQLException {
		service = new bwService();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			actionDo(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			actionDo(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//실제 구현 부분
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
		
		System.out.println("actionDo");
		
		
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		//넘어오는 command를 정리
		String c =request.getRequestURI().substring(request.getContextPath().length());
				
		String viewPage = null;  
		BCommand command = null; 
		
		String tel = request.getParameter("tel");
			
		
		switch(c) {	
		
		//마이페이지를 보여줌
		case "/myPage.do":							//들어오는 명령, 수행해야할 일
			System.out.println("myPage.do 실행");
			command = new MyPageCommand();			//해당되는 커맨드 객체 생성
		    command.execute(request,response);
			viewPage = "myPage.jsp";			break;	//실행 결과를 view	
			
		case "/password1.do":
			System.out.println("password1.do 실행");
			System.out.println("pw 확인 후 로그인 시도합니다.");
			String pw = request.getParameter("pw");			
			
			if(service.login(tel, pw)) {
				System.out.println("로그인1 성공");
				request.setAttribute("msg", "로그인 성공");
				System.out.println(tel.toString());
				request.setAttribute("tel", tel);
				viewPage = "myPage.do";
			}else {
				System.out.println("로그인1 실패");
				request.setAttribute("msg", "비밀번호를 확인해주세요");
				viewPage = "password1.jsp";
			}										break;
			
		case "/telCheck.do":			
			if	(service.telCheck(tel)) {
				request.setAttribute("msg", "이미 가입된 전화번호입니다!");
				viewPage="password2.jsp";
			}else {
				request.setAttribute("msg", "신규 회원님! 회원가입해주세요");
				viewPage="userJoin.jsp";
			}	
			request.getSession().setAttribute("tel", tel);		break;	//실행 결과를 view
			
		//회원가입
		case "/join.do":							//들어오는 명령, 수행해야할 일 	//신규 회원 확인 절차
			command = new MemberJoinCommand();			//해당되는 커맨드 객체 생성
			System.out.println("회원 가입 성공!");
			command.execute(request,response);		//해당되는 커맨드 실행!
			viewPage = "password2.jsp"; 			break;				
			
		case "/password2.do":
			System.out.println("password2 실행");
			String pw2 = request.getParameter("pw");
						
			if(service.login(tel, pw2)) {
				System.out.println("로그인2 성공");
				request.setAttribute("msg", "로그인 성공");				
				MemDAO mDAO =new MemDAO();				
				MemInfoVo mVO = mDAO.selectInfo(tel);				
				request.setAttribute("mVO", mVO);
				System.out.println(tel.toString());
				viewPage = "reservation1.jsp";
			}else {
				request.setAttribute("msg", "이미 가입된 전화번호입니다!");
				viewPage = "password2.jsp";
			}										break;		
		
		//예약정보입력1 (펫정보 유무 확인 및 업데이트)
		case "/reservation1.do":							//들어오는 명령, 수행해야할 일 	//신규 회원 확인 절차
			String pName = request.getParameter("pname");
			int pWeight = Integer.parseInt(request.getParameter("pweight"));
			String pBirth = request.getParameter("pbirth");
			String memo = request.getParameter("memo");
			
			if(service.petCheck(tel, pName)) {
				System.out.println("rv1 성공");
				MemDAO mDAO = new MemDAO();
				PetDAO pDAO = new PetDAO();
				
				MemInfoVo mVO = mDAO.selectInfo(tel);	
				PetInfoVo pVO = pDAO.selectInfo2(mVO.getM_pk(), pName);
				
				PetInfoVo pVO_new = new PetInfoVo(pVO.getM_id(),pVO.getP_id(),pName,pWeight,pBirth,memo);
				pDAO.updatePet(pVO_new);
				
				request.setAttribute("mVO", mVO);
				request.setAttribute("pVO", pVO_new);
								
				request.setAttribute("msg", "rv1 성공");
								
				viewPage = "reservation2.jsp";
			}else {
				request.setAttribute("msg", "rv1 실패");
				viewPage = "password2.jsp";
			}							 			break;		
			
		//예약정보입력2
		case "/reservation2.do":							//들어오는 명령, 수행해야할 일 	//신규 회원 확인 절차
			command = new RvAppendCommand();			//해당되는 커맨드 객체 생성
			command.execute(request,response);		//해당되는 커맨드 실행!
			viewPage = "rv_config.jsp"; 			break;		
		




		
		//mID로 rv리스트 소환
		case "/.do":							//들어오는 명령, 수행해야할 일 	//신규 회원 확인 절차
			command = new RvListCommand();			//해당되는 커맨드 객체 생성
			command.execute(request,response);		//해당되는 커맨드 실행!
			viewPage = ".jsp"; 			break;
			
		}

			
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	
	}
}
	
	


/*
 * 
 * 		switch(c) {
			//마이페이지를 보여줌
			case "/myPage.do":							//들어오는 명령, 수행해야할 일 	
				command = new MyPageCommand();			//해당되는 커맨드 객체 생성
			    command.execute(request,response);
				viewPage = "mypage.jsp";			break;	//실행 결과를 view		
			
			case "/telCheck.do":						//들어오는 명령, 수행해야할 일 	//신규 회원 확인 절차
				command = new TelCheckCommand();		//해당되는 커맨드 객체 생성
				command.execute(request,response);		//해당되는 커맨드 실행!
				viewPage = "telCheck.jsp";			break;	//실행 결과를 view		
	
				
			case "/petlist.do":							//들어오는 명령, 수행해야할 일 	//신규 회원 확인 절차
				command = new PListCommand();			//해당되는 커맨드 객체 생성
				command.execute(request,response);		//해당되는 커맨드 실행!
				viewPage = "mypage.jsp"; 			break;
				
			case "/register.do":							//들어오는 명령, 수행해야할 일 	//신규 회원 확인 절차
				command = new PListCommand();			//해당되는 커맨드 객체 생성
				command.execute(request,response);		//해당되는 커맨드 실행!
				viewPage = "mypage.jsp"; 			break;				
				
				
 */