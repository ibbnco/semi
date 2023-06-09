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
            <li>콤보 Combo</li><br>
        </ul>
    </div> 
	
    <div id="main">
        <table border="0" id="store">
            <tr><td id="detail" class="line">점보콤보</td><td colspan="3"></td></tr>
            <tr><td><span class="des">더 많이 먹고 싶은 사람들을 위한 콤보</span></td></tr>
            <tr><td rowspan="3"><img src="/images/combo3.jpg" alt="" width="400px" height="400px"></td>
                <td colspan="2" id="table3">가격<br><br>구성<br><br>구성</td>
                <td>&nbsp;&nbsp;￦6,000<br><br>&nbsp;&nbsp;점보콤보 1개<br><br>&nbsp;&nbsp;팝콘(L) 1개, 콜라 2개</td></tr>
			<tr><td colspan="3"><button class="cart_orderbtn left" type="button" onclick="location.href='/store/cart'">장바구니</button></td></tr>
        </table>
    </div>
    <footer><%@ include file="footer.jsp" %></footer>
</body>
</html>
