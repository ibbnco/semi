package src.com.kh.app.booking.service;

public class MovieService1 {
	
	// 게시글 조회
		public List<BoardVo> selectList() throws Exception {

			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//sql(dao)
			BoardDao dao = new BoardDao();
			List<BoardVo> boardList = dao.selectList(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return boardList;
			
		}
}
