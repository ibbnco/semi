package semi.myPage.service;

import java.sql.Connection;
import java.util.List;

import semi.myPage.vo.DibsVo;
import semi.myPage.dao.DibsDao;
import semi.util.JDBCTemplate;
import semi.util.page.PageVo;

public class DibsService {

	//게시글 조회
	public List<DibsVo> selectList(PageVo pageVo) throws Exception {
		
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		DibsDao dao = new DibsDao();
		List<DibsVo>  dibsMovie =  dao.selectList(conn ,pageVo);
		
		//tx, close
		JDBCTemplate.close(conn);
		
		
		return dibsMovie;
	}

	//게시글 전체 갯수 조회 (삭제되지 않은)
	public int selectCount() throws Exception {
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(dao)
		DibsDao dao = new DibsDao();
		int result = dao.selectCount(conn);
		
		//tx,close
		JDBCTemplate.close(conn);
		
		//return
		return result;
	}


}
