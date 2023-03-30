<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화등록</title>
</head>
<body>

	<div id="wrapper" style="margin: auto;">
	
		<jsp:include page="adminHead.jsp" />
		
		<main>			
			<form action="/LeeS/movieWrite" method="post" enctype="multipart/form-data">
            <table border="1" style="margin: auto; width: 20%">
                <tr>
                    <td colspan="2">영화등록</td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="title" size="30"></td>
                 </tr>
                 <tr>
                    <td>개봉일</td>
                    <td><input type="text" name="open" size="30"></td>
                 </tr>
                 <tr>
                    <td>출연진</td>
                    <td><textarea rows="3" cols="30" name="actor"></textarea></td>
                 </tr>
                 <tr>
                    <td>줄거리</td>
                    <td><textarea rows="5" cols="30" name="summary"></textarea></td>
                 </tr>
                 <tr>
                    <td>장르</td>
                    <td><input type="text" name="genre" size="10"></td>
                 </tr>
                 <tr>
                    <td>상영등급</td>
                    <td><input type="text" name="rate" size="10"></td>
                 </tr>
                 <tr>
                    <td>상영기간</td>
                    <td><input type="text" name="pr" size="30"></td>
                 </tr>               
                 <tr>
                    <td>러닝타임</td>
                    <td><input type="text" name="run" size="10"></td>
                 </tr>
                 <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="등록하기"></td>
                 </tr>
            </table>
            </form>
		</main>	
	</div>
</body>
</html>