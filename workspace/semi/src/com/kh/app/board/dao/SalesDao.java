package com.kh.app.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kh.app.util.JDBCTemplate;

public class SalesDao {


	//영화매출
		public int selectMovieSales(Connection conn) throws Exception {
			
			//SQL (close)
			String sql = "SELECT SUM(PRICE_MV) AS SUM FROM MOVIE_PM";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			int sum = 0;
			if( rs.next() ) {
				sum = rs.getInt("SUM");
			}
			
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return sum;
		}
		
        public int selectStoreSales(Connection conn) throws Exception {
			
			//SQL (close)
			String sql = "SELECT SUM(STORE_PRICE) AS SUM FROM STORE_PAYMENT";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			int sum = 0;
			if( rs.next() ) {
				sum = rs.getInt("SUM");
			}
			
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return sum;
		}      	

}//class