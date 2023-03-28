package semi.myPage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import semi.myPage.vo.QnaVo;
import semi.util.page.PageVo;
import static semi.util.JDBCTemplate.*;

public class QnaDao {

	public List<QnaVo> qnaList(Connection conn, PageVo pageVo) throws Exception {
		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT Q.QNA_NO , Q.QNA_TITLE,Q.QNA_DATE , Q.QNA_DEL_STATUS , Q.QNA_ANSWER ,M.MEMBER_NO FROM QNA Q INNER JOIN MEMBER M ON Q.MEMBER_NO = M.MEMBER_NO WHERE Q.QNA_DEL_STATUS = 'N' ORDER BY QNA_NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() +1;
		int endRow = startRow + pageVo.getBoardLimit() -1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj (List<BoardVo>) 
		List<QnaVo> qnaList = new ArrayList<QnaVo>();
		
		
		
		while(rs.next()) {
			String qnaNo = rs.getString("QNA_NO");
			String qnaTitle = rs.getString("QNA_TITLE");
			String qnaDate = rs.getString("QNA_DATE");
			String qnaDelStatus = rs.getString("QNA_DEL_STATUS");
			String qnaAnswer = rs.getString("QNA_ANSWER");
			String memberNo = rs.getString("MEMBER_NO");
			
			QnaVo vo = new QnaVo();
			vo.setQnaNo(qnaNo);
			vo.setQnaTitle(qnaTitle);
			vo.setQnaDate(qnaDate);
			vo.setQnaDelStatus(qnaDelStatus);
			vo.setQnaAnswer(qnaAnswer);
			vo.setMemberNo(memberNo);
			
			qnaList.add(vo);
		}
		
		return qnaList;
	}

	public int QnaCount(Connection conn) throws Exception {
		
		//sql
		String sql = "SELECT COUNT (*) AS Q_CNT FROM QNA WHERE QNA_DEL_STATUS = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj
		int qCnt = 0;
		if (rs.next()) {
			qCnt = rs.getInt("Q_CNT");
		}
		
		close(rs);
		close(pstmt);
		
		return qCnt;
	}

	public int write(Connection conn, QnaVo vo) throws Exception {
		//sql
		String sql = "INSERT INTO QNA(QNA_NO,QNA_TITLE,QNA_CONTENT,MEMBER_NO,ADMIN_NO) VALUES (SEQ_QNA_NO.NEXTVAL, ?, ?, ?,5)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getQnaTitle());
		pstmt.setString(2, vo.getQnaContent());
		pstmt.setString(3, vo.getMemberNo());
		int result = pstmt.executeUpdate();
		
		close(pstmt);
		
		return result;
		
		
	}

	public QnaVo qnaDetail(Connection conn , QnaVo vo) throws Exception {
		//sql
		String sql = "SELECT Q.QNA_NO , Q.QNA_TITLE , Q.QNA_CONTENT , Q.QNA_DATE ,Q.QNA_ANSWER,M.MEMBER_NO FROM QNA Q JOIN MEMBER M ON (Q.MEMBER_NO = M.MEMBER_NO) WHERE Q.QNA_NO = ? AND Q.QNA_DEL_STATUS = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,vo.getQnaNo());
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj
		QnaVo qnaVo = null;
		if (rs.next()) {
			 String qnaNo = rs.getString("QNA_NO");
	         String qnaTitle = rs.getString("QNA_TITLE");
	         String qnaContent = rs.getString("QNA_CONTENT");
	         String qnaDate = rs.getString("QNA_DATE");
	         String qnaAnswer = rs.getString("QNA_ANSWER");
	         
	         qnaVo = new QnaVo();
	         qnaVo.setQnaNo(qnaNo);
	         qnaVo.setQnaTitle(qnaTitle);
	         qnaVo.setQnaContent(qnaContent);
	         qnaVo.setQnaDate(qnaDate);
	         qnaVo.setQnaAnswer(qnaAnswer);
	         
			
		}
		
		//close
		close(rs);
		close(pstmt);
		
		return qnaVo;
	}


}
