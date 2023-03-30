<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>


</style>
</head>
<body>

	<%@ include file="logoHeader3.jsp" %>
	
	<div id="menuname">
        <ul>     
            <li><a href="/store/cart">장바구니</a></li>
        </ul>
    </div> 
	
    <div id="main_detail"><img src="/images/storephoto.jpg" alt="" style="width: 100%" height="300px"></div>
    <div id="main">
    	<table id="store">
        <tr>
            <td class="name">팝콘</td>
            <td></td>
            <td class="name">음료</td>
            <td></td>
            <td class="name">스낵</td>
            <td></td>
        </tr>
        <tr>
            <td><a href="/store/list"><img src="/images/팝콘.jpg" alt="" width="200px" height="200px"></a></td>
            <td></td>
            <td><a href="/store/list2"><img src="/images/coke.png" alt="" width="180px" height="160px"></a></td>
            <td></td>
            <td><a href="/store/list3"><img src="/images/nachonew2.jpg" alt="" width="200px" height="150px"></a></td>
            <td></td>
        </tr>
        <tr><td class="name2"></td><td></td>
        <td class="name2"></td><td></td>
        <td class="name2"></td><td></td></tr>
        <tr class="name">
            <td>콤보</td>
            <td></td>
            <td>굿즈</td>
            <td></td>
        </tr>
        <tr class="name">
            <td><a href="/store/list4"><img src="/images/combo1.jpg" alt="" width="230px" height="230px"></a></td>
            <td></td>
            <td><a href="/store/list5"><img src="/images/marveltumbler.jpg" alt="" width="150px" height="150px"></a></td>
            <td></td>
        </tr>
        <tr><td class="name2"></td><td></td>
            <td class="name2"></td><td></td>        
       </table>
    </div>
    
    <footer><%@ include file="footer.jsp" %></footer>
</body>
</html>