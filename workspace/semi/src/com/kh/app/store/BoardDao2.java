package com.kh.app.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDao2 {
	
	//게시글 조회
	public List<BoardVo> selectList(Connection conn) throws Exception {
		//sql
		String sql = "SELECT PRODUCT_NO, PRODUCT_NAME, PRODUCT_PRICE FROM COKE WHERE DELETE_YN='N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
	
		List<BoardVo> boardList = new ArrayList<BoardVo>();
		
		while (rs.next()) { 
			
			String no = rs.getString("PRODUCT_NO");
			String name = rs.getString("PRODUCT_NAME");
			String price = rs.getString("PRODUCT_PRICE");
			
			BoardVo vo = new BoardVo();
			vo.setProductNo(no);
			vo.setProductName(name);
			vo.setProductPrice(price);
			
			boardList.add(vo);
			
		}
		return boardList;
	}
	
}
