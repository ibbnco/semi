<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

	<%@ include file="logoHeader.jsp" %>
    <div id="menuname">
        <ul>
            <li>팝콘 PopCorn</li><br>
        </ul>
    </div> 
    
    <div>
        <table id="store">
			<thead>
	            <tr><td colspan="3"><a href="/store/pop1">
	                    <img src="/images/팝콘.jpg" alt="" width="200px" height="200px"></a></td>
	                <td colspan="3"><a href="/store/pop2">
	                    <img src="/images/카라멜팝콘.jpg" alt="" width="200px" height="200px"></a></td>
	                <td colspan="3"><a href="/store/pop3">
	                    <img src="/images/갈릭팝콘.jpg" alt="" width="200px" height="200px"></a></td>
	            </tr>
			</thead>
			<tbody>
				<tr>
					<c:forEach items="${boardList}" var="bvo" varStatus="s">
						<c:if test="${s.index < 3}">
						<td></td>
						<td id="pdtname">${bvo.productName}</td>
						<td>${bvo.productPrice}</td>
						</c:if>
					</c:forEach>
				</tr>
				<tr><td colspan="3"><a href="/store/pop4">
	                    <img src="/images/치즈팝콘.jpg" alt="" width="200px" height="200px"></a></td>
	                <td colspan="3"><a href="/store/pop5">
	                    <img src="/images/더블치즈팝콘.jpg" alt="" width="200px" height="200px"></a></td>    
            	</tr>
			</tbody>	
			<tfoot>		
            	<tr>
		            <c:forEach items="${boardList}" var="bvo" varStatus="s">
			            <c:if test="${s.index >= 3}">
			            <td></td>
						<td id="pdtname">${bvo.productName}</td>
						<td>${bvo.productPrice}</td>
						</c:if>
					</c:forEach>
				</tr>
			</tfoot>	
		</table>
    </div>
    <footer><%@ include file="footer.jsp" %></footer>
</body>
</html>