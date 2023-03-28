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
                <table>
                    <tr>
                        <td rowspan="2">포스터</td>
                        <td>영화이름</td>
                        <td><button type="button" onclick="del();">del</button></td>
                    </tr>
                    <tr>
                        <td>개봉일 : </td>
                        <td><button type="button" onclick="location.href='예매하기'">예매하기</button></td>
                    </tr>
                    
                </table>
            </div>
            <%@ include file="/WEB-INF/views/common/footer.jsp" %>
           </div>
      </div>
</body>
</html>