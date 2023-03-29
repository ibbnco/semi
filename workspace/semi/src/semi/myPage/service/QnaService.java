package semi.myPage.service;

import java.sql.Connection;
import java.util.List;

import semi.myPage.dao.QnaDao;
import semi.myPage.vo.QnaVo;
import semi.util.JDBCTemplate;
import semi.util.page.PageVo;

public class QnaService {

	//1:1문의 조회
	public List<QnaVo> qnaList(PageVo pageVo) throws Exception {
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		QnaDao dao = new QnaDao();
		List<QnaVo> qnaList =  dao.qnaList(conn ,pageVo);
		
		//tx, close
		JDBCTemplate.close(conn);
		
		
		return qnaList;
	}

	//삭제되지 않은 1:1 문의 전체보기
	public int qnaCount() throws Exception {
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		QnaDao dao = new QnaDao();
		int result = dao.QnaCount(conn);
		
		//tx,close
		JDBCTemplate.close(conn);
		
		//return
		return result;
	}

	public int write(QnaVo vo) throws Exception {
		
		//비지니스 로직

		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		QnaDao dao = new QnaDao();
		int result = dao.write(conn,vo);
		
		//tx,close
		if (result == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	public QnaVo qnaDetail(String no) throws Exception {
	//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql dao(조회쿼리)
		QnaDao dao = new QnaDao();
		QnaVo qnaVo = dao.qnaDetail(conn,no);
		
		
		//tx,close
		JDBCTemplate.commit(conn);
		JDBCTemplate.close(conn);
		
		//return
		return qnaVo;
	}

	

}
