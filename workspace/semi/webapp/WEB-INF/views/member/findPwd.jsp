<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="/resources/css/find.css">
</head>
<body>

	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<form action="/member/findPwd" method="post">
			<div id="content">
                <table>
                <c:if test="${findPwd == null }">
                    <tr class="center">
                        <td colspan="2" style="font-size: 50px;">비밀번호 찾기</td>
                    </tr>
                    <tr>
                        <td>아이디</td>
                        <td><input type="text" class="textBox" name="memberId"></td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td><input type="text" class="textBox" name="memberEmail"></td>
                    </tr>
                    <tr>
                    </c:if>
                    <c:if test="${findPwd != null }">
                    고객님의 비밀번호는 ${findPwd.memberPwd} 입니다.
                    </c:if>
                    <c:remove var="findPwd"/>
                        <td><button class="linkBtn" type = "button" onclick="location.href='/member/findId'">아이디 찾기</button></td>
                        <td><button class="linkBtn" type="submit">비밀번호 찾기</button></td>
                        
                    </tr>
                </table>
            </div>
		</form>
		 <%@ include file="/WEB-INF/views/common/footer.jsp" %>
		
	</div>
</body>
</html>