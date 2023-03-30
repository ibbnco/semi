package com.kh.app.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.board.vo.AdminVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class EventDao {

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

	//게시글 작성
	public int write(Connection conn, AdminVo vo) throws Exception {
		
		//SQL (close)
		String sql = "INSERT INTO EVENT(EVENT_NO , EVENT_TITLE , EVENT_PR, EVENT_CONTENT) VALUES (EVT_SEQ.NEXTVAL , ? , ? , ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getDate());
		pstmt.setString(3, vo.getContent());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}	
	
	// 게시글 수정 어케하냐
    public int update(Connection conn, AdminVo vo, String no) throws Exception {
		
		//SQL (close)
		String sql = "UPDATE EVENT SET EVENT_TITLE = ? , EVENT_PR = ? , EVENT_CONTENT = ? WHERE EVENT_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getDate());
		pstmt.setString(3, vo.getContent());
		pstmt.setString(4, no);
        int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}
    
    // 게시글 삭제 해봐어디
    public int delete(Connection conn, String no) throws Exception {
		
		//SQL (close)
    	String sql = "UPDATE EVENT SET IS_DELETED = 'Y' WHERE EVENT_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, no);
        int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
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