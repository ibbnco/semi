package semi.myPage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.member.vo.MemberVo;
import semi.myPage.service.DibsService;
import semi.myPage.service.PaymentService;
import semi.myPage.vo.DibsVo;
import semi.myPage.vo.PaymentVo;
import semi.util.page.PageVo;

@WebServlet("/myPage/ticketing")
public class MyTicketingController extends HttpServlet{
	
	private PaymentService ps = new PaymentService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberVo loginMember =(MemberVo)req.getSession().getAttribute("loginMember");
		if (loginMember != null) {
			try {
				
				//데이터 꺼내기
				int currentPage = Integer.parseInt(req.getParameter("page"));
				int listCount = ps.ticketCount();
				int pageLimit = 5;
				int boardLimit = 20;
				
				//데이터 뭉치기
				PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
				
				//서비스 호출
				List<PaymentVo> ticketing = ps.ticketList(pageVo);
				
				//화면
				req.setAttribute("ticketing", ticketing);
				req.setAttribute("pageVo", pageVo);
				req.getRequestDispatcher("/WEB-INF/views/myPage/myTicketing.jsp").forward(req, resp);
				
			} catch (Exception e) {
				System.out.println("[ERROR] 나의 예매 내역 조회 중 예외발생");
				e.printStackTrace();
				req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
			}
			
		}
		
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
