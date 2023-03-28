package semi.myPage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import semi.myPage.vo.PaymentVo;
import semi.util.page.PageVo;
import static semi.util.JDBCTemplate.*;

public class PaymentDao {

	public List<PaymentVo> ticketList(Connection conn, PageVo pageVo) throws Exception {
		String sql = "";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() +1;
		int endRow = startRow + pageVo.getBoardLimit() -1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj (List<BoardVo>) 
		List<PaymentVo> ticketing = new ArrayList<PaymentVo>();
		
		
		
		while(rs.next()) {
			String ticketNo = rs.getString("TICKET");
			String movieTitle = rs.getString("MOVIE_TITLE");
			String memberNo = rs.getString("MEMBER_NO");
//			String writer = rs.getString("NICK");
//			String enrollDate = rs.getString("ENROLL_DATE");
//			String hit = rs.getString("HIT");
			
			PaymentVo vo = new PaymentVo();
			
			
			ticketing.add(vo);
		}
		
		return ticketing;
	
	}

	public int ticketCount(Connection conn) throws Exception {
		//sql
		String sql = "SELECT COUNT (*) AS T_CNT FROM MOVIE_PM ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj
		int tCnt = 0;
		if (rs.next()) {
			tCnt = rs.getInt("T_CNT");
		}
		
		close(rs);
		close(pstmt);
		
		return tCnt;
	}
	
	

}
