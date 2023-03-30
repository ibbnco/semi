<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜한 영화</title>
</head>
<body>

	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<%@ include file="/WEB-INF/views/common/profile.jsp" %>
		
        <div class="content">
			<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
            
            <div class="inner_content">
            	<div class="inner_title">찜한 영화</div>
            	<form action="/myPage/dibs" method="post">
                <table>
                <c:forEach items="${dibsMovie}" var="dibs">
                    <tr>
                        <td rowspan="2">${dibs.movieImg}</td>
                        <td>${dibs.movieTitle}</td>
                        <td><button type="button" onclick="del();">삭제하기</button></td>
                    </tr>
                    <tr>
                        <td>개봉일 : ${dibs.openningDate}</td>
                        <td><button type="button" onclick="location.href='예매하기'">예매하기</button></td>
                    </tr>
                    </c:forEach>
                </table>
                </form>
            </div>
            <%@ include file="/WEB-INF/views/common/footer.jsp" %>
           </div>
      </div>
</body>
</html>