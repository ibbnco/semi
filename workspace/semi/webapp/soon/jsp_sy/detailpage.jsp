<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
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
            <img src="../imgs/스즈메1.jpg" alt="예고편" />
            <img src="../imgs/스즈메2.png" alt="예고편" />
            <img src="../imgs/스즈메3.png" alt="예고편" />
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="moviejp">
    <!-- 상단 소개 -->
    <div class="flex mb-5">
      <div class="flex max-h-80">
        <img class="object-contain" src="../imgs/스즈메의 문단속.jpeg" alt="스즈메">
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
            <img src="../imgs/스즈메 예고편.png" alt="예고편" />
          </a>
        </div>
      </div>
      <div class="flex">
        <div class="flex flex-column">
          <h2 class="text-2xl mb-3">스틸컷</h2>
          <div>
            <a id="open-overlay">
              <img src="../imgs/스즈메 스틸컷.png" alt="예고편" />
            </a>
          </div>
        </div>
      </div>
    </div>
    <div>
      <img style="margin: auto;" src="../imgs/스즈메 평점1.png" alt="평점">
    </div>
  <div class="container">
      <div class="row">
         <form method="post" action="writeAction.jsp">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
               <thead>
                  <tr>
                     <th colspan="2" style="background-color: #eeeeee; text-align: center;">리뷰</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
                  </tr>
                  <tr>
                     <td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
                  </tr>
               </tbody>
            </table>

            <input type="submit" class="btn btn-primary pull-right" value="글쓰기">
         </form>
      </div>
   </div>
  </div>
</body>

</html>