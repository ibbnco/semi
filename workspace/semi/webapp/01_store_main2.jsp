<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

    <%@ include file="payHeader.jsp" %>
    <div id="menuname">
        <ul>
            <li>팝콘 PopCorn</li><br>
        </ul>
    </div> 
	
	<div id="wrapper">
	
		<main>
		<table>
			<thead>
				<tr>
	            <td colspan="3"><a href="04_popcorn.jsp">
                    <img src="/images/팝콘.jpg" alt="" width="200px" height="200px"></a></td>
                <td colspan="3"><a href="04_popcorn_sweet.jsp">
                    <img src="/images/카라멜팝콘.jpg" alt="" width="200px" height="200px"></a></td>
                <td colspan="3"><a href="04_popcorn_garlic.jsp">
                    <img src="/images/갈릭팝콘.jpg" alt="" width="200px" height="200px"></a></td>
	            </tr>
			</thead>
			<tbody>
				<c:forEach items="${boardList}" var="bvo">
					<tr>
						<td>${bvo.no}</td>
						<td>${bvo.name}</td>
						<td>${bvo.price}</td>
					</tr>
				</c:forEach>
			</tbody>
			<tr><td colspan="3"><a href="04_popcorn_cheese.jsp">
                    <img src="/images/치즈팝콘.jpg" alt="" width="200px" height="200px"></a></td>
                <td colspan="3"><a href="04_popcorn_dbcheese.jsp">
                    <img src="/images/더블치즈팝콘.jpg" alt="" width="200px" height="200px"></a></td>    
            </tr>
			
		</table>
		</main>
		</div>

		<footer><%@ include file="footer.jsp" %></footer>
</body>
</html>

