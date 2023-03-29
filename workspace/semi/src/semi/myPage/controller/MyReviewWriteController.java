package semi.myPage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.myPage.service.ReviewService;
import semi.myPage.vo.ReviewVo;

@WebServlet("/myPage/reviewWrite")
public class MyReviewWriteController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/myPage/myReviewWrite.jsp").forward(req, resp);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String content = req.getParameter("content");
		
		ReviewVo vo = new ReviewVo();
		vo.setContent(content);
		
		int result = 0;
		try {
			ReviewService rvs = new ReviewService();
			result = rvs.reviewWrite(vo);
			
		} catch (Exception e) {
			System.out.println("[ERROR] 리뷰 작성 중 오류 발생");
			e.printStackTrace();
		}
		
		if (result == 1 ) {
			req.getSession().setAttribute(content, vo);
			resp.sendRedirect("/WEB-INF/views/myPage/myReviewList.jsp");
		}else {
			req.getSession().setAttribute("alterMsg", "리뷰작성 실패");
			resp.sendRedirect("/WEB-INF/views/myPage/myTicketing.jsp");
		}
	}
}
