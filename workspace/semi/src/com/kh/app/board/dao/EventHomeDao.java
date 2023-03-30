package com.kh.app.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.board.vo.AdminVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class EventHomeDao {

	//게시글 조회
	public List<AdminVo> selectList(Connection conn , PageVo pageVo) throws Exception {

		//SQL (close)
		//String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT N.EVENT_NO , N.EVENT_TITLE , N.EVENT_CONTENT , N.EVENT_DATE FROM EVENT N JOIN ADMIN A ON N.WRITER = A.ADMIN_NO WHERE N.IS_DELETED = 'N' ORDER BY EVENT_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		String sql ="SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT EVENT_NO , EVENT_TITLE , EVENT_CONTENT , EVENT_PR FROM EVENT WHERE IS_DELETED = 'N' ORDER BY EVENT_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
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
			vo.setNo(rs.getString("EVENT_NO"));
			vo.setTitle(rs.getString("EVENT_TITLE"));
			vo.setContent(rs.getString("EVENT_CONTENT"));
			vo.setDate(rs.getString("EVENT_PR"));
			boardList.add(vo);
		}
		return boardList;
	}

	//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount(Connection conn) throws Exception {
			
			//SQL (close)
			String sql = "SELECT COUNT(*) AS CNT FROM EVENT WHERE IS_DELETED = 'N'";
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
			String sql = "SELECT * FROM EVENT WHERE EVENT_NO = ? AND IS_DELETED = 'N'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			AdminVo vo = null;
			if( rs.next() ) {			
				vo = new AdminVo();
				vo.setNo(rs.getString("EVENT_NO"));
				vo.setTitle(rs.getString("EVENT_TITLE"));
				vo.setContent(rs.getString("EVENT_CONTENT"));
				vo.setDate(rs.getString("EVENT_PR"));
			}
			
			//close 
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return vo;
		}
		

}//class