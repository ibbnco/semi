<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 작성하기</title>
</head>
<body>
	
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<%@ include file="/WEB-INF/views/common/profile.jsp" %>
		
        <div class="content">
			<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
            
            <div class="inner_content" >
            <div class="inner_title">1:1 문의 작성하기</div>
            	
			<form action="/myPage/qnaWrite" method="post">

				<table>
					<input type="hidden" name="writer" value="${loginMember.no}">
					<tr>
						<td>제목</td>
						<td><input type="text" name="title" placeholder="최대 20 BYTE"></td>
					</tr>
					
					<tr>
						<td>내용</td>
						<td><textarea name="content" placeholder="내용을 입력하세요."></textarea></td>
					</tr>
					<tr>
						<td></td>
						<td><button type="submit" >작성하기</button></td>
					</tr>
				</table>
				
				
			</form>
		
             </div>
       	</div>
       	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
     </div>
</body>
</html>