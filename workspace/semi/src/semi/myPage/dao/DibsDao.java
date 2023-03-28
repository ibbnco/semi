package semi.myPage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import semi.myPage.vo.DibsVo;
import semi.util.page.PageVo;
import static semi.util.JDBCTemplate.*;

public class DibsDao {
	
	//페이징 처리가 된 게시글 조회
	public List<DibsVo> selectList(Connection conn, PageVo pageVo) throws Exception {
		
		String sql = "";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() +1;
		int endRow = startRow + pageVo.getBoardLimit() -1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj  
		List<DibsVo> dibsMovie = new ArrayList<DibsVo>();
		
		
		
		while(rs.next()) {
			String memberNo = rs.getString("MEMBER_NO");
			String movieNo = rs.getString("MOVIE_NO");
			String movieTitle = rs.getString("MOVIE_TITLE");
			String openningDate = rs.getString("OPENNING_DATE");
			String movieImgNo= rs.getString("MOVIE_IMG_NO");
			String movieImg = rs.getString("MOVIE_IMG");
			
			DibsVo vo = new DibsVo();
			vo.setMemberNo(memberNo);
			vo.setMovieNo(movieNo);
			vo.setMovieTitle(movieTitle);
			vo.setOpenningDate(openningDate);
			vo.setMovieImgNo(movieImgNo);
			vo.setMovieImg(movieImg);
			
			dibsMovie.add(vo);
		}
		
		return dibsMovie;
	}

	//게시글 전체 갯수 조회(삭제되지 않은)
	public int selectCount(Connection conn) throws Exception {
		//sql
		String sql = "SELECT COUNT (*) AS CNT FROM DIBS_MOVIE";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj
		int cnt = 0;
		if (rs.next()) {
			cnt = rs.getInt("CNT");
		}
		
		close(rs);
		close(pstmt);
		
		return cnt;
	}

}
