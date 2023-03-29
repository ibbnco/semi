<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#menuname{
	    float: left;
	    font-size: x-large;
	    font-weight: bolder;
	    color: #104E86;
	}
	#menubar{
	    width: 100%;
	    height: 100px;
	    background-color: #CAD7E4;
	}
	#menubar ul li a {
	    font-size: 15px;
	    font-weight: bold;
	    float:right;
	}
	ul>li {
	    display: inline;   
	}
	ul{
	    float: right;
	}
	li{
	    float: left;
	}
	
	body{
	    padding-left: 220px;
	    padding-right: 220px;
	}
	#store{
	    width: 100%;
	    height: 100%;
	    padding: 5%;
	    border-spacing: 20px;
	    margin: auto;
	    font-weight: 300;
	}
	#detail{
	    color: #104E86;
	}
	
</style>
</head>
<body>

	<%@ include file="logoHeader.jsp" %>
    <div id="menuname">
        <ul>
            <li>팝콘 PopCorn</li><br>
        </ul>
    </div> 
    
    <div id="main">
        <table id="store">
			<thead>
	            <tr><td colspan="3"><a href="/store/coke1">
	                <img src="/images/coke.png" alt="" width="150px" height="130px"></a></td>
	            <td colspan="3"><a href="/store/coke2">
	                <img src="/images/cider.jpg" alt="" width="300px" height="150px"></a></td>
	            <td colspan="3"><a href="/store/coke3">
	                <img src="/images/pinkade.jpg" alt="" width="200px" height="200px"></a></td>
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
				<tr><td colspan="3"><a href="/store/coke4">
	                <img src="/images/ame.jpg" alt="" width="180px" height="200px"></a></td> 
	            <td colspan="3"><a href="/store/coke5">
	                <img src="/images/iceame.jpg" alt="" width="300px" height="200px"></a></td>
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