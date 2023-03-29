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
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
    <script src="/syjs/mamain.js"></script>
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
        @import url(https://fonts.googleapis.com/css?family=Open+Sans);




.thumb {
    width: 1320px;
    height: 300px;
    margin: 70px auto;
    perspective: 1000px;
}

.thumb a {
    display: block;
    width: 100%;
    height: 100%;
    background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), 
	url(newbb.png);
    background-size: 0, cover;
    transform-style: preserve-3d;
    transition: all 3.0s;
}

.thumb:hover a {
    transform: rotateX(80deg);
    transform-origin: bottom;
}
.thumb a:after {
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 36px;
    background: inherit;
    background-size: cover, cover;
    background-position: bottom;
    transform: rotateX(90deg);
    transform-origin: bottom;
}
.thumb a span {
    color: white;
    text-transform: uppercase;
    position: absolute;
    top: 100%;
    left: 0;
    width: 100%;
    font: bold 12px/36px "Open Sans";
    text-align: center;
    transform: rotateX(-89.99deg);
    transform-origin: top;
    z-index: 1;
}
.thumb a:before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    box-shadow: 0 0 100px 50px rgba(0, 0, 0, 0.5);
    transition: all 0.5s;
    opacity: 0.15;
    transform: rotateX(95deg) translateZ(-80px) scale(0.75);
    transform-origin: bottom;
}

.thumb:hover a:before {
    opacity: 1;
    box-shadow: 0 0 25px 25px rgba(0, 0, 0, 0.5);
    transform: rotateX(0) translateZ(-60px) scale(0.85);
}


    </style>
</head>

<body>
    <header class="header">
        <div class="header_logo">
            <a href="momain.jsp">
                <div>뉴비무비</div>
            </a>
            <div>NEWBMOVIE</div>
        </div>
        <div>
            <img class="logo" src="../imgs/movielogo.png" alt="logo">
        </div>
        <div class="mypage">
            <a href="#" target='blank'><img src="회원가입.png" alt="join">
                <p class="text">회원가입</p>
            </a>
            <a href="#" target='blank'><img src="로그인.png" alt="login">
                <p class="text">로그인</p>
            </a>
            <a href="#" target='blank'><img src="마이페이지.png" alt="mypage">
                <p class="text">마이페이지</p>
            </a>
            <a href="#" target='blank'><img src="고객센터.png" alt="servicecenter">
                <p class="text">고객센터</p>
            </a>
        </div>
    </header>
    <div class="header_menu">
        <section>
            <ul class="bo">
                <li><a href="movie.jsp">영화</a></li>
                <li><a href="">예매</a></li>
                <li><a href="">극장</a></li>
                <li><a href="">스토어</a></li>
                <li><a href="이벤트페이지.jsp">이벤트</a></li>
            </ul>
    </div>
    <div class="thumb">
        <a href="#">
              <span>NEWBMOVIE</span>
        </a>
  </div>
    <a href="movie.jsp">
        <h2>무비차트</h2>
    </a>
    <div class="slider">
        <div style="text-align: center;"><a href="detail page.jsp"><img src="../imgs/스즈메의 문단속.jpeg" alt="">스즈메의 문단속</div></a>
        <div style="text-align: center;"><a href="detail page2.jsp"><img src="더 퍼스트 슬램덩크.jpeg" alt="">더 퍼스트 슬램덩크</div></a>
        <div style="text-align: center;"><a href="detail page3.jsp"><img src="소울메이트.jpeg" alt="">소울메이트</div></a>
        <div style="text-align: center;"><a href="detail page4.jsp"><img src="아임 히어로 더 파이널.jpeg" alt="">아임 히어로 더 파이널</div></a>
        <div style="text-align: center;"><a href="detail page5.jsp"><img src="샤잠! 신들의 분노.jpeg" alt="">샤잠! 신들의 분노</div></a>
        <div style="text-align: center;"><a href="detail page6.jsp"><img src="웅남이.jpeg" alt="">웅남이</div></a>
        <div style="text-align: center;"><a href="detail page7.jsp"><img src="치킨래빗.jpeg" alt="">치킨래빗</div></a>
        <div style="text-align: center;"><a href="detail page8.jsp"><img src="플레인.jpeg" alt="">플레인</div></a>
        <div style="text-align: center;"><a href="detail page9.jsp"><img src="귀멸의 칼날.jpeg" alt="">귀멸의칼날</div></a>
        <div style="text-align: center;"><a href="detail page10.jsp"><img src="에브리씽.jpeg" alt="">에브리씽</div></a>
    </div>
    <h2 style="color: #78B9E9;">개봉예정작</h2>
    <div  style="color: #104E86;" class="slider">
        <div style="text-align: center;"><img src="존 윅4.jpeg" alt="">존 윅 4</div>
        <div style="text-align: center;"><img src="에어.jpeg" alt="">에어</div></a>
        <div style="text-align: center;"><img src="거울속외딴성.jpeg" alt="">거울속의외딴성</div></a>
        <div style="text-align: center;"><img src="인어공주.jpeg" alt="">인어공주</div></a>
        <div style="text-align: center;"><img src="클로즈.jpeg" alt="">클로즈</div></a>
        <div style="text-align: center;"><img src="곰돌이푸.jpeg" alt="">곰돌이푸</div></a>
        <div style="text-align: center;"><img src="옥수역귀신.jpeg" alt="">옥수역귀신</div></a>
        <div style="text-align: center;"><img src="드림.jpeg" alt="">드림</div></a>
        <div style="text-align: center;"><img src="리바운드.jpeg" alt="">리바운드</div></a>
        <div style="text-align: center;"><img src="패왕별희.jpeg" alt="">패왕별회</div></a>
    </div>
    <h2 style="color: #78B9E9;">이벤트</h2>
    <div style="color: #104E86;" class="ff">
        <div style="text-align: center;"><img src="개봉작이벤트.jpeg" alt="">개봉작 설명서</div></a>
        <div style="text-align: center;"><img src="예매오픈이벤트.jpeg" alt="">예매 오픈 알림 서비스</div></a>
        <div style="text-align: center;"><img src="슬램덩크이벤트2.jpeg" alt="">유니폼 키링 재판매</div></a>
        <div style="text-align: center;"><img src="만우절이벤트.jpeg" alt="">만우절 이벤트</div></a>
        <div style="text-align: center;"><img src="슬램덩크이벤트.jpeg" alt="">슬램덩크 응원 상영회</div></a>
        <div style="text-align: center;"><img src="스즈메이벤트.jpeg" alt="">4DX 특별포스터</div></a>
    </div>
    <footer>
        <input class = "topBtn" type="button" value="TOP" style="cursor:pointer;" onclick="window.scrollTo(0,0);">
        <p>&copy; 2023 NewbMovie. All rights reserved.</p>
        <p>주소 : 서울특별시 강남구 테헤란로 14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</p>
        <p>Tel : 1544-9970 / Fax : 02-562-2378</p>
        </footer>
    <div>

    </div>

</body>

</html>