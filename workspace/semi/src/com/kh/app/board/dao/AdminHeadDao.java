package com.kh.app.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kh.app.util.JDBCTemplate;

public class AdminHeadDao {

 
	//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount(Connection conn) throws Exception {
			
			//SQL (close)
			String sql = "SELECT COUNT(*) AS CNT FROM QNA WHERE QNA_DEL_STATUS = 'N' AND IS_ANSWERED = 'N'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			int cnt = 0;
			if( rs.next() ) {
				cnt = rs.getInt("CNT");
			}
			
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return cnt;
		}
		
		public String id(Connection conn) throws Exception {
			
			String sql = "SELECT ADMIN_ID FROM ADMIN WHERE ADMIN_NO = 1";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			String id = null;
			if( rs.next() ) {
				id = rs.getString("id");
			}
			
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return id;
		}
		
        public int lv(Connection conn) throws Exception {
			
        	String sql = "SELECT PM_NO FROM ADMIN WHERE ADMIN_NO = 1";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			int lv = 0;
			if( rs.next() ) {
				lv = rs.getInt("lv");
			}
			
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return lv;
		}

}//class