package semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.member.service.MemberService;
import semi.member.vo.MemberVo;

@WebServlet("/member/quit")
public class MemberQuitController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberVo loginMember =(MemberVo)req.getSession().getAttribute("loginMember");
		if (loginMember != null) {
			req.getRequestDispatcher("/WEB-INF/views/member/quit.jsp").forward(req, resp);
		}
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String memberId = req.getParameter("memberId");
		String memberPwd = req.getParameter("memberPwd");
		
		//데이터 뭉치기
		MemberVo vo = new MemberVo();
		vo.setMemberId(memberId);
		vo.setMemberPwd(memberPwd);
		
		//
		int result = 0;
		try {
			MemberService service = new MemberService();
			result = service.quit(vo);
		} catch (Exception e) {
			System.out.println("회원탈퇴 중 예외 발생");
			e.printStackTrace();
		}
		
		//화면
		if(result ==1) {
			req.getSession().setAttribute("alertMsg", "탈퇴성공");
			resp.sendRedirect("/");
		}else {
			req.setAttribute("alertMsg", "탈퇴 실패");
			req.getRequestDispatcher("/WEB-INF/views/member/quit.jsp").forward(req, resp);
		}
	
	}
}
