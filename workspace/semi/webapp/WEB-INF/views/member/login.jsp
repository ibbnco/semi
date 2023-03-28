<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/resources/css/login.css">
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
	
	<div id="content">
		<form action="/member/login" method="post">
            <table>
                <tr class="center">
                    <td colspan="2" style="font-size: 50px;">로그인</td>
                </tr>
                <tr>
                <td>아이디</td>
                <td><input type="text" class="textBox" name="memberId"></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input type="password" class="textBox" name="memberPwd"></td>
                </tr>
                <tr>
                    <td colspan="2"><button type="submit" class="comBtn" style="width: 100%">로그인</button></td>
                </tr>
            </table>
           </form>
        </div>
            <div class="page">
                <button type = "button" class="linkBtn"  onclick="location.href='/member/join';">회원가입</button>
                <button type = "button" class="linkBtn"  onclick="location.href='/member/findId';">아이디 찾기</button>
                <button type = "button"  class="linkBtn"  onclick="location.href='/member/findPwd';">비밀번호 찾기</button>
            </div>
            <%@ include file="/WEB-INF/views/common/footer.jsp" %>
        </div>
</body>
</html>