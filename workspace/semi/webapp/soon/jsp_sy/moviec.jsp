<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.css" integrity="sha512-c0+vSv9tnGS4fzwTIBFPcdCZ0QwP+aTePvZeAJkYpbj67KvQ5+VrJjDh3lil48LILJxhICQf66dQ8t/BJyOo/g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <title>NEWBMOVIE</title>
    <link rel="icon" href="movielogo.png">
    <link rel="stylesheet" href="../css_sy/newbmovie.css">
    <link rel="stylesheet" href="../css_sy/main.css">
    <script src="main.js"></script>
</head>
<style>
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
<header class="header">
    <div class="header_logo">
        <a href="momain.jsp">
            <h1>뉴비무비</h1>
        </a>
        <p>NEWBMOVIE</p>
</div>
<div>
    <img class="logo" src="../imgs/movielogo.png" alt="logo">
</div>
<div class="mypage">
    <a href="#" target='blank'><img src="../imgs/회원가입.png"  alt="join"> <p class="text">회원가입</p></a>
    <a href="#" target='blank'><img src="../imgs/로그인.png" alt="login"> <p class="text">로그인</p></a>
    <a href="#" target='blank'><img src="../imgs/마이페이지.png" alt="mypage"><p class="text">마이페이지</p></a>
    <a href="#" target='blank'><img src="../imgs/고객센터.png" alt="servicecenter"><p class="text">고객센터</p></a>
</div>
</header>
<div class="header_menu">
    <section>
    <ul>
        <li><a href="momain.jsp">영화</a></li>
        <li><a href="">예매</a></li>
        <li><a href="">극장</a></li>
        <li><a href="">스토어</a></li>
        <li><a href="이벤트페이지.html">이벤트</a></li>
    </ul>
</div>
<body>
    <h2>무비차트</h2>
    <div class="moviejp">
        
        <div id="jpeg"><img src="../imgs/스즈메의 문단속.jpeg"  alt="스즈메"> <p class="text">스즈메의 문단속</p>
            <div>
                <div>평점 : 94% </div>
                <div>예매율 29.5%</div>
                <div>2023.03.08개봉</div>
                <a href="detailpage.jsp" ><button>상세보기</button></a>
            </div>
        </div>
        <div id="jpeg"><img src="../imgs/더 퍼스트 슬램덩크.jpeg"  alt="슬팸덩크"> <p class="text">더 퍼스트 슬램덩크</p>
            <div>
                <div>평점 : 97% </div>
                <div>예매율 15.2%</div>
                <div>2023.01.04개봉</div>
                <a href="detailpage2.jsp"><button>상세보기</button></a>
            </div>
        </div>
        <div id="jpeg"><img src="../imgs/소울메이트.jpeg"  alt="소울메이트"> <p class="text">소울메이트</p>
            <div>
                <div>평점 : 95% </div>
                <div>예매율 10.3%</div>
                <div>2023.03.15개봉</div>
                <a href="detailpage3.jsp" ><button>상세보기</button></a>
            </div>
        </div>
        <div id="jpeg"><img src="../imgs/아임 히어로 더 파이널.jpeg"  alt="히어로"> <p class="text">아임 히어로 더 파이널</p>
            <div>
                <div>평점 : 98% </div>
                <div>예매율 7.7%</div>
                <div>2023.03.01개봉</div>
                <a href="detailpage4.jsp" ><button>상세보기</button></a>
            </div>
        </div>
        <div id="jpeg"><img src="../imgs/샤잠! 신들의 분노.jpeg"  alt="샤잠"> <p class="text">샤잠! 신들의 분노</p>
            <div>
                <div>평점 : 85% </div>
                <div>예매율 7.9%</div>
                <div>2023.03.15개봉</div>
                <a href="detailpage5.jsp" ><button>상세보기</button></a>
            </div>
        </div>
        <div id="jpeg"><img src="../imgs/웅남이.jpeg"  alt="웅남이"> <p class="text">웅남이</p>
            <div>
                <div>평점 : 96% </div>
                <div>예매율 7.7%</div>
                <div>2023.03.08개봉</div>
                <a href="detailpage6.jsp" ><button>상세보기</button></a>
            </div>
        </div>
        <div id="jpeg"><img src="../imgs/치킨래빗.jpeg"  alt="치킨래빗"> <p class="text">치킨래빗</p>
            <div>
                <div>평점 : 98% </div>
                <div>예매율 4.4%</div>
                <div>2023.03.18개봉</div>
                <a href="detailpage7.jsp" ><button>상세보기</button></a>
            </div>
        </div>
        <div id="jpeg"><img src="../imgs/플레인.jpeg"  alt="플레인"> <p class="text">플레인</p>
            <div>
                <div>평점 : 95% </div>
                <div>예매율 3.8%</div>
                <div>2023.03.15개봉</div>
                <a href="detailpage8.jsp" ><button>상세보기</button></a>
            </div>
        </div>
        <div id="jpeg"><img src="../imgs/귀멸의 칼날.jpeg"  alt="귀멸의칼날"> <p class="text">귀멸의 칼날</p>
            <div>
                <div>평점 : 81 %</div>
                <div>예매율 3.3%</div>
                <div>2023.03.02개봉</div>
                <a href="detailpage9.jsp" ><button>상세보기</button></a>
            </div>
        </div>
        <div id="jpeg"><img src="../imgs/에브리씽.jpeg"  alt="에브리씽"> <p class="text">에브리씽</p>
            <div>
                <div>평점 : 92% </div>
                <div>예매율 2.2%</div>
                <div>2023.03.01개봉</div>
                <a href="detailpage10.jsp" ><button>상세보기</button></a>
            </div>
        </div>
        </div>
        <footer>
            <input class = "topBtn" type="button" value="TOP" style="cursor:pointer;" onclick="window.scrollTo(0,0);">
            <p>&copy; 2023 NewbMovie. All rights reserved.</p>
            <p>주소 : 서울특별시 강남구 테헤란로 14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</p>
            <p>Tel : 1544-9970 / Fax : 02-562-2378</p>
            
            </footer>
        </div>
        
</body>
</html>