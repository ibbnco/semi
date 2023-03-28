package com.kh.app.board.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.kh.app.board.service.Admin4Service;
import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.board.vo.AdminVo;

@MultipartConfig(
		maxFileSize = 1024 * 1024 * 50 ,		//파일 하나당 크기
		maxRequestSize = 1024 * 1024 * 50 * 10	//리퀘스트 총 크기
	)
@WebServlet("/LeeS/update4")
public class Admin4UpdateController extends HttpServlet {
	
	//게시글 수정 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/LeeS/admin4.jsp").forward(req, resp);
	}
	
	//게시글 수정
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        
		//데이터 꺼내기
		String title = req.getParameter("title");
		String date = req.getParameter("date");
		String content = req.getParameter("content");
		String no = req.getParameter("no");		
				
		AdminVo vo = new AdminVo();
		vo.setTitle(title);
		vo.setTitle(date);
		vo.setContent(content);
		
		int result = 0;
		try {			
			Admin4Service as = new Admin4Service();
			result = as.update(vo, no);
			
			
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 수정 중 에러");
			e.printStackTrace();
		}
		
		//화면
		if(result == 1) {
			System.out.println("성공");
			req.getSession().setAttribute("alertMsg", "게시글 수정 성공!");
			resp.sendRedirect("/LeeS/admin4.jsp");
		}else {
			req.getSession().setAttribute("alertMsg", "게시글 수정 실패 ...");
			resp.sendRedirect("/LeeS/admin4.jsp");
		}
		
	}

}//class		