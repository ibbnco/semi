package com.kh.app.member;

import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.app.vo.MemberVo;

@WebFilter("/member/login")
public class MemberLoginController extends HttpServlet{

	//로그인 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/loginForm.jsp").forward(req, resp);
	}
	
	//로그인
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//데이터 꺼내기
		String member_id = req.getParameter("member_id");
		String member_pwd = req.getParameter("member_pwd");

		
		//데이터 뭉치기
		MemberVo paramVo = new MemberVo();
		paramVo.setMember_id(member_id);
		paramVo.setMember_pwd(member_pwd);
		
		//로그인 서비스 처리
		MemberService service = new MemberService();
		MemberVo loginMember = service.login(paramVo);
		
		//view
		if(loginMember != null) {
			HttpSession s = req.getSession();
			s.setAttribute("loginMember", loginMember);
			resp.sendRedirect("/01_store_main.jsp");
		}else {
			req.setAttribute("errorMsg", "로그인 실패 ...");
			req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req, resp);
		}
		
	}
}
