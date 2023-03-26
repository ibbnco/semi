package com.kh.app.pay;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.member.service.MemberService;
import com.kh.app.vo.MemberVo;

@WebServlet("/newbmovie/cart")
public class cart extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("02_store_copy.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String pdtno = req.getParameter("product_no"); 
		String pdtname = req.getParameter("product_name");
		String pdtprice = req.getParameter("product_price");

		//데이터 뭉치기
		MemberVo vo = new MemberVo();
		vo.setProduct_no(pdtno);
		vo.setProduct_name(pdtname);
		vo.setProduct_price(pdtprice);
		
		//result
		MemberVo loginMember = null;
		try {
			MemberService service = new MemberService();
			loginMember = service.login(vo);
		} catch (Exception e) {
			System.out.println("[ERROR] 로그인 중 예외발생");
			e.printStackTrace();
		}
		
		//화면
		if (loginMember != null) {
			req.getSession().setAttribute("loginMember", loginMember);
			req.getSession().setAttribute("alertMsg", "로그인 성공");
			resp.sendRedirect("/");
		}else {
			req.getSession().setAttribute("alertMsg", "로그인 실패");
			resp.sendRedirect("/");
		
		}
		
	}

		
	}
	

