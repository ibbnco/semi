package semi.myPage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import semi.myPage.vo.ReviewVo;
import semi.util.JDBCTemplate;

public class ReviewDao {

	public int reviewWrite(Connection conn, ReviewVo vo) throws SQLException {

		String sql = "INSERT INTO REVIEW(REVIEW_NO,CONTENT,MOVIE_NO) VALUES (SEQ_REVIEW_NO.NEXTVAL, ?, MOVIE_NO)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getContent());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}

}
