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
                	<thead>
                		<tr>
                			<td>제목</td>
                			<td>날짜</td>
                			<td>시간</td>
                			<td>상영관</td>
                			<td>인원</td>
                		</tr>
                	</thead>
                <c:forEach items="${ ticketing }" var="tk">
                    <tr>
                        <td>${tk.movieTitle}</td>
                        <td>${tk.ticketDate}</td>
                        <td>${tk.startTime}</td>
                        <td>${tk.theaterType}</td>
                        <td>${tk.moviePerson}</td>
                    </tr>
                    
                    </c:forEach>
                </table>
               </form>
            </div>

        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
      </div>
</body>
</html>