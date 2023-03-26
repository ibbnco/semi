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
	footer {
	    background-color: #6188AF;
	    width: 100%;
	    height: 100px;
	}
</style>
</head>
<body>
 <%-- <div id="wrapper">
<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %></div> --%>

	<%@ include file="logoHeader.jsp" %>
    <div id="menuname">
        <ul>
            <li>팝콘 PopCorn</li><br>
        </ul>
    </div> 
    <div id="main">
        <table id="store">
            <tr><td colspan="3"><a href="04_popcorn.jsp">
                    <img src="/images/팝콘.jpg" alt="" width="200px" height="200px"></a></td>
                <td colspan="3"><a href="04_popcorn_sweet.jsp">
                    <img src="/images/카라멜팝콘.jpg" alt="" width="200px" height="200px"></a></td>
                <td colspan="3"><a href="04_popcorn_garlic.jsp">
                    <img src="/images/갈릭팝콘.jpg" alt="" width="200px" height="200px"></a></td>
            </tr>
            <tr><td id="detail" colspan="2"><b><%= pdtname %></b></td><td>￦4,500</td>
            <td id="detail" colspan="2"><b>카라멜팝콘</b></td><td>￦5,000</td>
            <td id="detail" colspan="2"><b>갈릭팝콘</b></td><td>￦5,000</td>
            </tr>
            <tr><td colspan="3"><a href="04_popcorn_cheese.jsp">
                    <img src="/images/치즈팝콘.jpg" alt="" width="200px" height="200px"></a></td>
                <td colspan="3"><a href="04_popcorn_dbcheese.jsp">
                    <img src="/images/더블치즈팝콘.jpg" alt="" width="200px" height="200px"></a></td>    
            </tr>
            <tr><td id="detail"><b>치즈팝콘</b></td><td colspan="2">￦5,500</td>
                <td id="detail"><b>더블치즈팝콘</b></td><td colspan="2">￦6,000</td>
            </tr>
        </table>
    </div>
    <footer>footer</footer>
</body>
</html>