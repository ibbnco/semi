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
                        <img src="소울메이트1.jpg" alt="예고편" />
                        <img src="소울메이트2.jpg" alt="예고편" />
                        <img src="소울메이트3.jpg" alt="예고편" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="moviejp">
        <!-- 상단 소개 -->
        <div class="flex mb-5">
            <div class="flex max-h-80">
                <img class="object-contain" src="소울메이트.jpeg" alt="소울메이트">
            </div>
            <div class="flex flex-column justify-between pl-3 py-3">
                <div>
                    <h2 class="text-3xl">소울메이트</h2>
                </div>
                <div class="text-md">
                    <div>예매율: 10.3% 95%</div>
                    <div>감독 : 민용근 / 배우 : 김다미, 전소니, 변우석</div>
                    <div>장르: 드라마 /기본:12,124분,한국 </div>
                    <div>개봉: 2023.03.15</div>
                </div>
                <div>
                    <a class="bg-blue-500 hover:bg-blue-600 text-lg py-2 px-3 rounded text-gray-200 hover:text-gray-300 transition"
                        href="newbmovie.html" target='blank'>예매하기</a>
                </div>
            </div>
        </div>
        <div style="margin-left: 185px;" class="mb-5">
            “날도 더웠고 수업도 지루했고.. 그렇게 졸리고 나른하던 날에 너를 처음 만났어”
            <br>
            1998년, 처음 만났다
            <br>
            “누굴 좋아하면 용기내야 된대”
            <br>
            2004년, 첫사랑이 생겼다
            <br>
            “몰랐어? 나 원래 이렇게 살아”
            <br>
            2010년, 각자 어른이 되어간다
            <br>
            “가장 그리운 건…너였어”
            <br>
            2014년, 흔적을 따라간다
            <br>
            “이젠 니 얼굴을 그리고 싶어. 사랑없인 그릴 수조차 없는 그림 말이야”
            <br>
            지금, 그리움을 그리다
        </div>
        <!-- 예고편 -->
        <div class="flex mb-3 justify-content-around">
            <div class="flex flex-column">
                <h2 class="text-2xl mb-3">예고편</h2>
                <div>
                    <a href="http://h.vod.cgv.co.kr/vodCGVa/86884/86884_212707_1200_128_960_540.mp4">
                        <img src="소울메이트 예고편.png" alt="예고편" />
                    </a>
                </div>
            </div>
            <div class="flex">
                <div class="flex flex-column">
                    <h2 class="text-2xl mb-3">스틸컷</h2>
                    <div>
                        <a id="open-overlay">
                            <img src="소울메이트 스틸컷.jpg" alt="스틸컷" />
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <img style="margin: auto;" src="소울메이트 평점.png" alt="평점">
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