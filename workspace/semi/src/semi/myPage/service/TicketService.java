package semi.myPage.service;

import java.sql.Connection;
import java.util.List;

import semi.myPage.dao.TicketDao;
import semi.myPage.vo.TicketVo;
import semi.util.JDBCTemplate;
import semi.util.page.PageVo;

public class TicketService {

	public int ticketCount() throws Exception {
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		TicketDao dao = new TicketDao();
		int result = dao.ticketCount(conn);
		
		//tx,close
		JDBCTemplate.close(conn);
		
		//return
		return result;
	}

	public List<TicketVo> ticketList(PageVo pageVo) throws Exception {
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		TicketDao dao = new TicketDao();
		List<TicketVo> ticketing =  dao.ticketList(conn ,pageVo);
		
		//tx, close
		JDBCTemplate.close(conn);
		
		
		return ticketing;
	}

}
