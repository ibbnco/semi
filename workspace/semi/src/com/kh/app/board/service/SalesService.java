package com.kh.app.board.service;

import java.sql.Connection;
import com.kh.app.board.dao.SalesDao;
import com.kh.app.util.JDBCTemplate;

public class SalesService {

		
		public int selectMovieSales() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			SalesDao dao = new SalesDao();
			int result = dao.selectMovieSales(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}
		
		public int selectStoreSales() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			SalesDao dao = new SalesDao();
			int result = dao.selectStoreSales(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}


}//class