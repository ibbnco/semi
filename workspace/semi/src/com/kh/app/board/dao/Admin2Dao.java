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

public class Admin2Dao {

	//게시글 조회
	public List<AdminVo> selectList(Connection conn , PageVo pageVo) throws Exception {

		//SQL (close)
		//String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT N.FAQ_NO , N.FAQ_TITLE , N.FAQ_CONTENT , N.FAQ_DATE FROM FAQ N JOIN ADMIN A ON N.WRITER = A.ADMIN_NO WHERE N.IS_DELETED = 'N' ORDER BY FAQ_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		String sql ="SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT QNA_NO , QNA_TITLE , QNA_CONTENT , QNA_DATE FROM QNA WHERE QNA_DEL_STATUS = 'N' ORDER BY QNA_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
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
			vo.setNo(rs.getString("QNA_NO"));
			vo.setTitle(rs.getString("QNA_TITLE"));
			vo.setContent(rs.getString("QNA_CONTENT"));
			vo.setDate(rs.getString("QNA_DATE"));
			boardList.add(vo);
		}
		return boardList;
	}

	//게시글 작성
	public int write(Connection conn, AdminVo vo) throws Exception {
		
		//SQL (close)
		String sql = "INSERT INTO QNA(QNA_NO , QNA_ANSWER , MEMBER_NO, ADMIN_NO) VALUES (1 , ? , 1 , 5)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getContent());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}	
		
    
	//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount(Connection conn) throws Exception {
			
			//SQL (close)
			String sql = "SELECT COUNT(*) AS CNT FROM QNA WHERE QNA_DEL_STATUS = 'N' AND QNA_ANSWER = 'NULL'";
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
			String sql = "SELECT * FROM QNA WHERE QNA_NO = ? AND QNA_DEL_STATUS = 'N'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			AdminVo vo = null;
			if( rs.next() ) {			
				vo = new AdminVo();
				vo.setNo(rs.getString("QNA_NO"));
				vo.setTitle(rs.getString("QNA_TITLE"));
				vo.setContent(rs.getString("QNA_CONTENT"));
				vo.setDate(rs.getString("QNA_DATE"));
			}
			
			//close 
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return vo;
		}
		
		


}//class