package com.kh.app.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.board.vo.AdminVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class MemberInfoDao {

	//게시글 조회
	public List<AdminVo> selectList(Connection conn , PageVo pageVo) throws Exception {

		//SQL (close)
		//String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT N.EVENT_NO , N.EVENT_TITLE , N.EVENT_CONTENT , N.EVENT_DATE FROM EVENT N JOIN ADMIN A ON N.WRITER = A.ADMIN_NO WHERE N.IS_DELETED = 'N' ORDER BY EVENT_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		String sql ="SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT MEMBER_NO , MEMBER_ID , MEMBER_STATUS , MEMBER_GRADE , ENROLL_DATE , MEMBER_NAME , MEMBER_NICK , MEMBER_TEL , MEMBER_EMAIL , MEMBER_POINT FROM MEMBER ORDER BY MEMBER_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() + 1;
		int endRow = startRow + pageVo.getBoardLimit() - 1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj 
		List<AdminVo> boardList = new ArrayList<AdminVo>();
		
		while(rs.next()) { 			
			AdminVo vo = new AdminVo();
			vo.setNo(rs.getString("MEMBER_NO"));
			vo.setId(rs.getString("MEMBER_ID"));
			vo.setStatus(rs.getString("MEMBER_STATUS"));
			vo.setGrade(rs.getString("MEMBER_GRADE"));
			vo.setDate(rs.getString("ENROLL_DATE"));
			vo.setName(rs.getString("MEMBER_NAME"));
			vo.setNick(rs.getString("MEMBER_NICK"));
			vo.setTel(rs.getString("MEMBER_TEL"));
			vo.setEmail(rs.getString("MEMBER_EMAIL"));
			vo.setPoint(rs.getString("MEMBER_POINT"));			
			boardList.add(vo);
		}
		return boardList;
	}

	//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount(Connection conn) throws Exception {
			
			//SQL (close)
			String sql = "SELECT COUNT(*) AS CNT FROM MEMBER";
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
        public int selectWhite(Connection conn) throws Exception {
			
			//SQL (close)
			String sql = "SELECT COUNT(*) AS CNT FROM MEMBER WHERE MEMBER_GRADE = 1";
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
        
        public int selectSilver(Connection conn) throws Exception {
        	
        	//SQL (close)
        	String sql = "SELECT COUNT(*) AS CNT FROM MEMBER WHERE MEMBER_GRADE = 2";
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
        
        public int selectGold(Connection conn) throws Exception {
        	
        	//SQL (close)
        	String sql = "SELECT COUNT(*) AS CNT FROM MEMBER WHERE MEMBER_GRADE = 3";
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
        
        public int selectLive(Connection conn) throws Exception {
        	
        	//SQL (close)
        	String sql = "SELECT COUNT(*) AS CNT FROM MEMBER WHERE MEMBER_STATUS = 'L'";
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
        
        public int selectDeath(Connection conn) throws Exception {
        	
        	//SQL (close)
        	String sql = "SELECT COUNT(*) AS CNT FROM MEMBER WHERE MEMBER_STATUS = 'D'";
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
        
        public int selectSleep(Connection conn) throws Exception {
        	
        	//SQL (close)
        	String sql = "SELECT COUNT(*) AS CNT FROM MEMBER WHERE MEMBER_STATUS = 'S'";
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
		

		//게시글 상세조회
		public AdminVo selectOne(Connection conn, String no) throws Exception {
			
			//SQL
			String sql = "SELECT * FROM MEMBER WHERE MEMBER_NO = ? ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			AdminVo vo = null;
			if( rs.next() ) {			
				vo = new AdminVo();
				vo.setNo(rs.getString("MEMBER_NO"));
				vo.setId(rs.getString("MEMBER_ID"));
				vo.setStatus(rs.getString("MEMBER_STATUS"));
				vo.setGrade(rs.getString("MEMBER_GRADE"));
				vo.setDate(rs.getString("ENROLL_DATE"));
				vo.setName(rs.getString("MEMBER_NAME"));
				vo.setNick(rs.getString("MEMBER_NICK"));
				vo.setTel(rs.getString("MEMBER_TEL"));
				vo.setEmail(rs.getString("MEMBER_EMAIL"));
				vo.setPoint(rs.getString("MEMBER_POINT"));
			}
			
			//close 
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return vo;
		}	

}//class