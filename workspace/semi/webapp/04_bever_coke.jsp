<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#menuname{
	    float: left;
	    font-size: x-large;
	    font-weight: bolder;
	    color: #104E86;
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
	
	body{
	    padding-left: 220px;
	    padding-right: 220px;
	}
	#store{
	    width: 100%;
	    height: 100%;
	    padding: 5%;
	    border-spacing: 20px;
	    margin: auto;
	    font-weight: 300;
	}
    #detail{
        color: #104E86;
        font-size: xx-large;
        font-weight: bold;
    }
    .line{
        border-bottom: 1px solid #104E86;
    }
	.cart_orderbtn {
        width: 200px;
        height: 50px;
        margin: 0 auto;
        border: none;
        border-radius: 5px;
        align-text: center;
    }

    .cart_orderbtn.left{
        font-size: 16px;
        background-color: #CAD7E4;
        color: white;
 	}
    #table3{
        text-align: center;
    }
	
	footer {
	    background-color: #6188AF;
	    width: 100%;
	    height: 100px;
	}
</style>
</head>
<body>
<%-- <div id="wrapper">
<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %></div> --%>

	<%@ include file="logoHeader.jsp" %>
	
	<div id="menuname">
        <ul>
            <li>음료 Drinks</li><br>
        </ul>
    </div> 
	
    <div id="main">
        <table border="0" id="store">
            <tr><td id="detail" class="line">콜라</td><td colspan="3"></td></tr>
            <tr><td><span class="des">영화관 하면 생각나는 기본 음료</span></td></tr>
            <tr><td rowspan="3"><img src="/images/coke.png" alt="" width="280px" height="280px"></td>
                <td colspan="2" id="table3">가격<br><br>구성<br><br>제품</td>
                <td>&nbsp;&nbsp;￦2,500<br><br>&nbsp;&nbsp;콜라 1개<br><br>&nbsp;&nbsp;코카콜라</td></tr>
            <tr><td colspan="2"><button class="cart_orderbtn left" onclick="location.href='03_store_cart.jsp';">장바구니</button></td>
        </table>
    </div>
    <footer>footer</footer>
</body>
</html>
