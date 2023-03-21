<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	}
	.name{
	    color: #104E86;
	    font-weight: bold;
	    font-size: larger;
	}
	.name2{
	    font-weight: bold;
	}
	footer {
	    background-color: #6188AF;
	    width: 100%;
	    height: 100px;
	}
</style>
</head>
<body>
    <header class="header">
        <div class="header_logo">
            <a href="newbmovie.html"><p>뉴비무비</p></a>
            <p>NEWBMOVIE</p>
    </div>
    <div>
        <img class="logo" src="/resources/movielogo.png" alt="logo">
    </div>
    <div class="mypage">
        <a href="#" target='blank'><img src="/resources/회원가입.png"  alt="join"> <p class="text">회원가입</p></a>
        <a href="#" target='blank'><img src="/resources/로그인.png" alt="login"> <p class="text">로그인</p></a>
        <a href="#" target='blank'><img src="/resources/마이페이지.png" alt="mypage"><p class="text">마이페이지</p></a>
        <a href="#" target='blank'><img src="/resources/고객센터.png" alt="servicecenter"><p class="text">고객센터</p></a>
    </div>
    </header>
    <div id="menuname">
        <ul>
            <li><a href="03_store_orderlist.html">구매내역&nbsp;&nbsp;</a></li>           
            <li><a href="03_store_cart.html">장바구니</a></li>
        </ul>
    </div> 
    <div class="header_menu">
        <ul>
            <li><a href="">영화</a></li>
            <li><a href="">예매</a></li>
            <li><a href="">극장</a></li>
            <li><a href="01_store_main.html">스토어</a></li>
            <li><a href="">이벤트</a></li>
        </ul>
    </div>
    <div id="main_detail"><img src="/resources/storephoto.jpg" alt="" width="1060px" height="300px"></div>
    <div id="main">
        <table border="0" id="store">
            <tr>
                <td class="name">팝콘</td>
                <td><button type="button" onclick="location.href='02_store_buy_pop.html';">+</button></td>
                <td class="name">음료</td>
                <td><button type="button" onclick="location.href='02_store_buy_coke.html';">+</button></td>
                <td class="name">스낵</td>
                <td><button type="button" onclick="location.href='02_store_buy_snack.html';">+</button></td>
            </tr>
            <tr>
                <td><a href="02_store_buy_pop.html"><img src="/resources/팝콘.jpg" alt="" width="200px" height="200px"></a></td>
                <td></td>
                <td><a href="02_store_buy_coke.html"><img src="/resources/coke.png" alt="" width="180px" height="160px"></a></td>
                <td></td>
                <td><a href="02_store_buy_snack.html"><img src="/resources/nachonew2.jpg" alt="" width="200px" height="150px"></a></td>
                <td></td>
            </tr>
            <tr><td class="name2">오리지널 팝콘</td><td>￦4,500</td>
            <td class="name2">콜라</td><td>￦2,500</td>
            <td class="name2">나쵸</td><td>￦4,000</td></tr>
            <tr class="name">
                <td>콤보</td>
                <td><button type="button" onclick="location.href='02_store_buy_combo.html';">+</button></td>
                <td>굿즈</td>
                <td><button type="button" onclick="location.href='02_store_buy_goods.html';">+</button></td>
            </tr>
            <tr>
                <td><a href="02_store_buy_combo.html"><img src="/resources/combo1.jpg" alt="" width="230px" height="230px"></a></td>
                <td></td>
                <td><a href="02_store_buy_goods.html"><img src="/resources/marveltumbler.jpg" alt="" width="150px" height="150px"></a></td>
                <td></td>
            </tr>
            <tr><td class="name2">솔로콤보</td><td>￦4,500</td>
                <td class="name2">마블 텀블러</td><td>￦10,500</td>        
        </table>
    </div>
    
    <footer>footer</footer>
</body>
</html>