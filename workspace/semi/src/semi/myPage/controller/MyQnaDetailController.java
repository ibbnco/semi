package semi.myPage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.myPage.service.QnaService;
import semi.myPage.vo.QnaVo;

@WebServlet("/myPage/qnaDetail")
public class MyQnaDetailController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			//데이터 꺼내기
			String qnaNo = req.getParameter("qnaNo");
			
			//데이터 뭉치기
			
			//서비스 호출
			QnaService qs = new QnaService();
			QnaVo vo = qs.qnaDetail(vo);
			
			//test
			System.out.println(vo);
			//화면
			req.setAttribute("QnaVo", vo);
			req.getRequestDispatcher("/WEB-INF/views/myPage/myQnaDetail.jsp").forward(req, resp);
		
			
		} catch (Exception e) {
			System.out.println("[ERROR] 1:1 문의 상세조회중 예외발생");
			e.printStackTrace();
		}
	}
}
