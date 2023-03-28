package semi.member.service;

import java.sql.Connection;
import java.sql.PreparedStatement;

import semi.member.dao.MemberDao;
import semi.member.vo.MemberVo;
import semi.util.JDBCTemplate;


public class MemberService {

	//회원가입
	public int join(MemberVo vo) throws Exception {
		
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL(DAO)
		MemberDao dao = new MemberDao();
		int result = dao.join(conn,vo);
		
		//tx,close
		if (result ==1 ) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}
	
	public MemberVo login(MemberVo vo) throws Exception {
		
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql
		MemberDao dao = new MemberDao();
		MemberVo loginMember = dao.login(conn,vo);
		
		//close
		JDBCTemplate.close(conn);
		
		return loginMember;
	}

	public MemberVo findId(MemberVo vo) throws Exception {
		
		Connection conn = JDBCTemplate.getConnection();
		
		MemberDao dao = new MemberDao();
		MemberVo findId = dao.findId(conn, vo);
		
		JDBCTemplate.close(conn);
		
		return findId;
	
	}

	public MemberVo findPwd(MemberVo vo) throws Exception {
		Connection conn = JDBCTemplate.getConnection();
		
		MemberDao dao = new MemberDao();
		MemberVo findPwd = dao.findPwd(conn, vo);
		
		JDBCTemplate.close(conn);
		
		return findPwd;
	}

	public int quit(MemberVo vo) throws Exception {
		Connection conn = JDBCTemplate.getConnection();
		
		MemberDao dao = new MemberDao();
		int result = dao.quit(conn,vo);
		
		JDBCTemplate.close(conn);
		
		return result;
	}

}

