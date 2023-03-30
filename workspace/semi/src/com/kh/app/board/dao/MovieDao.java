package com.kh.app.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.board.vo.AdminVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class MovieDao {

	//게시글 조회
	public List<AdminVo> selectList(Connection conn , PageVo pageVo) throws Exception {

		//SQL (close)
		//String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT N.EVENT_NO , N.EVENT_TITLE , N.EVENT_CONTENT , N.EVENT_DATE FROM EVENT N JOIN ADMIN A ON N.WRITER = A.ADMIN_NO WHERE N.IS_DELETED = 'N' ORDER BY EVENT_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		String sql ="SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT MOVIE_NO , MOVIE_TITLE , OPENNING_DATE , MOVIE_ACTOR , SUMMARY , MOVIE_GENRE , MOVIE_PR , MOVIE_RUNNING , RATE_FIFTEEN FROM SCREEN_MOVIE WHERE IS_DELETED = 'N' ORDER BY MOVIE_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
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
			vo.setNo(rs.getString("MOVIE_NO"));
			vo.setTitle(rs.getString("MOVIE_TITLE"));
			vo.setOpen(rs.getString("OPENNING_DATE"));
			vo.setActor(rs.getString("MOVIE_ACTOR"));
			vo.setSummary(rs.getString("SUMMARY"));
			vo.setGenre(rs.getString("MOVIE_GENRE"));
			vo.setPr(rs.getString("MOVIE_PR"));
			vo.setRun(rs.getString("MOVIE_RUNNING"));
			vo.setRate(rs.getString("RATE_FIFTEEN"));
			boardList.add(vo);
		}
		return boardList;
	}

	//게시글 작성
	public int write(Connection conn, AdminVo vo) throws Exception {
		
		//SQL (close)
		String sql = "INSERT INTO SCREEN_MOVIE(MOVIE_NO , MOVIE_TITLE , OPENNING_DATE , MOVIE_ACTOR , SUMMARY , MOVIE_GENRE , MOVIE_PR , MOVIE_RUNNING , RATE_FIFTEEN) VALUES (SCM_SEQ.NEXTVAL , ? , ? , ? , ? , ? , ? , ? , ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getOpen());
		pstmt.setString(3, vo.getActor());
		pstmt.setString(4, vo.getSummary());
		pstmt.setString(5, vo.getGenre());
		pstmt.setString(6, vo.getPr());
		pstmt.setString(7, vo.getRun());
		pstmt.setString(8, vo.getRate());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}	
	
	// 게시글 수정 어케하냐
    public int update(Connection conn, AdminVo vo, String no) throws Exception {
		
		//SQL (close)
		String sql = "UPDATE SCREEN_MOVIE SET MOVIE_TITLE = ? , OPENNING_DATE = ? , MOVIE_ACTOR = ? , SUMMARY = ? , MOVIE_GENRE = ? , MOVIE_PR = ? , MOVIE_RUNNING = ? , RATE_FIFTEEN = ? WHERE MOVIE_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getOpen());
		pstmt.setString(3, vo.getActor());
		pstmt.setString(4, vo.getSummary());
		pstmt.setString(5, vo.getGenre());
		pstmt.setString(6, vo.getPr());
		pstmt.setString(7, vo.getRun());
		pstmt.setString(8, vo.getRate());
		pstmt.setString(9, no);
        int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}
    
    // 게시글 삭제 해봐어디
    public int delete(Connection conn, String no) throws Exception {
		
		//SQL (close)
    	String sql = "UPDATE SCREEN_MOVIE SET IS_DELETED = 'Y' WHERE MOVIE_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, no);
        int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}
	//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount(Connection conn) throws Exception {
			
			//SQL (close)
			String sql = "SELECT COUNT(*) AS CNT FROM SCREEN_MOVIE WHERE IS_DELETED = 'N'";
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
			String sql = "SELECT * FROM SCREEN_MOVIE WHERE MOVIE_NO = ? AND IS_DELETED = 'N'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			AdminVo vo = null;
			if( rs.next() ) {			
				vo = new AdminVo();
				vo.setNo(rs.getString("MOVIE_NO"));
				vo.setTitle(rs.getString("MOVIE_TITLE"));
				vo.setOpen(rs.getString("OPENNING_DATE"));
				vo.setActor(rs.getString("MOVIE_ACTOR"));
				vo.setSummary(rs.getString("SUMMARY"));
				vo.setGenre(rs.getString("MOVIE_GENRE"));
				vo.setPr(rs.getString("MOVIE_PR"));
				vo.setRun(rs.getString("MOVIE_RUNNING"));
				vo.setRate(rs.getString("RATE_FIFTEEN"));
			}
			
			//close 
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return vo;
		}

}//class