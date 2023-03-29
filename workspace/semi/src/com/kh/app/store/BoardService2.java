package com.kh.app.store;

import java.sql.Connection;
import java.util.List;

import com.kh.app.store.JDBCTemplate;

public class BoardService2 {
	
	// 게시글 조회
	public List<BoardVo> selectList() throws Exception {

		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		BoardDao2 dao = new BoardDao2();
		List<BoardVo> boardList = dao.selectList(conn);
		
		//close
		JDBCTemplate.close(conn);
		
		return boardList;
		
	}

}