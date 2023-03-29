<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>Slick</title>
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css">
	<link rel="icon" href="img/movielogo.png">
    <style>
        a {
            text-decoration-line: none;

        }

        .header {
            height: 135px;
            box-sizing: border-box;
            border-bottom: 1px solid #78B9E9;
            display: grid;
            justify-content: center;
            grid-template-columns: 1fr 1fr 1fr;
        }

        .header_logo {
            display: flex;
            justify-content: left;
            align-items: start;
            font: bold 40px 'arial';
            text-align: left;
            padding-top: 14px;
            color: cornflowerblue;
            letter-spacing: 2px;
            flex-direction: column;
            position: relative;
            height: 100px;
        }

        .header_menu a:hover {
            background-color: cornflowerblue;
        }

        .header_menu a.active {
            background-color: azure;
        }


        .header_menu div {
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            ;
        }

        .header_menu ul {
            text-align: center;
            margin-top: 40px;
        }

        .header_menu ul li {
            display: inline-block;
        }

        .header_menu ul li a {
            display: block;
            font: bold 30px 'arial';
            margin: 0px 16px;
            letter-spacing: 1px;
        }

        .logo {
            width: 100px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .mypage {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr;
            place-items: center;
        }

        .mypage:last-child {
            padding-right: 50px;
        }

        .text {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #logo {
            display: grid;
            justify-content: center;
            align-items: center;
        }
    </style>
    <script>
        $(document).ready(function () {
            $('.slider').slick({
                autoplay: true,
                autoplaySpeed: 1000,
                slidesToShow: 5,
                slidesToScroll: 1,
                responsive: [
                    {
                        breakpoint: 768,
                        settings: {
                            slidesToShow: 3,
                            arrows: false,
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 1,
                            arrows: false,
                        }
                    }
                ]
            });
        });
    </script>
    <style>
        img {
            max-width: 100%;
            height: auto;
        }

        .slider {
            width: 80%;
            margin: 0px auto;
        }

        .slider .slick-slide {
            margin: 10px;
        }

        .slick-prev:before,
        .slick-next:before {
            color: #444444;
        }

        body {

            padding-left: 120px;
            padding-right: 120px;
            height: 100%;
        }

        .topBtn {
            background-color: #104E86;
            color: white;
            top: 90%;
            left: 90%;
            width: 50px;
            height: 50px;
            border-radius: 80%;
            position: fixed;
            z-index: 2;

        }

        footer {
            clear: both;
            background-color: #104E86;
            margin-top: 30px;
            padding: 10px;
            text-align: left;
            font-size: 20px;
            color: white;
        }
    </style>
</head>

<body>
    <header class="header">
        <div class="header_logo">
            <a href="momain.html">
                <div>뉴비무비</div>
            </a>
            <div>NEWBMOVIE</div>
        </div>
        <div>
            <img class="logo" src="../imgs/movielogo.png" alt="logo">
        </div>
        <div class="mypage">
            <a href="#" target='blank'><img src="../imgs/회원가입.png" alt="join">
                <p class="text">회원가입</p>
            </a>
            <a href="#" target='blank'><img src="../imgs/로그인.png" alt="login">
                <p class="text">로그인</p>
            </a>
            <a href="#" target='blank'><img src="../imgs/마이페이지.png" alt="mypage">
                <p class="text">마이페이지</p>
            </a>
            <a href="#" target='blank'><img src="../imgs/고객센터.png" alt="servicecenter">
                <p class="text">고객센터</p>
            </a>
        </div>
    </header>
    <div class="header_menu">
        <section>
            <ul class="bo">
                <li><a href="moviec.jsp">영화</a></li>
                <li><a href="">예매</a></li>
                <li><a href="">극장</a></li>
                <li><a href="">스토어</a></li>
                <li><a href="이벤트페이지.html">이벤트</a></li>
            </ul>
    </div>
    <a href="moviec.jsp">
        <h2>무비차트</h2>
    </a>
    <div class="slider">
        <div><a href="detailpage.jsp"><img src="../imgs/스즈메의 문단속.jpeg" alt=""></div></a>
        <div><a href="detailpage2.jsp"><img src="../imgs/더 퍼스트 슬램덩크.jpeg" alt=""></div></a>
        <div><a href="detailpage3.jsp"><img src="../imgs/소울메이트.jpeg" alt=""></div></a>
        <div><a href="detailpage4.jsp"><img src="../imgs/아임 히어로 더 파이널.jpeg" alt=""></div></a>
        <div><a href="detailpage5.jsp"><img src="../imgs/샤잠! 신들의 분노.jpeg" alt=""></div></a>
        <div><a href="detailpage6.jsp"><img src="../imgs/웅남이.jpeg" alt=""></div></a>
        <div><a href="detailpage7.jsp"><img src="../imgs/치킨래빗.jpeg" alt=""></div></a>
        <div><a href="detailpage8.jsp"><img src="../imgs/플레인.jpeg" alt=""></div></a>
        <div><a href="detailpage9.jsp"><img src="../imgs/귀멸의 칼날.jpeg" alt=""></div></a>
        <div><a href="detailpage10.jsp"><img src="../imgs/에브리씽.jpeg" alt=""></div></a>
    </div>
    <footer>
        <input class="topBtn" type="button" value="TOP" style="cursor:pointer;" onclick="window.scrollTo(0,0);">
        <p>&copy; 2023 NewbMovie. All rights reserved.</p>
        <p>주소 : 서울특별시 강남구 테헤란로 14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</p>
        <p>Tel : 1544-9970 / Fax : 02-562-2378</p>

    </footer>
</body>

</html>