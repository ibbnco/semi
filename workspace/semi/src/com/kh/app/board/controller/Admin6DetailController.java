package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.Admin6Service;
import com.kh.app.board.vo.AdminVo;

@WebServlet("/LeeS/detail6")
public class Admin6DetailController extends HttpServlet {

	//게시글 상세 조회
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			//데이터 꺼내기
			String no = req.getParameter("no");
			
			//데이터 뭉치기
			
			//서비스 호출
			Admin6Service as = new Admin6Service();
			AdminVo vo = as.selectOne(no);
			
			//화면
			req.setAttribute("AdminVo", vo);
			req.getRequestDispatcher("/LeeS/detail6.jsp").forward(req, resp);
			
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 상세조회중 에러");
			e.printStackTrace();
		}
		
	}//method
	
}//class