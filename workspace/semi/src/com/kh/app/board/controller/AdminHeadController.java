package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.AdminHeadService;
import com.kh.app.board.vo.HeadVo;

@WebServlet("/LeeS/adminHead")
public class AdminHeadController extends HttpServlet {
	
private AdminHeadService as = new AdminHeadService();
	
	//게시글 목록 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {			
			int cnt = as.selectCount();
			String id = as.id();
			int lv = as.lv();

			HeadVo hv = new HeadVo(id, lv, cnt);
			
								
			req.setAttribute("hv", hv);
			req.getRequestDispatcher("/LeeS/adminHead.jsp").forward(req, resp);
			
	     	}catch(Exception e) {
	     	System.out.println("[ERROR] 조회 에러");	
			e.printStackTrace();
		    }		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}