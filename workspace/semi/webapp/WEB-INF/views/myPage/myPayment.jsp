<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 결제 내역</title>
</head>
<body>
	
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<%@ include file="/WEB-INF/views/common/profile.jsp" %>
		
        <div class="content">
			<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
            
            <div class="inner_content" >
            	<div class="inner_title">나의 결제 내역</div>
	            	<form action="/myPage/payment" method="post">
            	<table>
            		<thead>
            			<tr>
				            <td>날짜</td>
				            <td>주문번호</td>
				            <td>제품명</td>
				            <td>결제금액</td>
				            <td>상태</td>
            			</tr>
            		</thead>
            		<tbody>
            		<c:forEach items="${payList}" var="pa">
            		<tr>
			            <td>${pa.date}</td>
			            <td>${pa.sOrderNo}</td>
			            <td>${pa.productName}</td>
			            <td>${pa.total}</td>
			            <td>${pa.status}</td>
            		</tr>
            		</c:forEach>
            		</tbody>
            	</table>
            	</form>
            </div>
         </div>
         <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
</body>
</html>