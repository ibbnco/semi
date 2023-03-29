import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;

public class MovieSeatServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // DB 연결 정보 설정
        String driverName = "oracle.jdbc.driver.OracleDriver";
        String dbUrl = "jdbc:oracle:thin:@localhost:1521:xe";
        String dbUserId = "SEMIPJ";
        String dbPassword = "1234";
        
        // 요청 파라미터에서 상영 일정 번호 받아오기
        int scheduleNo = Integer.parseInt(request.getParameter("scheduleNo"));
        
        // 예매 가능한 좌석 목록 조회
        List<String> availableSeats = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            // JDBC 드라이버 로드
            Class.forName(driverName);
            // DB 연결 생성
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SEMIPJ", "1234");
            // 상영 일정에 해당하는 상영관 번호 조회
            pstmt = conn.prepareStatement("SELECT THEATER_NO FROM SCHEDULE WHERE SCHEDULE_INF = ?");
            pstmt.setInt(1, scheduleNo);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                String theaterNo = rs.getString("THEATER_NO");
                // 상영관에 속한 좌석 목록 조회
                pstmt = conn.prepareStatement("SELECT SEAT_NO FROM SEAT WHERE THEATER_NO = ?");
                pstmt.setString(1, theaterNo);
                rs = pstmt.executeQuery();
                while (rs.next()) {
                    availableSeats.add(rs.getString("SEAT_NO"));
                }
            }
        } catch (SQLException ex) {
            // DB 오류 처리
            throw new ServletException("DB 연결 오류", ex);
        } catch (ClassNotFoundException ex) {
            // JDBC 드라이버 로드 오류 처리
            throw new ServletException("JDBC 드라이버 로드 오류", ex);
        } finally {
            // DB 연결 자원 반환
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException ex) {
                    // 오류 무시
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException ex) {
                    // 오류 무시
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    // 오류 무시
                }
            }
        }
        
        // JSP로 전달할 데이터 설정
        request.setAttribute("scheduleNo", scheduleNo);
        request.setAttribute("availableSeats", availableSeats);
        
        // JSP로 이동
        RequestDispatcher dispatcher = request.getRequestDispatcher("reservation2-seat.jsp");
        dispatcher.forward(request, response);
    }
}