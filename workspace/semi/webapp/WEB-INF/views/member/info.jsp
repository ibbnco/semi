<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 조회</title>
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<%@ include file="/WEB-INF/views/common/profile.jsp" %>
		
        <div class="content">
			<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
            
            <div class="inner_content">
            	<table>
            		<tr>
            			<td>이름 :</td>
            			<td>${loginMember.memberName}</td>
            		</tr>
            		<tr>
            			<td>아이디 :</td>
            			<td>${loginMember.memberId}</td>
            		</tr>
            		<tr>
            			<td>닉네임 :</td>
            			<td>${loginMember.memberNick}</td>
            		</tr>
            		<tr>
            			<td>이메일 :</td>
            			<td>${loginMember.memberEmail}</td>
            		</tr>
            		<tr>
            			<td>전화번호 :</td>
            			<td>${loginMember.memberTel}</td>
            		</tr>
            		<tr>
            			<td><button type="button" onclick="checkPwd();" class="comBtn">정보수정 하기</button></td>
            		</tr>
            		
            		
            	</table>
            </div>
            <%@ include file="/WEB-INF/views/common/footer.jsp" %>
           </div>
      </div>
</body>
</html>