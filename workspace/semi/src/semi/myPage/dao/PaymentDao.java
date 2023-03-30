package semi.myPage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import semi.myPage.vo.PaymentVo;
import semi.myPage.vo.QnaVo;
import semi.util.page.PageVo;
import static semi.util.JDBCTemplate.*;

public class PaymentDao {

	public List<PaymentVo> payList(Connection conn, PageVo pageVo) throws Exception {
		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT Q.QNA_NO , Q.QNA_TITLE,Q.QNA_DATE , Q.QNA_DEL_STATUS , Q.QNA_ANSWER ,M.MEMBER_NO FROM QNA Q INNER JOIN MEMBER M ON Q.MEMBER_NO = M.MEMBER_NO WHERE Q.QNA_DEL_STATUS = 'N' ORDER BY QNA_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() +1;
		int endRow = startRow + pageVo.getBoardLimit() -1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj (List<BoardVo>) 
		List<PaymentVo> payList = new ArrayList<PaymentVo>();
		
		
		
		while(rs.next()) {
			String date = rs.getString("DATE");
			String sOrderNo = rs.getString("S_ORDER_NO");
			String productName = rs.getString("PRODUCT_NAME");
			String total = rs.getString("TOTAL");
			String status = rs.getString("STATUS");
			
			
            
			PaymentVo vo = new PaymentVo();
			vo.setDate(date);
			vo.setsOrderNo(sOrderNo);
			vo.setProductName(productName);
			vo.setTotal(total);
			vo.setStatus(status);
			
			payList.add(vo);
		}
		
		return payList;
	}

	public int payCount(Connection conn) throws Exception {
		//sql
		String sql = "SELECT COUNT (*) AS PAY_CNT FROM QNA WHERE QNA_DEL_STATUS = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj
		int payCnt = 0;
		if (rs.next()) {
			payCnt = rs.getInt("PAY_CNT");
		}
		
		close(rs);
		close(pstmt);
		
		return payCnt;
	}

	public List<PaymentVo> pointList(Connection conn, PageVo pageVo) throws Exception {
		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT Q.QNA_NO , Q.QNA_TITLE,Q.QNA_DATE , Q.QNA_DEL_STATUS , Q.QNA_ANSWER ,M.MEMBER_NO FROM QNA Q INNER JOIN MEMBER M ON Q.MEMBER_NO = M.MEMBER_NO WHERE Q.QNA_DEL_STATUS = 'N' ORDER BY QNA_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() +1;
		int endRow = startRow + pageVo.getBoardLimit() -1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj (List<BoardVo>) 
		List<PaymentVo> pointList = new ArrayList<PaymentVo>();
		
		while(rs.next()) {
			String productName = rs.getString("PRODUCT_NAME");
			String date = rs.getString("DATE");
			String pointPlus = rs.getString("POINT_PLUS");
			String pointMinus = rs.getString("POINT_MINUS");
			
			PaymentVo vo = new PaymentVo();
			vo.setProductName(productName);
			vo.setDate(date);
			vo.setPointPlus(pointPlus);;
			vo.setPointMinus(pointMinus);
			
			pointList.add(vo);
		}
		
		return pointList;
	}

	public int pointCount(Connection conn) throws Exception {
		//sql
		String sql = "SELECT COUNT (*) AS P_CNT FROM QNA WHERE QNA_DEL_STATUS = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj
		int pCnt = 0;
		if (rs.next()) {
			pCnt = rs.getInt("P_CNT");
		}
		
		close(rs);
		close(pstmt);
		
		return pCnt;
	}

	

	
	
	

}
