<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERROR Page</title>
</head>
<body>

	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
	
			<h1>예상치 못한 오류 발생으로 불편을 드려 죄송합니다.</h1>
			<br>
			<button type="button" name="comBtn" onclick="location.href = '/'">메인 페이지로 돌아가기</button>
		
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
</body>
</html>