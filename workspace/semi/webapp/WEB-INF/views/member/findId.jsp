<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>

<link rel="stylesheet" href="/resources/css/find.css">
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<div id="content">
		<form action="/member/findId" method="post">
                <table>
                <c:if test="${findId == null }">
                    <tr class="center">
                        <td colspan="2" style="font-size: 50px;">아이디 찾기</td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input type="text" class="textBox" name="memberName"></td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td><input type="text" class="textBox" name="memberEmail"></td>
                    </tr>
                    <tr>
                    </c:if>
                    <c:if test="${findId != null }">
                    고객님의 아이디는 ${findId.memberId} 입니다.
                    </c:if>
                    <c:remove var="findId"/>
                        <td><button class="linkBtn" type = "submit">아이디 찾기</div></td>
                        <td><button class="linkBtn" onclick="location.href='/member/findPwd'">비밀번호 찾기</button></td>
                        
                    </tr>
                </table>
                </form>
            </div>
            <%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</div>
</body>
</html>