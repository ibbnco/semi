package semi.myPage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.myPage.service.PaymentService;
import semi.myPage.service.QnaService;
import semi.myPage.vo.PaymentVo;
import semi.myPage.vo.QnaVo;
import semi.util.page.PageVo;

@WebServlet("/myPage/payment")
public class MyPaymentController extends HttpServlet{
	
	private PaymentService ps = new PaymentService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			//데이터 꺼내기
			int currentPage = Integer.parseInt(req.getParameter("page"));
			int listCount = ps.payCount();
			int pageLimit = 5;
			int boardLimit = 10;
			
			//데이터 뭉치기
			PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
			
			//서비스 호출
			List<PaymentVo> payList = ps.payList(pageVo);
			
			//화면
			req.setAttribute("payList", payList);
			req.setAttribute("pageVo", pageVo);
			req.getRequestDispatcher("/WEB-INF/views/myPage/myPayment.jsp").forward(req, resp);
			
		} catch (Exception e) {
			System.out.println("[ERROR] 결제내역 조회 중 예외발생");
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
