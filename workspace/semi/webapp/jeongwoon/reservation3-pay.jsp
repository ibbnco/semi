<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/jeongwoon/reservation3-pay.css" rel="stylesheet" type="text/css">
<jsp:include page="logoHeader.jsp" />

<body>
<hr class="hr1">
        <br>
        <div class="parant">
         <div class="title">결제</div>
         <div class="payment123">
         <!-- 상품 정보 영역-->

<p>영화표</p>
<p>결제 금액: 15,000원</p>

<!-- 결제 방법 영역-->
<div class="title2">결제 방법</div>
<div id="payment-method"></div>
<div id="agreement"></div>
            <div class="choice movie" img src></div>
         </div>
           <div  class="moviechoice">
            <div class="moviechoiceinside"><a href="/movie/seat">
                ←좌석선택</a></div></div>
                <div class="all-pay">총 결제금액</div> 
            <div  class="payment2">
                <div class="paymentinside"><a href="">
                    결제하기→</a></div></div>
                </div>


</body>
<br>
<br>
<jsp:include page="footer.jsp" />
</html>