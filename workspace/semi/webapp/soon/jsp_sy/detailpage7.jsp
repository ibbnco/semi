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
            <a href="index.jsp">
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
                <li><a href="index.jsp">영화</a></li>
                <li><a href="">예매</a></li>
                <li><a href="">극장</a></li>
                <li><a href="">스토어</a></li>
                <li><a href="">이벤트</a></li>
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
                        <img src="../imgs/치킨래빗1.jpg" alt="예고편" />
                        <img src="../imgs/치킨래빗2.jpg" alt="예고편" />
                        <img src="../imgs/치킨래빗3.jpg" alt="예고편" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="moviejp">
        <!-- 상단 소개 -->
        <div class="flex mb-5">
            <div class="flex max-h-80">
                <img class="object-contain" src="../imgs/치킨래빗.jpeg" alt="치킨래빗">
            </div>
            <div class="flex flex-column justify-between pl-3 py-3">
                <div>
                    <h2 class="text-3xl">치킨래빗-잃어버린 보물을 찾아서</h2>
                </div>
                <div class="text-md">
                    <div>예매율: 4.4% 98%</div>
                    <div>감독 : 벤자밋 모스켓, 벤 스타센 / 배우 : 박시윤, 김용, 정성익, 서정익, 김소희</div>
                    <div>장르: 애니메이션 /기본:ALL,92분,벨기에,프랑스 </div>
                    <div>개봉: 2023.03.18</div>
                </div>
                <div>
                    <a class="bg-blue-500 hover:bg-blue-600 text-lg py-2 px-3 rounded text-gray-200 hover:text-gray-300 transition"
                        href="momain.html" target='blank'>예매하기</a>
                </div>
            </div>
        </div>
        <div style="margin-left: 185px;" class="mb-5">
            쫑긋한 귀, 앙증맞은 꼬리, 그리고.. 갑자기 닭발…?!
            <br>
            토끼인듯 닭인듯 반반매력으로 무장한 뉴 히어로! ‘치킨래빗’의 탄생!
            <br>
            아버지 ‘피터’왕의 뒤를 이을 위대한 모험왕을 꿈꾸며 자란 ‘치킨래빗’은
            <br>
            온 국민이 지켜보는 왕립 모험가 협회 테스트에서 형편없는 실력으로 웃음거리가 되고 만다.
            <br>
            명예 회복을 위해 아버지가 눈 앞에서 놓쳤던 전설 속 보물 ‘어둠의 햄스터’를 찾고 싶은
            <br>
            ‘치킨 래빗’은 만능집사 거북이 ‘에이브’, 액션마스터 스컹크 ‘메그’와 함께 모험에 나선다.
            <br>
            그러나 보물을 찾아 왕좌를 빼앗기 위해 탈옥한 삼촌 ‘라팡’의 공격과
            <br>
            빌런들의 끝없는 방해로 닥친 위기의 순간,
            <br>
            ‘치킨래빗’에게 숨겨져 있던 특별한 힘이 깨어나게 되는데…
            <br>
            과연 ‘치킨래빗’은 ‘어둠의 햄스터’를 찾아 왕국을 지킬 수 있을까?
        </div>
        <!-- 예고편 -->
        <div class="flex mb-3 justify-content-around">
            <div class="flex flex-column">
                <h2 class="text-2xl mb-3">예고편</h2>
                <div>
                    <a href="http://h.vod.cgv.co.kr/vodCGVa/86843/86843_213049_1200_128_960_540.mp4">
                        <img src="../imgs/치킨래빗 예고편.png" alt="예고편" />
                    </a>
                </div>
            </div>
            <div class="flex">
                <div class="flex flex-column">
                    <h2 class="text-2xl mb-3">스틸컷</h2>
                    <div>
                        <a id="open-overlay">
                            <img src="../imgs/치킨래빗 스틸컷.jpg" alt="스틸컷" />
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <img style="margin: auto;" src="../imgs/치킨래빗 평점.png" alt="평점">
        </div>
</body>

</html>