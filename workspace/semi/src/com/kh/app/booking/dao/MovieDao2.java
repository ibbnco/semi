package src.com.kh.app.booking.dao;

public class MovieDao2 {

	//게시글 조회
		public List<BoardVo> selectList(Connection conn) throws Exception {
			//sql
			String sql = "SELECT PRODUCT_NO, PRODUCT_NAME, PRODUCT_PRICE FROM PRODUCT WHERE DELETE_YN='N'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
		
			List<BoardVo> boardList = new ArrayList<BoardVo>();
			
			while (rs.next()) { 
				
				String no = rs.getString("product_no");
				String name = rs.getString("product_name");
				String price = rs.getString("product_price");
				
				BoardVo vo = new BoardVo();
				vo.setProduct_no(no);
				vo.setProduct_name(name);
				vo.setProduct_price(price);
				
				boardList.add(vo);
				
			}
			return boardList;
		}
}
