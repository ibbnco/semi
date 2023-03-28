<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile</title>
<style>
#profile{
    background-color:#CAD7E4;
    margin: auto;
    padding-left: 20px;
    padding-top: 10px;
    padding-bottom: 10px;
    width: 100%;
    height: 250px;
    display: flex;
    justify-content: left;
    font-size: 30px;
    border-radius: 10px;
}
#profile_img{
    width: 100px;
   
}
.blank{
    width: 150px;
    height: 200px;
}
</style>
</head>
<body>

	<div id="profile">
            <table>
                <tr>
                    <td rowspan="3"><img id="profile_img" src="" alt="프로필 사진"></td>
                    <td rowspan="3" class="blank"></td>
                    <td>${loginMember.memberNick}  님 환영합니다.</td>
                </tr>
                <tr>
                    
                    <td>포인트 : ${loginMember.memberPoint}</td>
                </tr>
                <tr>
                    
                    <td>등급 : ${loginMember.memberGrade}</td>
                </tr>
            </table>        
        </div>
</body>
</html>