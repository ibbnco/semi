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
        <table id="store">
            <tr><td id="detail" class="line">아이스 아메리카노</td><td colspan="3"></td></tr>
            <tr><td><span class="des">영화보면서 힘내고 싶을 때</span></td></tr>
            <tr><td rowspan="3"><img src="/images/iceame.jpg" alt="" width="400px" height="300px"></td>
                <td colspan="2" id="table3">가격<br><br>구성<br><br>원산지</td>
                <td>&nbsp;&nbsp;￦3,000<br><br>&nbsp;&nbsp;아이스 아메리카노 1개<br><br>&nbsp;&nbsp;원두:브라질산</td></tr>
			<tr><td colspan="3"><button class="cart_orderbtn left" type="button" onclick="location.href='/store/cart'">장바구니 추가</button></td></tr>
        </table>      
    </div>
    <footer><%@ include file="footer.jsp" %></footer>
</body>
</html>