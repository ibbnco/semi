package com.kh.app.pay;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.store.BoardService;
import com.kh.app.store.BoardVo;

@WebServlet("/store/cart")
public class CartController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<BoardVo> boardList = null;
		try {
			BoardService bs = new BoardService();
			boardList = bs.selectList();
		}catch(Exception e) {
			System.out.println("예외 발생");
			e.printStackTrace();
		}
		System.out.println(boardList);
		
		req.setAttribute("boardList", boardList);
		req.getRequestDispatcher("/03_store_cart.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
