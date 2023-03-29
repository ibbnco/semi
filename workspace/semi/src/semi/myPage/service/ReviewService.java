package semi.myPage.service;

import java.sql.Connection;
import java.sql.SQLException;

import semi.myPage.dao.ReviewDao;
import semi.myPage.vo.ReviewVo;
import semi.util.JDBCTemplate;

public class ReviewService {

	public int reviewWrite(ReviewVo vo) throws Exception {

		Connection conn = JDBCTemplate.getConnection();
		
		ReviewDao dao = new ReviewDao();
		int result = dao.reviewWrite(conn,vo);
		
		if (result == 1 ) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return 0;
	}

}
