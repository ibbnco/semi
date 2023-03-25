package semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.member.service.MemberService;
import semi.member.vo.MemberVo;

@WebServlet("/member/join")
public class MemberJoinController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/join.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String memberName = req.getParameter("memberName");
		String memberId = req.getParameter("memberId");
		String memberPwd = req.getParameter("memberPwd");
		String memberNick = req.getParameter("memberNick");
		String memberEmail = req.getParameter("memberEmail");
		String memberTel = req.getParameter("memberTel");
	
		MemberVo vo = new MemberVo();
		vo.setMemberName(memberName);
		vo.setMemberId(memberId);
		vo.setMemberPwd(memberPwd);
		vo.setMemberNick(memberNick);
		vo.setMemberEmail(memberEmail);
		vo.setMemberTel(memberTel);
		
		int result= 0;
		try {
			MemberService service = new MemberService();
			result = service.join(vo);
		} catch (Exception e) {
			System.out.println("[ERROR] 회원가입 중 예외발생");
			e.printStackTrace();
		}
		
		//view화면
		if (result == 1) {
			req.getSession().setAttribute("alertMsg", "회원가입 성공");
			resp.sendRedirect("/");
			
		}else {
			req.setAttribute("errorMsg", "회원가입 실패");
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
		
	}
}
