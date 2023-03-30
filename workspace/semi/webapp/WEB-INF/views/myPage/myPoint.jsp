<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 내역</title>
</head>
<body>

	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<%@ include file="/WEB-INF/views/common/profile.jsp" %>
		
        <div class="content">
			<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
            
            <div class="inner_content" >
  				<div class="inner_title">포인트 내역</div>  
  				<form action="/myPage/point" method="post">    
  				<table>
            		<thead>
            			<tr>
				            <td>내용</td>
				            <td>날짜</td>
				            <td>적립</td>
				            <td>사용</td>
            			</tr>
            		</thead>
            		<tbody>
            		<c:forEach items="${pointList}" var="po">
            		<tr>
            			<td><input type="checkbox" class="under-checkbox"></td>
			            <td>${po.productName}</td>
			            <td>${po.date}</td>
			            <td>${po.pointPlus}</td>
			            <td>${po.pointMinus}</td>
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