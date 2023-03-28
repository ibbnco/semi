<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" href="/resources/css/inner-content.css">
</head>
<body>

	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
	<div class="content">
		<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
				
		<div class = "inner-content">
		<form action="/member/quit" method="post">
		<table>
		<tr>
			<td colspan="2">입력해주세요</td>
		</tr>
		<tr>
			<td>아이디 : </td>
			<td><input type = "text" name = "memberId"></td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input type="password" name="memberPwd"></td>
		</tr>
		<tr>
			<td colspan="2"><input class="comBtn" type="submit" value="탈퇴"></td>
		</tr>
	</table>
	</form>
	</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</div>
</body>
</html>