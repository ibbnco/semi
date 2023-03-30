package com.kh.app.booking.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/movie/pay")
public class MovieSelectContoller3 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<BoardVo> boardList = null;
		try {
			BoardService bs = new BoardService();
			boardList = bs.selectList();			
		}catch(Exception e) {
			System.out.println("예외 발생");
			e.printStackTrace();
		}
		System.out.println(boardList);
		
		//화면
		req.setAttribute("boardList", boardList);
		req.getRequestDispatcher("/jeongwoon/reservation3-pay.jsp").forward(req, resp);
	}
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			doGet(req, resp);
		}
}