
import java.sql.*;

public class ProductList {
    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        String url = "jdbc:oracle:thin:@localhost:1521:xe"; 
        String user = "SEMIPJ"; 
        String password = "1234"; 

        try {
            Class.forName("oracle.jdbc.OracleDriver"); // JDBC 드라이버 로드
            conn = DriverManager.getConnection(url, user, password); // 데이터베이스 연결
            stmt = conn.createStatement();
            String sql = "SELECT PRODUCT_NAME, PRICE FROM PRODUCTS WHERE PRODUCT_NAME='?'";

            rs = stmt.executeQuery(sql);

            // HTML 페이지에 동적으로 삽입할 테이블 생성
            StringBuilder html = new StringBuilder("<table>");
            jsp.append("<tr><th>상품명</th><th>가격</th></tr>");

            // 결과셋에서 상품 정보 추출하여 테이블에 추가
            while (rs.next()) {
                String productName = rs.getString("PRODUCT_NAME");
                int price = rs.getInt("PRICE");
                html.append("<tr><td>").append(productName).append("</td><td>").append(price).append("</td></tr>");
            }

            html.append("</table>");

            // HTML 페이지 출력
	            System.out.println(jsp.toString());

	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (rs != null) rs.close();
	                if (stmt != null) stmt.close();
	                if (conn != null) conn.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	}
}
