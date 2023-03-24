package com.kh.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kh.app.util.JDBCTemplate;
import com.kh.app.vo.MemberVo;

public class MemberDao {
	
	public MemberVo login(Connection conn , MemberVo vo) {
		//SQL
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVo loginMember = null;
		try {
			String sql = "SELECT ID , PWD FROM MEMBER WHERE ID = ? AND PWD = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMember_id());
			pstmt.setString(2, vo.getMember_pwd());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String dbId = rs.getString("ID");
				String dbPwd = rs.getString("PWD");
				
				loginMember = new MemberVo();
				loginMember.setMember_id(dbId);
				loginMember.setMember_pwd(dbPwd);
			}
		}catch(Exception e) {
			System.out.println("[ERROR] 로그인 중 예외 발생...");
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
		}
		return loginMember;
	}

}
