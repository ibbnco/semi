<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="wrapper">
	
		<%@ include file="01_store_main2.jsp" %>
		
		제목 <input type="text" value="${boardVo.title}" readonly>
		작성자 <input type="text" value="${boardVo.writer}" readonly>
		작성일시 <span>${boardVo.enrollDate}</span>
		<br>
		내용 <textarea readonly>${boardVo.content}</textarea>
		
		<img src="/resources/img/${ boardVo.changeName }" alt="게시글이미지">

	</div>

</body>
</html>
