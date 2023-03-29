<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myMenuBar</title>
<style >
.menuBar{
   background-color: #CAD7E4;
   width: 200px;
   height: 600px;
   margin: 20px 20px 20px 20px;
   float: left;
   display: flex;
   justify-content: center;

}
.menuBar>ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 20px;
    margin-block-end: 30px;
    line-height: 70px;
    padding-inline-start: 10px;
    font-size: 20px;
    font-weight: bold;
}
.menuBar :link {color: #104E86; text-decoration: none;}
.menuBar:visited {color: #104E86; text-decoration: none;}
.menuBar:hover {color:cornflowerblue ; text-decoration: none;}
	
</style>

</head>
<body>
	
	<div class="menuBar">
                <ul>
                    <a href="/myPage/ticketing?page=1">나의 예매 내역</a><br>
                    <a href="/myPage/dibs?page=1">찜한 영화</a><br>
                    <a href="/myPage/review?page=1">내가 쓴 리뷰</a><br>
                    <a href="/myPage/point?page=1">포인트 내역</a><br>
                    <a href="/myPage/payment?page=1">결제내역</a><br>
                    <a href="/member/info">회원정보 확인</a><br>
                    <a href="/member/quit">회원탈퇴</a><br>
                    <a href="/myPage/qnaList?page=1">1:1 문의</a><br>
                </ul>
            </div>
</body>
</html>