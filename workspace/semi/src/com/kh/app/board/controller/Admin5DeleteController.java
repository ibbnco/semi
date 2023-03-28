package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.Admin5Service;
import com.kh.app.board.vo.AdminVo;

@MultipartConfig(
		maxFileSize = 1024 * 1024 * 50 ,		//파일 하나당 크기
		maxRequestSize = 1024 * 1024 * 50 * 10	//리퀘스트 총 크기
	)
@WebServlet("/LeeS/delete5")
public class Admin5DeleteController extends HttpServlet {

	//게시글 삭제 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/LeeS/admin5.jsp").forward(req, resp);
	}
	
	//게시글 삭제
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        
		//데이터 꺼내기
		//String title = req.getParameter("title");
		String no = req.getParameter("no");
		System.out.println("no =" + no);		
		//AdminVo vo = new AdminVo();
		//vo.setTitle(title);
		
		int result = 0;
		try {			
			Admin5Service as = new Admin5Service();
			result = as.delete(no);
			
			
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 삭제 중 에러");
			e.printStackTrace();
		}
		
		//화면
		if(result == 1) {
			System.out.println("성공");
			req.getSession().setAttribute("alertMsg", "게시글 삭제 성공!");
			resp.sendRedirect("/LeeS/admin5.jsp");
		}else {
			System.out.println("실패");
			req.getSession().setAttribute("alertMsg", "게시글 삭제 실패 ...");
			resp.sendRedirect("/LeeS/admin5.jsp");
		}
		
	}

}//class