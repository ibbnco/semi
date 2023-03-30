package semi.myPage.dao;

import static semi.util.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import semi.myPage.vo.QnaVo;
import semi.myPage.vo.ReviewVo;
import semi.util.JDBCTemplate;
import semi.util.page.PageVo;

public class ReviewDao {

	public int reviewWrite(Connection conn, ReviewVo vo) throws SQLException {

		String sql = "INSERT INTO REVIEW(REVIEW_NO,CONTENT,MOVIE_NO) VALUES (SEQ_REVIEW_NO.NEXTVAL, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getContent());
		pstmt.setString(2, vo.getMovieNo());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}

	public int ReviewCount(Connection conn) throws Exception {
		//sql
				String sql = "SELECT COUNT (*) AS R_CNT FROM REVIEW WHERE REVIEW_STATUS = 'N'";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
				//rs -> obj
				int rCnt = 0;
				if (rs.next()) {
					rCnt = rs.getInt("R_CNT");
				}
				
				close(rs);
				close(pstmt);
				
				return rCnt;

	}

	public List<ReviewVo> ReviewList(Connection conn, PageVo pageVo) throws Exception {
		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT Q.QNA_NO , Q.QNA_TITLE,Q.QNA_DATE , Q.QNA_DEL_STATUS , Q.QNA_ANSWER ,M.MEMBER_NO FROM QNA Q INNER JOIN MEMBER M ON Q.MEMBER_NO = M.MEMBER_NO WHERE Q.QNA_DEL_STATUS = 'N' ORDER BY QNA_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() +1;
		int endRow = startRow + pageVo.getBoardLimit() -1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj (List<BoardVo>) 
		List<ReviewVo> reviewList = new ArrayList<ReviewVo>();
		
		
		
		while(rs.next()) {
			String reviewNo = rs.getString("REVIEW_NO");
			String content = rs.getString("CONTENT");
			String reviewDate = rs.getString("REVIEW_DATE");
			String reviewStatus = rs.getString("REVIEW_STATUS");
			String star = rs.getString("STAR");
			String movieNo = rs.getString("MOVIE_NO");
			String movieTitle = rs.getString("MOVIE_TITLE");
			
			
			ReviewVo vo = new ReviewVo();
			vo.setReviewNo(reviewNo);
			vo.setContent(content);
			vo.setReviewDate(reviewDate);
			vo.setReviewStatus(reviewStatus);
			vo.setStar(star);
			vo.setMovieNo(movieNo);
			vo.setMovieTitle(movieTitle);
			
			reviewList.add(vo);
		}
		
		return reviewList;
	}

}
