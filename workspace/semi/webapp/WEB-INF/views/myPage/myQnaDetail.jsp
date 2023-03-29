<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 상세 보기</title>
</head>
<body>
<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<%@ include file="/WEB-INF/views/common/profile.jsp" %>
		
        <div class="content">
			<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
            
            <div class="inner_content" >
                <div class="inner_title">1:1 문의 상세보기</div>
                <form action="/myPage/qnaDetail" method="post">
                <table>
                	<tr>
                		<td>제목</td>
                		<td>${qnaVo.qnaTitle}</td>
                	</tr>
                	<tr>
                		<td>작성날짜</td>
                		<td>${qnaVo.qnaDate}</td>
                	</tr>
                	<tr>
                		<td colspan="2">내용</td>
                	</tr>
                	<tr>
                		<td colspan="2">${qnaVo.qnaContent}</td>
                	</tr>
                	<c:if test="${qnaVo.qnaAnswer != null}">
                		<tr>
                			<td colspan="2">답변</td>
                		</tr>
						<tr>
							<td colspan="2">${qnaVo.qnaAnswer}</td>
						</tr>
                	</c:if>
                	<tr>
                		<td colspan="2"><button type="button" onclick="history.back()">목록보기</button></td>
                	</tr>
                </table>
                </form>
                </div>

        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
      </div>    

</body>
</html>