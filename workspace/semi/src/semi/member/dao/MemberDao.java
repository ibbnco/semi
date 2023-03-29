package semi.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import semi.member.vo.MemberVo;
import semi.util.JDBCTemplate;

public class MemberDao {

	public int join(Connection conn, MemberVo vo) throws Exception {
		//SQL(DAO)
		String sql = "INSERT INTO MEMBER(MEMBER_NO,MEMBER_ID,MEMBER_PWD,MEMBER_NAME,MEMBER_NICK,MEMBER_TEL,MEMBER_EMAIL) VALUES (SEQ_MEMBER_NO.NEXTVAL,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,vo.getMemberId() );
		pstmt.setString(2,vo.getMemberPwd() );
		pstmt.setString(3,vo.getMemberName() );
		pstmt.setString(4, vo.getMemberNick());
		pstmt.setString(5, vo.getMemberTel());
		pstmt.setString(6, vo.getMemberEmail());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);

		return result;
	}

	
	public MemberVo login(Connection conn, MemberVo vo) throws Exception {
		
		String sql = "SELECT * FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_PWD = ? AND QUIT_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getMemberId());
		pstmt.setString(2, vo.getMemberPwd());
		ResultSet rs = pstmt.executeQuery();
		
		MemberVo loginMember = null;
		
		//rs->MemberVo
		if (rs.next()) {
			 String memberNo = rs.getString("MEMBER_NO");
	         String memberId = rs.getString("MEMBER_ID");
	         String memberPwd = rs.getString("MEMBER_PWD");
	         String memberName = rs.getString("MEMBER_NAME");
	         String memberNick = rs.getString("MEMBER_NICK");
	         String memberTel = rs.getString("MEMBER_TEL");
	         String memberEmail = rs.getString("MEMBER_EMAIL");
	         String quitYn = rs.getString("QUIT_YN");
	         String memberGrade = rs.getString("MEMBER_GRADE");
	         String enrollDate = rs.getString("ENROLL_DATE");
	         String memberPoint = rs.getString("MEMBER_POINT");
	         String gradeNo = rs.getString("GRADE_NO");
	         String memberImg = rs.getString("MEMBER_IMG");
	         
	         loginMember = new MemberVo();
	         loginMember.setMemberNo(memberNo);
	         loginMember.setMemberId(memberId);
	         loginMember.setMemberPwd(memberPwd);
	         loginMember.setMemberName(memberName);
	         loginMember.setMemberNick(memberNick);
	         loginMember.setMemberTel(memberTel);
	         loginMember.setMemberEmail(memberEmail);
	         loginMember.setQuitYn(quitYn);
	         loginMember.setMemberGrade(memberGrade);
	         loginMember.setEnrollDate(enrollDate);
	         loginMember.setMemberPoint(memberPoint);
	         loginMember.setGradeNo(gradeNo);
	         loginMember.setMemberImg(memberImg);
	         
		}
		JDBCTemplate.close(pstmt);
		JDBCTemplate.close(rs);
		
		return loginMember;
	}


	public MemberVo findId(Connection conn, MemberVo vo) throws Exception {
		
		String sql = "SELECT * FROM MEMBER WHERE MEMBER_NAME = ? AND MEMBER_EMAIL = ? AND QUIT_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getMemberName());
		pstmt.setString(2, vo.getMemberEmail());
		ResultSet rs = pstmt.executeQuery();
		
		MemberVo findId = null;
		
		if (rs.next()) {
			 String memberNo = rs.getString("MEMBER_NO");
	         String memberId = rs.getString("MEMBER_ID");
	         String memberPwd = rs.getString("MEMBER_PWD");
	         String memberName = rs.getString("MEMBER_NAME");
	         String memberNick = rs.getString("MEMBER_NICK");
	         String memberTel = rs.getString("MEMBER_TEL");
	         String memberEmail = rs.getString("MEMBER_EMAIL");
	         String quitYn = rs.getString("QUIT_YN");
	         String memberGrade = rs.getString("MEMBER_GRADE");
	         String enrollDate = rs.getString("ENROLL_DATE");
	         String memberPoint = rs.getString("MEMBER_POINT");
	         String gradeNo = rs.getString("GRADE_NO");
	         String memberImg = rs.getString("MEMBER_IMG");
	         
	         findId = new MemberVo();
	         findId.setMemberNo(memberNo);
	         findId.setMemberId(memberId);
	         findId.setMemberPwd(memberPwd);
	         findId.setMemberName(memberName);
	         findId.setMemberNick(memberNick);
	         findId.setMemberTel(memberTel);
	         findId.setMemberEmail(memberEmail);
	         findId.setQuitYn(quitYn);
	         findId.setMemberGrade(memberGrade);
	         findId.setEnrollDate(enrollDate);
	         findId.setMemberPoint(memberPoint);
	         findId.setGradeNo(gradeNo);
	         findId.setMemberImg(memberImg);
	         
		}
		JDBCTemplate.close(pstmt);
		JDBCTemplate.close(rs);
		
		return findId;
	}


	public MemberVo findPwd(Connection conn, MemberVo vo) throws Exception {
		String sql = "SELECT * FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_EMAIL = ? AND QUIT_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getMemberId());
		pstmt.setString(2, vo.getMemberEmail());
		ResultSet rs = pstmt.executeQuery();
		
		MemberVo findPwd = null;
		
		if (rs.next()) {
			 String memberNo = rs.getString("MEMBER_NO");
	         String memberId = rs.getString("MEMBER_ID");
	         String memberPwd = rs.getString("MEMBER_PWD");
	         String memberName = rs.getString("MEMBER_NAME");
	         String memberNick = rs.getString("MEMBER_NICK");
	         String memberTel = rs.getString("MEMBER_TEL");
	         String memberEmail = rs.getString("MEMBER_EMAIL");
	         String quitYn = rs.getString("QUIT_YN");
	         String memberGrade = rs.getString("MEMBER_GRADE");
	         String enrollDate = rs.getString("ENROLL_DATE");
	         String memberPoint = rs.getString("MEMBER_POINT");
	         String gradeNo = rs.getString("GRADE_NO");
	         String memberImg = rs.getString("MEMBER_IMG");
	         
	         findPwd = new MemberVo();
	         findPwd.setMemberNo(memberNo);
	         findPwd.setMemberId(memberId);
	         findPwd.setMemberPwd(memberPwd);
	         findPwd.setMemberName(memberName);
	         findPwd.setMemberNick(memberNick);
	         findPwd.setMemberTel(memberTel);
	         findPwd.setMemberEmail(memberEmail);
	         findPwd.setQuitYn(quitYn);
	         findPwd.setMemberGrade(memberGrade);
	         findPwd.setEnrollDate(enrollDate);
	         findPwd.setMemberPoint(memberPoint);
	         findPwd.setGradeNo(gradeNo);
	         findPwd.setMemberImg(memberImg);
	         
		}
		JDBCTemplate.close(pstmt);
		JDBCTemplate.close(rs);
		
		return findPwd;
	}


	public int quit(Connection conn, MemberVo vo) throws Exception {
		
		String sql = "DELETE FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_PWD = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getMemberId());
		pstmt.setString(2, vo.getMemberPwd());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(conn);	
		
		return result;
	}


	public int edit(Connection conn, MemberVo vo) throws Exception {

		String sql = "UPDATE Member SET MEMBER_PWD = ?, MEMBER_NICK = ?,  MEMBER_EMAIL = ?,  MEMBER_TEL = ? WHERE MEMBER_ID = ? AND MEMBER_NAME = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getMemberPwd());
		pstmt.setString(2, vo.getMemberNick());
		pstmt.setString(3, vo.getMemberEmail());
		pstmt.setString(4, vo.getMemberTel());
		pstmt.setString(5, vo.getMemberId());
		pstmt.setString(6, vo.getMemberName());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(conn);	
		
		return result;
	}


	public MemberVo check(Connection conn,  String no) throws Exception {
		
		String sql = "SELECT MEMBER_ID , MEMBER_NAME , MEMBER_NICK , MEMBER_EMAIL , MEMBER_TEL  FROM MEMBER WHERE MEMBER_NO = ? AND QUIT_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		ResultSet rs = pstmt.executeQuery();
		
		MemberVo checkVo = null;
		if (rs.next()) {
			String memberNo = rs.getString("MEMBER_NO");
	         String memberId = rs.getString("MEMBER_ID");
	         String memberPwd = rs.getString("MEMBER_PWD");
	         String memberName = rs.getString("MEMBER_NAME");
	         String memberNick = rs.getString("MEMBER_NICK");
	         String memberTel = rs.getString("MEMBER_TEL");
	         String memberEmail = rs.getString("MEMBER_EMAIL");
	         String quitYn = rs.getString("QUIT_YN");
	         String memberGrade = rs.getString("MEMBER_GRADE");
	         String enrollDate = rs.getString("ENROLL_DATE");
	         String memberPoint = rs.getString("MEMBER_POINT");
	         String gradeNo = rs.getString("GRADE_NO");
	         String memberImg = rs.getString("MEMBER_IMG");
	         
	         checkVo.setMemberNo(memberNo);
	         checkVo.setMemberNo(memberNo);
	         checkVo.setMemberId(memberId);
	         checkVo.setMemberPwd(memberPwd);
	         checkVo.setMemberName(memberName);
	         checkVo.setMemberNick(memberNick);
	         checkVo.setMemberTel(memberTel);
	         checkVo.setMemberEmail(memberEmail);
	         checkVo.setQuitYn(quitYn);
	         checkVo.setMemberGrade(memberGrade);
	         checkVo.setEnrollDate(enrollDate);
	         checkVo.setMemberPoint(memberPoint);
	         checkVo.setGradeNo(gradeNo);
	         checkVo.setMemberImg(memberImg);
		}
		
		JDBCTemplate.close(pstmt);
		JDBCTemplate.close(rs);
		
		return checkVo;
	}


}
