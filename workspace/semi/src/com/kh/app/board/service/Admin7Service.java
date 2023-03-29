package com.kh.app.board.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.board.dao.Admin7Dao;
import com.kh.app.board.vo.AdminVo;
import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class Admin7Service {

	//게시글 조회
	public List<AdminVo> selectList(PageVo pageVo) throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL (DAO)
		Admin7Dao dao = new Admin7Dao();
		List<AdminVo> boardList = dao.selectList(conn, pageVo);
		
		//close
		JDBCTemplate.close(conn);
		
		return boardList;
	}
	 
	//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			Admin7Dao dao = new Admin7Dao();
			int result = dao.selectCount(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}
		
		public int selectWhite() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			Admin7Dao dao = new Admin7Dao();
			int result = dao.selectCount(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}
		
		public int selectSilver() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			Admin7Dao dao = new Admin7Dao();
			int result = dao.selectCount(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}
		
		public int selectGold() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			Admin7Dao dao = new Admin7Dao();
			int result = dao.selectCount(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}
		
		public int selectLive() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			Admin7Dao dao = new Admin7Dao();
			int result = dao.selectCount(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}
		
		public int selectDeath() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			Admin7Dao dao = new Admin7Dao();
			int result = dao.selectCount(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}
		
		public int selectSleep() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			Admin7Dao dao = new Admin7Dao();
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
			Admin7Dao dao = new Admin7Dao();
			AdminVo vo = dao.selectOne(conn , no);
			
			//tx , close
			JDBCTemplate.close(conn);
			
			return vo;
		}

}//class