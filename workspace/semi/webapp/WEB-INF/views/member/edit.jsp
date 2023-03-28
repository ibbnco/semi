<%@ page import="semi.member.vo.MemberVo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
	
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<%@ include file="/WEB-INF/views/common/profile.jsp" %>
		
        <div class="content">
			<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
            
            <div class="inner_content">
            <form action="/member/edit" method="post">
            	<table>
            		<tr>
            			<td>이름 :</td>
            			<td><input type="text" name = "memberName" readonly="readonly" value="${loginMember.memberName}"></td>
            		</tr>
            		<tr>
            			<td>아이디 :</td>
            			<td><input type="text" name = "memberId" readonly="readonly" value="${loginMember.memberId}"></td>
            		</tr>
            		<tr>
            			<td>비밀번호 :</td>
            			<td><input type="password" name = "memberPwd1" placeholder="영문,숫자,!,@,# 조합 (8~16자)"></td>
            		</tr>
            		<tr>
            			<td>비밀번호 확인:</td>
            			<td><input type="password" name = "memberPwd2" placeholder="영문,숫자,!,@,# 조합 (8~16자)"></td>
            		</tr>
            		<tr class="center">
                		<td colspan="2" id="pwd-result"></td> 
            		</tr>
            		<tr>
            			<td>닉네임 :</td>
            			<td><input type="text" name = "memberNick"></td>
            		</tr>
            		<tr>
            			<td>이메일 :</td>
            			<td><input type="email" name = "memberEmail"></td>
            		</tr>
            		<tr>
            			<td>전화번호 :</td>
            			<td><input type="tel" name = "memberTel"></td>
            		</tr>
            		<tr>
            			<td><button type="submit" class="comBtn">정보 수정</button></td>
            		</tr>
            		
            		
            	</table>
            </form>
            </div>
        </div>
     </div>
</body>
</html>