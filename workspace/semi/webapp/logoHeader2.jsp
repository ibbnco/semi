<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<c:if test="${alertMsg != null }">
	<script>
		alert('${alertMsg}');
	</script>
</c:if>
<c:remove var="alertMsg"/>

<title>NEWBMOVIE</title>
<link rel="stylesheet" href="/logoHeader2.css">

    <header class="header">
        <div>
            <a href="메인 페이지 주소값"><img class="logo" src="/images/movielogo.png" alt="logo" ></a>
        </div>
        <div></div>
        <div class="mypage">
        	<c:if test="${loginMember == null }">
        	<a href="/member/join" ><img src="/images/회원가입.png"  alt="join"> <p class="text">회원가입</p></a>
            <a href="/member/login" ><img src="/images/로그인.png" alt="login"> <p class="text">로그인</p></a>
            <a href="${alertMsg}" ><img src="/images/마이페이지.png" alt="mypage"><p class="text">마이페이지</p></a>
            <a href="${alertMsg}" ><img src="/images/고객센터.png" alt="servicecenter"><p class="text">고객센터</p></a>
        	</c:if>
        	
        	<c:if test="${loginMember != null }">
        		 <a href="/member/logout"><img src="/images/로그인.png" alt="logout"> <p class="text">로그아웃</p></a>
        		 <a href="마이페이지" ><img src="/images/마이페이지.png" alt="mypage"><p class="text">마이페이지</p></a>
            	 <a href="고객센터 페이지" ><img src="/images/고객센터.png" alt="servicecenter"><p class="text">고객센터</p></a>
        	
        	</c:if>
        
        </div>
        </header>
            <div class="header_menu">
                <ul>
                    <li ><a href="영화 페이지">영화</a></li>
                    <li ><a href="영화예매 페이지">예매</a></li>
                    <li ><a href="극장소개 페이지">극장</a></li>
                    <li ><a href="매점 페이지">스토어</a></li>
                    <li ><a href="이벤트 페이지">이벤트</a></li>
                </ul>
            </div>
        
	
