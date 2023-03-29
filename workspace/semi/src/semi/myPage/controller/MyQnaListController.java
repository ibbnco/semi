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
import semi.myPage.service.QnaService;
import semi.myPage.vo.QnaVo;
import semi.util.page.PageVo;

@WebServlet("/myPage/qnaList")
public class MyQnaListController extends HttpServlet{
	
	private QnaService qs = new QnaService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberVo loginMember =(MemberVo)req.getSession().getAttribute("loginMember");
		if (loginMember != null) {
			try {
				
				//데이터 꺼내기
				int currentPage = Integer.parseInt(req.getParameter("page"));
				int listCount = qs.qnaCount();
				int pageLimit = 5;
				int boardLimit = 10;
				
				//데이터 뭉치기
				PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
				
				//서비스 호출
				List<QnaVo> qnaList = qs.qnaList(pageVo);
				
				//화면
				req.setAttribute("qnaList", qnaList);
				req.setAttribute("pageVo", pageVo);
				req.getRequestDispatcher("/WEB-INF/views/myPage/myQnaList.jsp").forward(req, resp);
				
			} catch (Exception e) {
				System.out.println("[ERROR] 1:1 문의 조회 중 예외발생");
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
