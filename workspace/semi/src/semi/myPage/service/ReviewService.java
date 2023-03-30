package semi.myPage.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import semi.myPage.dao.QnaDao;
import semi.myPage.dao.ReviewDao;
import semi.myPage.vo.QnaVo;
import semi.myPage.vo.ReviewVo;
import semi.util.JDBCTemplate;
import semi.util.page.PageVo;

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

	public List<ReviewVo> reviewList(PageVo pageVo) throws Exception {
		
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		ReviewDao dao = new ReviewDao();
		List<ReviewVo> reviewList =  dao.ReviewList(conn ,pageVo);
		
		//tx, close
		JDBCTemplate.close(conn);
		
		
		return reviewList;
	}

	public int reviewCount() throws Exception {
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		ReviewDao dao = new ReviewDao();
		int result = dao.ReviewCount(conn);
		
		//tx,close
		JDBCTemplate.close(conn);
		
		//return
		return result;
	}

}
