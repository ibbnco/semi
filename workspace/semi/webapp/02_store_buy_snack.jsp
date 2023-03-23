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
            <li>스낵 Snack</li><br>
        </ul>
    </div> 

    <div id="main">
        <table id="store">
            <tr><td colspan="3"><a href="04_snack_nacho.jsp">
                    <img src="/images/nachonew2.jpg" alt="" width="200px" height="160px"></td></a>
                <td colspan="3"><a href="04_snack_hotdog.jsp">
                    <img src="/images/hotdog.jpg" alt="" width="200px" height="200px"></td></a>
                <td colspan="3"><a href="04_snack_chillhot.jsp">
                    <img src="/images/cheesehotdog.jpg" alt="" width="200px" height="200px"></td></a>
            </tr>
            <tr><td id="detail" colspan="2"><b>나쵸</b></td><td>￦4,000</td>
            <td id="detail" colspan="2"><b>핫도그</b></td><td>￦3,500</td>
            <td id="detail" colspan="2"><b>칠리핫도그</b></td><td>￦4,000</td>
            </tr>
            <tr><td colspan="3"><a href="04_snack_pretzel.jsp">
                    <img src="/images/pretzel.jpg" alt="" width="200px" height="200px"></td></a> 
                <td colspan="3"><a href="04_snack_squid.jsp">
                    <img src="/images/squid.jpg" alt="" width="200px" height="200px"></td></a>                
            </tr>
            <tr><td id="detail"><b>프레첼</b></td><td colspan="2">￦3,500</td>
                <td id="detail"><b>오징어</b></td><td colspan="2">￦4,000</td>
            </tr>
        </table>
    </div>
    <footer>footer</footer>
</body>
</html>