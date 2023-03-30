<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 글쓰기</title>
</head>
<body>

	<div id="wrapper" style="margin: auto;">
	
		<jsp:include page="adminHead.jsp" />
		
		<main>			
			<form action="/LeeS/eventWrite" method="post" enctype="multipart/form-data">
				<table border="1" width=500 style="margin: auto;">
					<tr>
						<th colspan="2">이벤트 글쓰기</th>
					</tr>
					<tr>
						<td><input type="text" name="title" placeholder="제목을 입력하세요."style="width: 100%"></td>
					</tr>
					<tr>
						<td><input type="text" name="date" placeholder="이벤트 기간을 입력하세요."style="width: 100%"></td>
					</tr>
					<tr>
						<td colspan="2" height=400><textarea name="content"
								placeholder="내용을 입력하세요." style="width: 100%; height: 100%"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2" align=right><input type="submit" value="작성하기">
						</td>
					</tr>
				</table>
			</form>
		</main>	
	</div>
</body>
</html>