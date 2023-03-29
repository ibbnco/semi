<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.css"
    integrity="sha512-c0+vSv9tnGS4fzwTIBFPcdCZ0QwP+aTePvZeAJkYpbj67KvQ5+VrJjDh3lil48LILJxhICQf66dQ8t/BJyOo/g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
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
  <style>
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

    body {
      padding-left: 120px;
      padding-right: 120px;
      height: 100%;
    }

    #mainimg {
      max-width: 40%;
      max-height: 40%;
      border-radius: 10%;
    }

    .slick-prev:before,
    .slick-next:before {
      color: #444444;
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
      <a href="momain.jsp">
        <h1>뉴비무비</h1>
      </a>
      <p>NEWBMOVIE</p>
    </div>
    <div>
      <img class="logo" src="../imgs/movielogo.png" alt="logo">
    </div>
    <div class="mypage">
      <a href="#" target='blank'>
        <img src="../imgs/회원가입.png" alt="join">
        <p class="text">회원가입</p>
      </a>
      <a href="#" target='blank'>
        <img src="../imgs/로그인.png" alt="login">
        <p class="text">로그인</p>
      </a>
      <a href="#" target='blank'>
        <img src="../imgs/마이페이지.png" alt="mypage">
        <p class="text">마이페이지</p>
      </a>
      <a href="#" target='blank'>
        <img src="../imgs/고객센터.png" alt="servicecenter">
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
            <img src="스즈메1.jpg" alt="예고편" />
            <img src="스즈메2.png" alt="예고편" />
            <img src="스즈메3.png" alt="예고편" />
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="moviejp">
    <!-- 상단 소개 -->
    <div class="flex mb-5">
      <div class="flex max-h-80">
        <img class="object-contain" src="스즈메의 문단속.jpeg" alt="스즈메">
      </div>
      <div class="flex flex-column justify-between pl-3 py-3">
        <div>
          <h2 class="text-3xl">스즈메의 문단속</h2>
        </div>
        <div class="text-md">
          <div>예매율: 29.5% 94%</div>
          <div>정보: 감독 : 신카이 마코토 / 배우 : 하라 나노카 , 마츠무라 호쿠토 , 후카츠 에리 , 마츠모토 코시로 , 소메타니 쇼타 , 이토 사이리 , 하나세 코토네 , 하나자와 카나 ,
            카미키 류노스케 </div>
          <div>장르: 애니메이션 /기본:12,122분,일본 </div>
          <div>개봉: 2023.03.08</div>
        </div>
        <div>
          <a class="bg-blue-500 hover:bg-blue-600 text-lg py-2 px-3 rounded text-gray-200 hover:text-gray-300 transition"
            href="newbmovie.html" target='blank'>예매하기</a>
        </div>
      </div>
    </div>
    <div style="margin-left: 185px;" class="mb-5">
      “이 근처에 폐허 없니? 문을 찾고 있어”
      <br>
      규슈의 한적한 마을에 살고 있는 소녀 ‘스즈메’는
      <br>
      문을 찾아 여행 중인 청년 ‘소타’를 만난다.
      <br>
      그의 뒤를 쫓아 산속 폐허에서 발견한 낡은 문.
      <br>
      ‘스즈메’가 무언가에 이끌리듯 문을 열자 마을에 재난의 위기가 닥쳐오고
      <br>
      가문 대대로 문 너머의 재난을 봉인하는 ‘소타’를 도와 간신히 문을 닫는다.
      <br>
      “닫아야만 하잖아요, 여기를!”
      <br>
      재난을 막았다는 안도감도 잠시,
      <br>
      수수께끼의 고양이 ‘다이진’이 나타나 ‘소타’를 의자로 바꿔 버리고
      <br>
      일본 각지의 폐허에 재난을 부르는 문이 열리기 시작하자
      <br>
      ‘스즈메’는 의자가 된 ‘소타’와 함께 재난을 막기 위한 여정에 나선다.
      <br>
      “꿈이 아니었어”
      <br>
      규슈, 시코쿠, 고베, 도쿄
      <br>
      재난을 막기 위해 일본 전역을 돌며 필사적으로 문을 닫아가던 중
      <br>
      어릴 적 고향에 닿은 ‘스즈메’는 잊고 있던 진실과 마주하게 되는데…
    </div>
    <!-- 예고편 -->
    <div class="flex mb-3 justify-content-around">
      <div class="flex flex-column">
        <h2 class="text-2xl mb-3">예고편</h2>
        <div>
          <a href="http://h.vod.cgv.co.kr/vodCGVa/86815/86815_212072_1200_128_960_540.mp4">
            <img src="스즈메 예고편.png" alt="예고편" />
          </a>
        </div>
      </div>
      <div class="flex">
        <div class="flex flex-column">
          <h2 class="text-2xl mb-3">스틸컷</h2>
          <div>
            <a id="open-overlay">
              <img src="스즈메 스틸컷.png" alt="예고편" />
            </a>
          </div>
        </div>
      </div>
    </div>
    <div>
      <img style="margin: auto;" src="스즈메 평점.png" alt="평점">
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
  <script>
    $(document).ready(function () {
      // 팝업 띄우기
      $('#open-overlay').click(function (e) {
        $('#overlay').removeClass('visually-hidden');
      });
      // 팝업 삭제
      $('#overlay').click(function (e) {
        if (e.target === e.currentTarget) {
          $(this).addClass('visually-hidden');
        }
      });
      $('.single-item').slick();
    });
  </script>
</body>

</html>