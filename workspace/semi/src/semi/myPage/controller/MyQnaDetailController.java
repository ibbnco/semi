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
			String no = req.getParameter("qnaNo");
			
			//데이터 뭉치기
			
			//서비스 호출
			QnaService qs = new QnaService();
			QnaVo qnaVo = qs.qnaDetail(no);
			
			//test
			System.out.println(qnaVo);
			//화면  
			req.setAttribute("qnaVo", qnaVo);
			req.getRequestDispatcher("/WEB-INF/views/myPage/myQnaDetail.jsp").forward(req, resp);
		
			
		} catch (Exception e) {
			System.out.println("[ERROR] 1:1 문의 상세조회중 예외발생");
			e.printStackTrace();
		}
	}
}
