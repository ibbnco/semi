package semi.myPage.dao;

import static semi.util.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import semi.myPage.vo.TicketVo;
import semi.myPage.vo.PaymentVo;
import semi.util.page.PageVo;

public class TicketDao {

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

	public List<TicketVo> ticketList(Connection conn, PageVo pageVo) throws Exception {
		String sql = "SELECT ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() +1;
		int endRow = startRow + pageVo.getBoardLimit() -1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj (List<BoardVo>) 
		List<TicketVo> ticketing = new ArrayList<TicketVo>();
		
		
		
		while(rs.next()) {
			String movieTitle = rs.getString("MOVIE_TITLE");
			String ticketDate = rs.getString("TICKET_DATE");
			String startTime = rs.getString("START_TIME");
			String theaterType = rs.getString("THEATER_TYPE");
			String moviePerson = rs.getString("MOVIE_PERSON");

			
			TicketVo vo = new TicketVo();
			
			
			ticketing.add(vo);
		}
		
		return ticketing;
	}

}
