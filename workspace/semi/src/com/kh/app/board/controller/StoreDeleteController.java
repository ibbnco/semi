package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.StoreService;
import com.kh.app.board.vo.AdminVo;

@MultipartConfig(
		maxFileSize = 1024 * 1024 * 50 ,		//파일 하나당 크기
		maxRequestSize = 1024 * 1024 * 50 * 10	//리퀘스트 총 크기
	)
@WebServlet("/LeeS/storeDelete")
public class StoreDeleteController extends HttpServlet {

	//게시글 삭제 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/LeeS/store.jsp").forward(req, resp);
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
			StoreService as = new StoreService();
			result = as.delete(no);
			
			
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 삭제 중 에러");
			e.printStackTrace();
		}
		
		//화면
		if(result == 1) {
			req.getSession().setAttribute("alertMsg", "게시글 삭제 성공!");
			resp.sendRedirect("/LeeS/store?page=1");
		}else {
			req.getSession().setAttribute("alertMsg", "게시글 삭제 실패 ...");
			resp.sendRedirect("/LeeS/store?page=1");
		}
		
	}

}//class