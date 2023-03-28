package semi.myPage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.myPage.service.QnaService;
import semi.myPage.vo.QnaVo;

@WebServlet("/myPage/qnaWrite")
public class MyQnaWriteController extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/myPage/myQnaWrite.jsp").forward(req, resp);
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String memberNo = req.getParameter("memberNo");
		String qnaTitle = req.getParameter("qnaTitle");
		String qnaContent = req.getParameter("qnaContent");
		
		//데이터 뭉치기
		QnaVo vo = new QnaVo();
		vo.setMemberNo(memberNo);
		vo.setQnaTitle(qnaTitle);
		vo.setQnaContent(qnaContent);
		
		//서비스 로직
		int result = 0;
		try {
			QnaService qs = new QnaService();
			result = qs.write(vo);
			
		} catch (Exception e) {
			System.out.println("[ERROR] 1:1 문의 작성 중 예외 발생");
			e.printStackTrace();
		
		}
		
		//화면
		if (result == 1) {
			req.getSession().setAttribute("alertMsg", "게시글 작성 성공");
			resp.sendRedirect("/WEB-INF/views/myPage/myQna.jsp");
		}else {
			req.getSession().setAttribute("alertMsg", "게시글 작성 실패");
			resp.sendRedirect("/WEB-INF/views/myPage/myQna.jsp");
		}
		
	
	}
}
