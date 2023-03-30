package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.QNAService;
import com.kh.app.board.vo.AdminVo;

@MultipartConfig(
		maxFileSize = 1024 * 1024 * 50 ,		//파일 하나당 크기
		maxRequestSize = 1024 * 1024 * 50 * 10	//리퀘스트 총 크기
	)
@WebServlet("/LeeS/QNAWrite")
public class QNAWriteController extends HttpServlet {

	//게시글 작성 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/LeeS/QNADetail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
		String content = req.getParameter("content");
		String no = req.getParameter("no");
		
		AdminVo vo = new AdminVo();
		vo.setContent(content);
		
		int result = 0;
		try {
			QNAService as = new QNAService();
			result = as.write(vo, no);
			
			
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 수정 중 에러");
			e.printStackTrace();
		}
		
		//화면
		if(result == 1) {
			req.getSession().setAttribute("alertMsg", "게시글 수정 성공!");
			resp.sendRedirect("/LeeS/QNA?page=1");
		}else {
			req.getSession().setAttribute("alertMsg", "게시글 수정 실패 ...");
			resp.sendRedirect("/LeeS/QNA?page=1");
		}
		
	}			

}//class		