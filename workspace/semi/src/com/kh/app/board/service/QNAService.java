package com.kh.app.board.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.board.dao.QNADao;
import com.kh.app.board.vo.AdminVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class QNAService {

	//게시글 조회
	public List<AdminVo> selectList(PageVo pageVo) throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL (DAO)
		QNADao dao = new QNADao();
		List<AdminVo> boardList = dao.selectList(conn, pageVo);
		
		//close
		JDBCTemplate.close(conn);
		
		return boardList;
	}

	//게시글 작성
	public int write(AdminVo vo, String no) throws Exception {
		
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		QNADao dao = new QNADao();
		//SQL (DAO) == 게시글 인서트
		int result = dao.write(conn, vo, no);		
		
		//tx , close
		if (result == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}
	
    	 
	//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			QNADao dao = new QNADao();
			int result = dao.selectCount(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}

		//게시글 상세조회 
		public AdminVo selectOne(String no) throws Exception {
			
			//비즈니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//DAO 호출
			QNADao dao = new QNADao();
			AdminVo vo = dao.selectOne(conn , no);
			
			//tx , close
			JDBCTemplate.close(conn);
			
			return vo;
		}

}//class