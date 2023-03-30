package com.kh.app.board.service;

import java.sql.Connection;
import com.kh.app.board.dao.AdminHeadDao;
import com.kh.app.util.JDBCTemplate;

public class AdminHeadService {
		 
	//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount() throws Exception {
			
			Connection conn = JDBCTemplate.getConnection();
			
			AdminHeadDao dao = new AdminHeadDao();
			int result = dao.selectCount(conn);
			
			JDBCTemplate.close(conn);
			
			return result;
		}
		
		public String id() throws Exception {
			
			Connection conn = JDBCTemplate.getConnection();
			
			AdminHeadDao dao = new AdminHeadDao();
			String result = dao.id(conn);
			
			JDBCTemplate.close(conn);
			
			return result;
		}
		
		public int lv() throws Exception {
			
			Connection conn = JDBCTemplate.getConnection();
			
			AdminHeadDao dao = new AdminHeadDao();
			int result = dao.lv(conn);
			
			JDBCTemplate.close(conn);
			
			return result;
		}
		
}//class