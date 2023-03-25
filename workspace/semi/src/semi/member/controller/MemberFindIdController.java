package semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.member.service.MemberService;
import semi.member.vo.MemberVo;

@WebServlet("/member/findId")
public class MemberFindIdController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/findId.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String memberName = req.getParameter("memberName");
		String memberEmail = req.getParameter("memberEmail");
		
		MemberVo vo = new MemberVo();
		vo.setMemberName(memberName);
		vo.setMemberEmail(memberEmail);
		
		MemberVo findId = null;
		try {
			MemberService service = new MemberService();
			findId = service.findId(vo);
		} catch (Exception e) {
			System.out.println("[ERROR] 아이디 찾기 중 오류 발생");
			e.printStackTrace();
		}
		
		if (findId != null) {
			req.getSession().setAttribute("findId", findId);
			resp.sendRedirect("/member/findId");
		}else {
			req.getSession().setAttribute("alertMsg", "아이디 찾기 실패");
			resp.sendRedirect("/");
		}
		
		
	}
}
