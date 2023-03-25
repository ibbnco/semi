package semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.member.service.MemberService;
import semi.member.vo.MemberVo;

@WebServlet("/member/findPwd")
public class MemberFindPwdController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/findPwd.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String memberId = req.getParameter("memberId");
		String memberEmail = req.getParameter("memberEmail");
		
		MemberVo vo = new MemberVo();
		vo.setMemberId(memberId);
		vo.setMemberEmail(memberEmail);
		
		MemberVo findPwd = null;
		try {
			MemberService service = new MemberService();
			findPwd = service.findPwd(vo);
		} catch (Exception e) {
			System.out.println("[ERROR] 비밀번호 찾기 중 오류 발생");
			e.printStackTrace();
		}
		
		if (findPwd != null) {
			req.getSession().setAttribute("findPwd", findPwd);
			resp.sendRedirect("/member/findPwd");
		}else {
			req.getSession().setAttribute("alertMsg", "비밀번호 찾기 실패");
			resp.sendRedirect("/");
		}
		
	}
	
}
