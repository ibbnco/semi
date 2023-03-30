<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
<style type="text/css">
.otherPage{
	clear: both;
	
	background-color: #78B9E9;
	text-align: center;
}

</style>
</head>
<body>

	<div id="wrapper">
		<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %>
		
		<%@ include file="/WEB-INF/views/common/profile.jsp" %>
		
        <div class="content">
			<%@ include file="/WEB-INF/views/common/myMenuBar.jsp" %>
            
            <div class="inner_content" >
            <div class="inner_title">1:1 문의</div>
            	<button type="button" name="delBtn" class="delBtn">선택삭제</button>
            	<form action="/myPage/qnaList" method="post">
            	<main>
            	<table>
            		<thead>
            			<tr>
            				<td><input type="checkbox" id="checkbox-all"></td>
				            <td>번호</td>
				            <td>제목</td>
				            <td>등록일</td>
				            <td>상태</td>
            			</tr>
            		</thead>
            		<tbody>
            		<c:forEach items="${qnaList}" var="qvo">
            		<tr>
            			<td><input type="checkbox" class="under-checkbox"></td>
			            <td>${qvo.qnaNo}</td>
			            <td>${qvo.qnaTitle}</td>
			            <td>${qvo.qnaDate}</td>
			            <td>${qvo.qnaAnswer}</td>
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
            	<div class="otherPage" onclick="location.href ='/myPage/qnaWrite'">
					
						<p style="font-size: 20px;">1:1 문의 작성</p>
						불편사항과 문의사항을 남겨주시면 친절히 답변드리겠습니다.
					
            	</div>
            </div>
       	</div>
       	</main>
       	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
     </div>
     
</body>
</html>
     <script>
        const all = document.querySelector("#checkbox-all");
        all.addEventListener("click",(x)=>{
            const status = x.target.checked;
            const checkBoxArr = document.querySelectorAll(".under-checkbox");
            for(let box of checkBoxArr){
                box.checked = status;
            }
            
        });
        

    	const tbody = document.querySelector("main tbody");
    	tbody.addEventListener("click",(event)=>{
    		const no = event.target.parentNode.children[1].innerText;
    		location.href = "/myPage/qnaDetail?qnaNo=" + no;
    	});

    </script>
    