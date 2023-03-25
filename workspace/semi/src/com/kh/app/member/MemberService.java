package com.kh.app.member;

import java.sql.Connection;

import com.kh.app.dao.MemberDao;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.vo.MemberVo;

public class MemberService {
	
	public MemberVo login(MemberVo vo) {
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL
		MemberDao dao = new MemberDao();
		MemberVo loginMember = dao.login(conn, vo);
		
		//tx , close
		JDBCTemplate.close(conn);
		
		return loginMember;
		
	}//method

}
