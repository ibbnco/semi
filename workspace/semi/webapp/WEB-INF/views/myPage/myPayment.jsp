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
	            	<select>
	            		<option value="movie">영화</option>
	            		<option value="store">매점</option>
	            	</select>
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
            		<thead>
            			<tr>
				            <td>날짜</td>
				            <td>예매번호</td>
				            <td>영화제목</td>
				            <td>결제금액</td>
				            <td>상태</td>
            			</tr>
            		</thead>
            		<tr>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
            		</tr>
            	</table>
            </div>
         </div>
         <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
</body>
</html>