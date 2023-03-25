<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

	#menuname{
    	float: left;
    	font-size: 20px;
    	font-weight: bold;
	}
	
	ul>li {
	    display: inline;
	}
	ul{
	    float: right;
	}
	li{
	    float: left;
	}
</style>
</head>
<body>

<%-- <div id="wrapper">
<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
</div> --%>

	<div id="wrapper">
	<%@ include file="mainHead.jsp" %>
		<div id="menuname">
	        <ul>
	            <li><a href="03_store_orderlist.html">구매내역&nbsp;&nbsp;</a></li>           
	            <li><a href="03_store_cart.html">장바구니</a></li>
	        </ul>
	    </div> 
	
    <div id="main_detail"><img src="/images/storephoto.jpg" alt="" width="1030px" height="300px"></div>
	    <div id="main">
			<table id="store">
	        <tr>
	            <td class="name">팝콘</td>
	            <td><button type="button" onclick="location.href='02_store_buy_pop.jsp';">+</button></td>
	            <td class="name">음료</td>
	            <td><button type="button" onclick="location.href='02_store_buy_coke.jsp';">+</button></td>
	            <td class="name">스낵</td>
	            <td><button type="button" onclick="location.href='02_store_buy_snack.jsp';">+</button></td>
	        </tr>
	        <tr>
	            <td><a href="02_store_buy_pop.jsp"><img src="/images/팝콘.jpg" alt="" width="200px" height="200px"></a></td>
	            <td></td>
	            <td><a href="02_store_buy_coke.jsp"><img src="/images/coke.png" alt="" width="180px" height="160px"></a></td>
	            <td></td>
	            <td><a href="02_store_buy_snack.jsp"> <img src="/images/nachonew2.jpg" alt="" width="200px" height="150px"></a></td>
	            <td></td>
	        </tr>
	        <tr><td class="name2">오리지널 팝콘</td><td>￦4,500</td>
	        <td class="name2">콜라</td><td>￦2,500</td>
	        <td class="name2">나쵸</td><td>￦4,000</td></tr>
	        <tr class="name">
	            <td>콤보</td>
	            <td><button type="button" onclick="location.href='02_store_buy_combo.jsp';">+</button></td>
	            <td>굿즈</td>
	            <td><button type="button" onclick="location.href='02_store_buy_goods.jsp';">+</button></td>
	        </tr>
	        
	        <tr class="name3">
	            <td><a href="02_store_buy_combo.jsp"><img src="/images/combo1.jpg" alt="" width="230px" height="230px"></a></td>
	            <td></td>
	            <td><a href="02_store_buy_goods.jsp"><img src="/images/marveltumbler.jpg" alt="" width="150px" height="150px"></a></td>
	            <td></td>
	        </tr>
	        <tr><td class="name2">솔로콤보</td><td>￦4,500</td>
	            <td class="name2">마블 텀블러</td><td>￦10,500</td>        
	       </table>
	    </div>
    <%@ include file="footer.jsp" %>
   </div> 
</body>
</html>