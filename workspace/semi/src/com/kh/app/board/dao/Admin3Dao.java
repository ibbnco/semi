package com.kh.app.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.board.vo.AdminVo;
import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class Admin3Dao {

	//게시글 조회
	public List<AdminVo> selectList(Connection conn , PageVo pageVo) throws Exception {

		//SQL (close)
		//String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT N.NOTICE_NO , N.NOTICE_TITLE , N.NOTICE_CONTENT , N.NOTICE_DATE FROM NOTICE N JOIN ADMIN A ON N.WRITER = A.ADMIN_NO WHERE N.IS_DELETED = 'N' ORDER BY NOTICE_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		String sql ="SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT NOTICE_NO , NOTICE_TITLE , NOTICE_CONTENT , NOTICE_DATE FROM NOTICE WHERE IS_DELETED = 'N' ORDER BY NOTICE_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
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
			vo.setNo(rs.getString("NOTICE_NO"));
			vo.setTitle(rs.getString("NOTICE_TITLE"));
			vo.setContent(rs.getString("NOTICE_CONTENT"));
			vo.setDate(rs.getString("NOTICE_DATE"));
			boardList.add(vo);
		}
		return boardList;
	}

	//게시글 작성
	public int write(Connection conn, AdminVo vo) throws Exception {
		
		//SQL (close)
		String sql = "INSERT INTO NOTICE(NOTICE_NO , NOTICE_TITLE , NOTICE_CONTENT, ADMIN_NO) VALUES (NTC_SEQ.NEXTVAL , ? , ? , 5)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}	
	
	// 게시글 수정 어케하냐
    public int update(Connection conn, AdminVo vo, String no) throws Exception {
		
		//SQL (close)
		String sql = "UPDATE NOTICE SET NOTICE_TITLE = ?, NOTICE_CONTENT = ? WHERE NOTICE_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		pstmt.setString(3, no);
        int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}
    
    // 게시글 삭제 해봐어디
    public int delete(Connection conn, String no) throws Exception {
		
		//SQL (close)
    	String sql = "UPDATE NOTICE SET IS_DELETED = 'Y' WHERE NOTICE_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, no);
        int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}
	//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount(Connection conn) throws Exception {
			
			//SQL (close)
			String sql = "SELECT COUNT(*) AS CNT FROM NOTICE WHERE IS_DELETED = 'N'";
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
			String sql = "SELECT * FROM NOTICE WHERE NOTICE_NO = ? AND IS_DELETED = 'N'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			AdminVo vo = null;
			if( rs.next() ) {			
				vo = new AdminVo();
				vo.setNo(rs.getString("NOTICE_NO"));
				vo.setTitle(rs.getString("NOTICE_TITLE"));
				vo.setContent(rs.getString("NOTICE_CONTENT"));
				vo.setDate(rs.getString("NOTICE_DATE"));
			}
			
			//close 
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return vo;
		}
		
		public int insertAttachment(Connection conn, AttachmentVo atVo) throws Exception {
			
			//SQL
			String sql = "INSERT INTO ATTACHMENT (NO, ORIGIN_NAME, CHANGE_NAME, REF_BOARD_NO) VALUES(SEQ_ATTACHMENT_NO.NEXTVAL , ? , ? , SEQ_BOARD_NO.CURRVAL)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, atVo.getOriginName());
			pstmt.setString(2, atVo.getChangeName());
			int result = pstmt.executeUpdate();
			
			//close
			JDBCTemplate.close(pstmt);
			
			return result;
		}


}//class