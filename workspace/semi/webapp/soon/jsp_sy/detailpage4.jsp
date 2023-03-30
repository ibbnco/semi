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
            <a href="momain.jsp">
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
                <li><a href="momain.jsp">영화</a></li>
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
                        <img src="../imgs/아임히어로1.jpg" alt="예고편" />
                        <img src="../imgs/아임히어로2.jpg" alt="예고편" />
                        <img src="../imgs/아임히어로3.jpg" alt="예고편" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="moviejp">
        <!-- 상단 소개 -->
        <div class="flex mb-5">
            <div class="flex max-h-80">
                <img class="object-contain" src="../imgs/아임 히어로 더 파이널.jpeg" alt="히어로">
            </div>
            <div class="flex flex-column justify-between pl-3 py-3">
                <div>
                    <h2 class="text-3xl">아임 히어로 더 파이널</h2>
                </div>
                <div class="text-md">
                    <div>예매율: 7.7% 98%</div>
                    <div>감독 : 오윤동 / 배우 : 정현철, 임영웅</div>
                    <div>장르: 다큐멘터리 /기본:ALL,102분,한국 </div>
                    <div>개봉: 2023.03.01</div>
                </div>
                <div>
                    <a class="bg-blue-500 hover:bg-blue-600 text-lg py-2 px-3 rounded text-gray-200 hover:text-gray-300 transition"
                        href="newbmovie.html" target='blank'>예매하기</a>
                </div>
            </div>
        </div>
        <div style="margin-left: 185px;" class="mb-5">
            2022년 겨울 고척스카이돔을 뜨겁게 달궜던 ‘아임 히어로(IM HERO)’ 임영웅의 앵콜 콘서트,
            <br>
            그 대단원의 감동을 재현할 아임 히어로 더 파이널이 스크린X로 2023년 관객들을 찾아온다.
            <br>
            “제가 마치 트루먼쇼의 주인공이 된 것 같아요”
            <br>
            자신이 영화 ‘트루먼 쇼’의 주인공이 된 것 같다고 말하지만,
            <br>
            그러면서도 팬덤 ‘영웅시대’를 위해 매 순간 혼신의 힘을 다하는 ‘현실 임영웅’의 모습과
            <br>
            진심 어린 인터뷰, 영화에서만 만나볼 수 있는 전국 투어 비하인드 스토리까지.
            <br>
            14대 시네마틱 카메라로 촬영해 오직 극장에서만 볼 수 있는 앵글로
            <br>
            특별한 관람 경험을 선사할 임영웅의 아임 히어로 더 파이널
        </div>
        <!-- 예고편 -->
        <div class="flex mb-3 justify-content-around">
            <div class="flex flex-column">
                <h2 class="text-2xl mb-3">예고편</h2>
                <div>
                    <a href="https://youtu.be/_TfvN0l_GN0">
                        <img src="../imgs/아임히어로예고편.png" alt="예고편" />
                    </a>
                </div>
            </div>
            <div class="flex">
                <div class="flex flex-column">
                    <h2 class="text-2xl mb-3">스틸컷</h2>
                    <div>
                        <a id="open-overlay">
                            <img src="../imgs/아임히어로 스틸컷.jpg" alt="스틸컷" />
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <img style="margin: auto;" src="../imgs/히어로 평점.png" alt="평점">
        </div>
  <div class="container">
      <div class="row">
         <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
            <thead>
               <tr>
                  <th style="background-color: #eeeeee; text-align: center;">번호</th>
                  <th style="background-color: #eeeeee; text-align: center;">제목</th>
                  <th style="background-color: #eeeeee; text-align: center;">작성자</th>
                  <th style="background-color: #eeeeee; text-align: center;">작성일</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>1</td>
                  <td>안녕하세요</td>
                  <td>홍길동</td>
                  <td>2023-03-29</td>
               </tr>
            </tbody>
         </table>
         <a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
      </div>
   </div>
  </div>
        </div>
    </div>
</body>

</html>