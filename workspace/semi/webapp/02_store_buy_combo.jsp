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
	    font-size: x-large;
	    font-weight: bolder;
	    color: #104E86;
	}
	#menubar{
	    width: 100%;
	    height: 100px;
	    background-color: #CAD7E4;
	}
	#menubar ul li a {
	    font-size: 15px;
	    font-weight: bold;
	    float:right;
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
	footer {
	    background-color: #6188AF;
	    width: 100%;
	    height: 100px;
	}
</style>
</head>
<body>
    <header class="header">
    <div>
        <a href="newbmovie.html"><img class="logo" src="/resources/movielogo.png" alt="logo" ></a>
    </div>
    <div></div>
    <div class="mypage">
        <a href="#" target='blank'><img src="/resources/회원가입.png"  alt="join"> <p class="text">회원가입</p></a>
        <a href="#" target='blank'><img src="/resources/로그인.png" alt="login"> <p class="text">로그인</p></a>
        <a href="#" target='blank'><img src="/resources/마이페이지.png" alt="mypage"><p class="text">마이페이지</p></a>
        <a href="#" target='blank'><img src="/resources/고객센터.png" alt="servicecenter"><p class="text">고객센터</p></a>
    </div>
    </header>
    <div id="menuname">
        <ul>
            <li>콤보 Combo</li><br>
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
    <div id="main">
        <table id="store">  
            <tr><td colspan="3"><a href="04_combo_1.html">
                    <img src="/resources/combo1.jpg" alt="" width="200px" height="200px"></td></a>
                <td colspan="3"><a href="04_combo_2.html">
                    <img src="/resources/combo2.jpg" alt="" width="200px" height="200px"></td></a>
                <td colspan="3"><a href="04_combo_3.html">
                    <img src="/resources/combo3.jpg" alt="" width="200px" height="200px"></td></a>
            </tr>
            <tr><td id="detail" colspan="2"><b>솔로콤보</b></td><td>￦4,500</td>
            <td id="detail" colspan="2"><b>커플콤보</b></td><td>￦5,500</td>
            <td id="detail" colspan="2"><b>점보콤보</b></td><td>￦6,000</td>
            </tr>
        </table>
    </div>
    <footer>footer</footer>
</body>
</html>