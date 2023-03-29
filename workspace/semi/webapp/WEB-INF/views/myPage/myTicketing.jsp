<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 예매 내역</title>
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<%@ include file="/WEB-INF/views/common/profile.jsp" %>
		
        <div class="content">
			<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
            
            <div class="inner_content" >
                <div class="inner_title">나의 예매 내역</div>
                <form action="/myPage/ticketing" method="post">
                <table>
                    <tr>
                        <td rowspan="4">포스터</td>
                        <td>영화이름</td>
                    </tr>
                    <tr>
                        <td>상영날짜,시간</td>
                    </tr>
                    <tr>
                        <td>상영관,인원</td>
                    </tr>
                    <tr>
                        <td><a href="/myPage/reviewWrite">리뷰쓰기</a></td>
                    </tr>
                </table>
               </form>
            </div>

        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
      </div>
</body>
</html>