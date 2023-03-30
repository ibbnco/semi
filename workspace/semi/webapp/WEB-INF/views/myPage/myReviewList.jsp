<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 리뷰</title>
</head>
<body>

	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<%@ include file="/WEB-INF/views/common/profile.jsp" %>
		
        <div class="content">
			<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
            
            <div class="inner_content" >
            <div class="inner_title">내가 쓴 리뷰</div>
            	<button type="button" name="delBtn" class="delBtn">선택삭제</button>
            	<form action="/myPage/reviewList" method="post">
            	<table>
            		<thead>
            			<tr>
            				<td><input type="checkbox" id="checkbox-all"></td>
				            <td>제목</td>
				            <td>내용</td>
				            <td>등록일</td>
				            <td>평점</td>
            			</tr>
            		</thead>
            		<tbody>
            		<c:forEach items="${reviewList}" var="rvl">
            		<tr>
            			<td><input type="checkbox" class="email-checkbox"></td>
			            <td>${rvl.movieTitle}</td>
			            <td>${rvl.content}</td>
			            <td>${rvl.reviewDate}</td>
			            <td>${rvl.star}</td>
            		</tr>
            			</c:forEach>
            			</tbody>
            	</table>
            	<div id="page-area">
			
				<c:if test="${pageVo.currentPage >1}">
				<a href="/myPage/qnaList?page=${pageVo.currentPage-1}">이전</a>
				</c:if>
				<c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}" >

					<c:if test="${pageVo.currentPage == i}">
					<span>${i}</span>
					</c:if>

					<c:if test="${pageVo.currentPage != i}">
					<a href="/myPage/qnaList?page=${i}">${i}</a>
					</c:if>

				</c:forEach>
				<c:if test="${pageVo.currentPage < pageVo.maxPage}">
				<a href="/myPage/qnaList?page=${pageVo.currentPage+1}">다음</a>
				</c:if>
			</div>
            	</form>
            </div>
        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
     </div>
     
     <script>
        const all = document.querySelector("#checkbox-all");
        all.addEventListener("click",(x)=>{
            const status = x.target.checked;
            const checkBoxArr = document.querySelectorAll(".email-checkbox");
            for(let box of checkBoxArr){
                box.checked = status;
            }
            
        });
        
        
    </script>
</body>
</html>