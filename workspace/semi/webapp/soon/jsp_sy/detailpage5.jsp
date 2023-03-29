<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <title>NEWBMOVIE</title>
  <link rel="icon" href="movielogo.png">
  <script src="main.js"></script>
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- slick -->
  <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
  <link rel="stylesheet" href="../css_sy/detailpage.css">
  <script src="../syjs/detailpage.js"></script>
</head>

<body>
    <header class="header">
        <div class="header_logo">
            <a href="momain.html">
                <h1>뉴비무비</h1>
            </a>
            <p>NEWBMOVIE</p>
        </div>
        <div>
            <img class="logo" src="movielogo.png" alt="logo">
        </div>
        <div class="mypage">
            <a href="#" target='blank'>
                <img src="회원가입.png" alt="join">
                <p class="text">회원가입</p>
            </a>
            <a href="#" target='blank'>
                <img src="로그인.png" alt="login">
                <p class="text">로그인</p>
            </a>
            <a href="#" target='blank'>
                <img src="마이페이지.png" alt="mypage">
                <p class="text">마이페이지</p>
            </a>
            <a href="#" target='blank'>
                <img src="고객센터.png" alt="servicecenter">
                <p class="text">고객센터</p>
            </a>
        </div>
    </header>
    <div class="header_menu">
        <section>
            <ul>
                <li><a href="momain.html">영화</a></li>
                <li><a href="">예매</a></li>
                <li><a href="">극장</a></li>
                <li><a href="">스토어</a></li>
                <li><a href="이벤트페이지.html">이벤트</a></li>
            </ul>
    </div>
    <br>
    <br>
    <!-- 팝업 -->
    <div id="overlay"
        class="flex justify-center align-items-center w-100 h-100 fixed bg-black left-0 top-0 bg-opacity-50 visually-hidden">
        <div class="bg-white p-3">
            <div class="flex flex-column max-w-lg">
                <h2 class="text-2xl mb-3">스틸컷</h2>
                <div class="px-4">
                    <div class="single-item w-full">
                        <img src="샤잠1.jpeg" alt="예고편" />
                        <img src="샤잠2.jpeg" alt="예고편" />
                        <img src="샤잠3.jpeg" alt="예고편" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="moviejp">
        <!-- 상단 소개 -->
        <div class="flex mb-5">
            <div class="flex max-h-80">
                <img class="object-contain" src="샤잠! 신들의 분노.jpeg" alt="스즈메">
            </div>
            <div class="flex flex-column justify-between pl-3 py-3">
                <div>
                    <h2 class="text-3xl">샤잠! 신들의 분노</h2>
                </div>
                <div class="text-md">
                    <div>예매율: 7.9% 85%</div>
                    <div>감독 : 데이비드F.샌드버그 / 배우 : 제커리 리바이, 애셔앤젤</div>
                    <div>장르: 액션 /기본:12,130분,미국 </div>
                    <div>개봉: 2023.03.15</div>
                </div>
                <div>
                    <a class="bg-blue-500 hover:bg-blue-600 text-lg py-2 px-3 rounded text-gray-200 hover:text-gray-300 transition"
                        href="newbmovie.html" target='blank'>예매하기</a>
                </div>
            </div>
        </div>
        <div style="margin-left: 185px" class="mb-5">
            분노한 신들, 혼돈의 세상
            <br>
            진정한 슈퍼히어로가 깨어난다
            <br>
            신들의 힘을 갖게 된 빌리(애셔 앤젤)와 친구들은
            <br>
            각자의 방법으로 슈퍼히어로의 삶을 즐기게 된다.
            <br>
            그러던 그들 앞에 잃어버린 힘을 되찾고자
            <br>
            그리스 여신 헤스페라(헬렌 미렌)와 칼립소(루시 리우)가 나타나게 되고,
            <br>
            세상은 혼돈에 빠지게 되는데…
        </div>
        <!-- 예고편 -->
        <div class="flex mb-3 justify-content-around">
            <div class="flex flex-column">
                <h2 class="text-2xl mb-3">예고편</h2>
                <div>
                    <a href="http://h.vod.cgv.co.kr/vodCGVa/86824/86824_212299_1200_128_960_540.mp4">
                        <img src="샤잠 예고편.png" alt="예고편" />
                    </a>
                </div>
            </div>
            <div class="flex">
                <div class="flex flex-column">
                    <h2 class="text-2xl mb-3">스틸컷</h2>
                    <div>
                        <a id="open-overlay">
                            <img src="샤잠 스틸컷.jpeg" alt="스틸컷" />
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <img style="margin: auto;" src="샤잠 평점.png" alt="평점">
        </div>
        <div class="foo">
            <footer>
                <input class="topBtn" type="button" value="TOP" style="cursor:pointer;" onclick="window.scrollTo(0,0);">
                <p>&copy; 2023 NewbMovie. All rights reserved.</p>
                <p>주소 : 서울특별시 강남구 테헤란로 14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</p>
                <p>Tel : 1544-9970 / Fax : 02-562-2378</p>

            </footer>
        </div>
    </div>
</body>

</html>