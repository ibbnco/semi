<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" href="/resources/css/join.css">
<script defer src="/resources/js/join.js"></script>
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
	<div id="body-wrap">
	<form action="/member/join" method="post">
		 <table>
            <tr class="center">
                <td colspan="2" style="font-size: 50px;">회원가입</td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input class="textBox" type="text" name="memberName"></td>
            </tr>
            <tr>
                <td>아이디</td>
                <td><input class="textBox" type="text" name="memberId"  placeholder="영문,숫자 조합 (6~12자)">
                &nbsp;&nbsp;<button type="button" onclick="checkId();"class="comBtn">중복확인</button></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input class="textBox" type="password" name="memberPwd1" placeholder="영문,숫자,!,@,# 조합 (8~16자)"></td>
            </tr>
            <tr>
                <td>비밀번호 확인</td>
                <td><input class="textBox" type="password" name="memberPwd2" placeholder="영문,숫자,!,@,# 조합 (8~16자)"></td>
            </tr>
            <tr class="center">
                <td colspan="2" id="pwd-result"></td> 
                
            </tr>
            <tr>
                <td>닉네임</td>
                <td><input class="textBox" type="text" name="memberNick" placeholder="최대 10글자 이하"></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td>
                    <input type="text" name="memberEmail" id="inputEmailForm"  maxlength="30">
					<button onclick="emailAuthentication()" id="eamilAuthBtn" type="button" class="btnChk">인증</button>
                </td>
            </tr>
            <tr>
                <td>인증번호</td>
                <td><input type="text" name="authCode" id="inputAuthCode"  maxlength="10" disabled="disabled">
				<button onclick="authCodeCheck()" id="authCodeCheckBtn" type="button" disabled="disabled" class="btnChk">인증</button>
				<input type="hidden" name="authPass" id="authPass" value="false">
				</td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input class="textBox" type="tel" name="memberTel" placeholder="(-)제외 11자리"></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit" class="comBtn">회원가입</button>&nbsp;<button type="reset" class="comBtn">초기화</button></td>
            </tr>
        </table>	
	</form>
        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
       </div>
</body>
</html>