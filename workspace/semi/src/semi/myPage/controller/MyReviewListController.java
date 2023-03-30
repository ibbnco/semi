package semi.myPage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.myPage.service.ReviewService;
import semi.myPage.vo.ReviewVo;
import semi.util.page.PageVo;

@WebServlet("/myPage/reviewList")
public class MyReviewListController extends HttpServlet{

	private ReviewService rvs = new ReviewService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
			
			//데이터 꺼내기
			int currentPage = Integer.parseInt(req.getParameter("page"));
			int listCount = rvs.reviewCount();
			int pageLimit = 5;
			int boardLimit = 10;
			
			//데이터 뭉치기
			PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
			
			//서비스 호출
			List<ReviewVo> reviewList = rvs.reviewList(pageVo);
			
			//화면
			req.setAttribute("reviewList", reviewList);
			req.setAttribute("pageVo", pageVo);
			req.getRequestDispatcher("/WEB-INF/views/myPage/myReview.jsp").forward(req, resp);
			
			
		} catch (Exception e) {
			System.out.println("[ERROR] 나의 리뷰 조회 중 예외발생");
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
