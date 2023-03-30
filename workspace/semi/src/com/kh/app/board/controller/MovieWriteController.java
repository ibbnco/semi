package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.MovieService;
import com.kh.app.board.vo.AdminVo;

@MultipartConfig(
		maxFileSize = 1024 * 1024 * 50 ,		//파일 하나당 크기
		maxRequestSize = 1024 * 1024 * 50 * 10	//리퀘스트 총 크기
	)
@WebServlet("/LeeS/movieWrite")
public class MovieWriteController extends HttpServlet {

	//게시글 작성 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/LeeS/movie.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
		String title = req.getParameter("title");
		String open = req.getParameter("open");
		String actor = req.getParameter("actor");
		String summary = req.getParameter("summary");
		String genre = req.getParameter("genre");
		String rate = req.getParameter("rate");
		String pr = req.getParameter("pr");
		String run = req.getParameter("run");
				
		AdminVo vo = new AdminVo();
		vo.setTitle(title);
		vo.setOpen(open);
		vo.setActor(actor);
		vo.setSummary(summary);
		vo.setGenre(genre);
		vo.setRate(rate);
		vo.setPr(pr);
		vo.setRun(run);
		
		int result = 0;
		try {
			MovieService as = new MovieService();
			result = as.write(vo);
			
			
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 작성 중 에러");
			e.printStackTrace();
		}
		
		//화면
		if(result == 1) {
			req.getSession().setAttribute("alertMsg", "게시글 작성 성공!");
			resp.sendRedirect("/LeeS/movie?page=1");
		}else {
			req.getSession().setAttribute("alertMsg", "게시글 작성 실패 ...");
			resp.sendRedirect("/LeeS/movie?page=1");
		}
		
	}			

}//class		