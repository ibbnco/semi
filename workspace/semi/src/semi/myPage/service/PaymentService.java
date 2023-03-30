package semi.myPage.service;

import java.sql.Connection;
import java.util.List;

import semi.myPage.dao.PaymentDao;
import semi.myPage.dao.QnaDao;
import semi.myPage.vo.PaymentVo;
import semi.myPage.vo.QnaVo;
import semi.util.JDBCTemplate;
import semi.util.page.PageVo;

public class PaymentService {

	public List<PaymentVo> payList(PageVo pageVo) throws Exception {
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		PaymentDao dao = new PaymentDao();
		List<PaymentVo> payList =  dao.payList(conn ,pageVo);
		
		//tx, close
		JDBCTemplate.close(conn);
		
		
		return payList;
	}
	
	public int payCount() throws Exception {
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		PaymentDao dao = new PaymentDao();
		int result = dao.payCount(conn);
		
		//tx,close
		JDBCTemplate.close(conn);
		
		//return
		return result;
	}

	public List<PaymentVo> pointList(PageVo pageVo) throws Exception {
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		PaymentDao dao = new PaymentDao();
		List<PaymentVo> pointList =  dao.pointList(conn ,pageVo);
		
		//tx, close
		JDBCTemplate.close(conn);
		
		
		return pointList;
	}

	public int pointCount() throws Exception {
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		PaymentDao dao = new PaymentDao();
		int result = dao.pointCount(conn);
		
		//tx,close
		JDBCTemplate.close(conn);
		
		//return
		return result;
	}



	
	
	


}
