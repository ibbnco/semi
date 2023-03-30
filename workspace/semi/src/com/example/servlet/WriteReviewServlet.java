package com.example.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("")
public class WriteReviewServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "SEMIPJ";
	String pwd = "1234";

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");

    String title = request.getParameter("title");
    String content = request.getParameter("content");
    int rating = Integer.parseInt(request.getParameter("rating"));

    Date now = new Date();
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String createdDate = format.format(now);

    try {
    	Class.forName("oracle.jdbc.OracleDriver");
      Connection conn = DriverManager.getConnection(url, id, pwd);

      String sql = "INSERT INTO reviews (title, content, rating, created_date) VALUES (?, ?, ?, ?)";
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, title);
      pstmt.setString(2, content);
      pstmt.setInt(3, rating);
      pstmt.setString(4, createdDate);

      int result = pstmt.executeUpdate();
      if (result == 1) {
        response.sendRedirect(request.getContextPath() + "/review.jsp");
      } else {
        response.sendRedirect(request.getContextPath() + "/error.jsp");
      }

      pstmt.close();
      conn.close();
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
      response.sendRedirect(request.getContextPath() + "/error.jsp");
    }
  }
}