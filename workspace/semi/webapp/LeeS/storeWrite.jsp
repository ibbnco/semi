<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물품등록</title>
</head>
<body>
	<div id="wrapper" style="margin: auto;">
		<jsp:include page="adminHead.jsp" />
		<main>			
			<form action="/LeeS/storeWrite" method="post" enctype="multipart/form-data">
            <table border="1" style="margin: auto; width: 20%">
                <tr>
                    <td colspan="2">매점상품등록</td>
                </tr>
                <tr>
                    <td>상품명</td>
                    <td><input type="text" name="title" size="30"></td>
                 </tr>
                 <tr>
                    <td>가격</td>
                    <td><input type="text" name="price" size="30"></td>
                 </tr>
                 <tr>
                    <td>상품등록일</td>
                    <td><input type="text" name="date" size="30"></td>
                 </tr>
                 <tr>
                    <td>상품수정일</td>
                    <td><input type="text" name="update" size="30"></td>
                 </tr>
                 <tr>
                    <td>상품설명</td>
                    <td><textarea rows="4" cols="30" name="content"></textarea></td>
                 </tr>
                 <tr>
                    <td>재고량</td>
                    <td><input type="text" name="count" size="10"></td>
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
