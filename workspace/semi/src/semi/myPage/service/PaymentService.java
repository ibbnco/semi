package semi.myPage.service;

import java.sql.Connection;
import java.util.List;

import semi.myPage.dao.PaymentDao;
import semi.myPage.vo.PaymentVo;
import semi.util.JDBCTemplate;
import semi.util.page.PageVo;

public class PaymentService {

	public List<PaymentVo> ticketList(PageVo pageVo) throws Exception {
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		PaymentDao dao = new PaymentDao();
		List<PaymentVo> ticketing =  dao.ticketList(conn ,pageVo);
		
		//tx, close
		JDBCTemplate.close(conn);
		
		
		return ticketing;
	}

	public int ticketCount() throws Exception {

		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		PaymentDao dao = new PaymentDao();
		int result = dao.ticketCount(conn);
		
		//tx,close
		JDBCTemplate.close(conn);
		
		//return
		return result;
	}


}
