package semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.member.service.MemberService;
import semi.member.vo.MemberVo;

@WebServlet("/member/edit")
public class MemberEditController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/edit.jsp").forward(req, resp);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String memberName = req.getParameter("memberName");
		String memberId = req.getParameter("memberId");
		String memberPwd = req.getParameter("memberPwd");
		String memberNick = req.getParameter("memberNick");
		String memberEmail = req.getParameter("memberEmail");
		String memberTel = req.getParameter("memberTel");
		
		//데이터 뭉치기
		MemberVo vo = new MemberVo();
		vo.setMemberName(memberName);
		vo.setMemberId(memberId);
		vo.setMemberPwd(memberPwd);
		vo.setMemberNick(memberNick);
		vo.setMemberEmail(memberEmail);
		vo.setMemberTel(memberTel);
		
		//서비스 로직
		int result = 0;
		try {
			MemberService service = new MemberService();
			result = service.edit(vo);
			
			
		} catch (Exception e) {
			System.out.println("[ERROR] 회원정보 수정 중 예외 발생");
			e.printStackTrace();
		
		}
		//화면
		if (result == 1 ) {
			req.getSession().setAttribute("alertMsg", "고객님의 정보가 수정되었습니다.");
			resp.sendRedirect("/member/info");
		}
	
	}
	
}
