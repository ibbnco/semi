package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.SalesService;
import com.kh.app.board.vo.SalesVo;

@WebServlet("/LeeS/sales")
public class SalesListController extends HttpServlet {
	
private SalesService as = new SalesService();
	
	//게시글 목록 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {			
			int movieSales = as.selectMovieSales();
			int storeSales = as.selectStoreSales();
			int totalSales = movieSales+storeSales;
			
			SalesVo salesVo = new SalesVo(movieSales, storeSales, totalSales);
								
			req.setAttribute("salesVo", salesVo);
			req.getRequestDispatcher("/LeeS/sales.jsp").forward(req, resp);
			
	     	}catch(Exception e) {
	     	System.out.println("[ERROR] 매출 조회 에러");	
			e.printStackTrace();
		    }		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}