package com.kh.app.store;

import java.sql.Connection;
import java.util.List;

import com.kh.app.util.JDBCTemplate;

public class BoardService5 {
	
	// 게시글 조회
	public List<BoardVo> selectList() throws Exception {

		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		BoardDao5 dao = new BoardDao5();
		List<BoardVo> boardList = dao.selectList(conn);
		
		//close
		JDBCTemplate.close(conn);
		
		return boardList;
		
	}

}
