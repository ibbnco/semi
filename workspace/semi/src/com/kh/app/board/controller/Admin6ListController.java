package com.kh.app.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.Admin6Service;
import com.kh.app.board.vo.AdminVo;
import com.kh.app.util.page.PageVo;

@WebServlet("/LeeS/admin6")
public class Admin6ListController extends HttpServlet {
	
private Admin6Service as = new Admin6Service();
	
	//게시글 목록 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int currentPage = (int)Integer.parseInt( req.getParameter("page") );
			int listCount = as.selectCount();
			int pageLimit = 5;
			int boardLimit = 5;
			
			//데이터 뭉치기
			PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
			
			List<AdminVo> boardList = as.selectList(pageVo);			
			
			req.setAttribute("boardList", boardList);
			req.setAttribute("pageVo", pageVo);
			req.getRequestDispatcher("/LeeS/admin6.jsp").forward(req, resp);
			
	     	}catch(Exception e) {
	     		int currentPage = 1;
	     	System.out.println("[ERROR] 게시글 조회 에러");	
			e.printStackTrace();
		    }		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}