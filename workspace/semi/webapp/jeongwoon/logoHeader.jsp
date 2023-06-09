<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<c:if test="${alertMsg != null }">
	<script>
		alert('${alertMsg}');
	</script>
</c:if>
<c:remove var="alertMsg"/>

<title>logoHeader</title>

<link rel="stylesheet" href="logoHeader.css">

	
    <header class="header">
        <div>
            <a href="index.jsp"><img class="logo" src="img/뉴비무비.png" alt="logo" ></a>
        </div>
        <div></div>
        <div class="mypage">
        	<c:if test="${loginMember == null }">
        	<a href="/member/join" ><img src="img/회원가입.png"  alt="join"> <p class="text">회원가입</p></a>
            <a href="/member/login" ><img src="img/로그인.png" alt="login"> <p class="text">로그인</p></a>
            <a href="/member/login" onclick="login();"><img src="img/마이페이지.png" alt="mypage"><p class="text">마이페이지</p></a>
            <a href="/member/login" onclick="login();"><img src="img/고객센터.png" alt="servicecenter"><p class="text">고객센터</p></a>
        	</c:if>
        	
        	<c:if test="${loginMember != null }">
        		${loginMember.memberNick}님 환영합니다.
        		 <a href="/member/logout"><img src="img/로그인.png" alt="logout"> <p class="text">로그아웃</p></a>
        		 <a href="/myPage/ticketing" ><img src="img/마이페이지.png" alt="mypage"><p class="text">마이페이지</p></a>
            	 <a href="고객센터 페이지" ><img src="img/고객센터.png" alt="servicecenter"><p class="text">고객센터</p></a>
        	
        	</c:if>
        
        </div>
        </header>
            <div class="header_menu">
                <ul>
                  <li><a href="/soon/jsp_sy/moviec.jsp">영화</a></li>
                <li><a href="/jeongwoon/reservation1-movie.jsp">예매</a></li>
                <li><a href="/jeongwoon/theater.jsp">극장</a></li>
                <li><a href="/store/main">스토어</a></li>
                <li><a href="">이벤트</a></li>
                </ul>
            </div>
        
        <script>
			function login() {
				alert("로그인 후 사용가능 합니다.");
			}
		</script>
	
