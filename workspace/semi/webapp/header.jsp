<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
a{
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

.header_menu a:hover{
    background-color: cornflowerblue;
}
.header_menu a.active{
    background-color: azure;
}


.header_menu div{
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;;
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
</head>
<body>
        <header class="header">
            <div class="header_logo">
                <a href="newbmovie.html">
                    <div>뉴비무비</div>
                </a>
                <div>NEWBMOVIE</div>
        </div>
        <div>
            <img class="logo" src="movielogo.png" alt="logo">
        </div>
        <div class="mypage">
            <a href="#" target='blank'><img src="회원가입.png"  alt="join"> <p class="text">회원가입</p></a>
            <a href="#" target='blank'><img src="로그인.png" alt="login"> <p class="text">로그인</p></a>
            <a href="#" target='blank'><img src="마이페이지.png" alt="mypage"><p class="text">마이페이지</p></a>
            <a href="#" target='blank'><img src="고객센터.png" alt="servicecenter"><p class="text">고객센터</p></a>
        </div>
        </header>
                <div class="header_menu">
                    <section>
                    <ul class="bo">
                        <li><a href="newbmovie.html">영화</a></li>
                        <li><a href="">예매</a></li>
                        <li><a href="">극장</a></li>
                        <li><a href="">스토어</a></li>
                        <li><a href="이벤트페이지.html">이벤트</a></li>
                    </ul>
                </div>
</body>
</html>