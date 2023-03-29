package semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.member.service.MemberService;
import semi.member.vo.MemberVo;

@WebServlet("/member/info")
public class MemberCheckController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String no = req.getParameter("memberNo");
			
			MemberService service = new MemberService();
			MemberVo vo = service.check(no);
			
			req.setAttribute("MemberVo", vo);
			req.getRequestDispatcher("/WEB-INF/views/member/info.jsp").forward(req, resp);
			
		} catch (Exception e) {
			System.out.println("[ERROR] 회원정보 조회 중 예외발생");
			e.printStackTrace();
		}
	
	}
	
}
