<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="adminHead.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div id="container">
    <article id="art2">
      <h2 style="text-align: left;">고객 1:1문의 접수내역</h2>
      <table class="table table-striped" id="tab1">
            <thead>
              <tr>
                <th scope="col">번호</th>
                <th scope="col">제목</th>
                <th scope="col">작성자</th>
                <th scope="col">접수일자</th>
              </tr>
            </thead>
            <tbody class="table table-striped">
              <c:forEach items="${boardList}" var="bl">
                <tr>
                  <th scope="row">${bl.no}</th>
                  <td>${bl.title}</td>
                  <td>${bl.writer}</td>
                  <td>${bl.enrollDate}</td>
                </tr>
              </c:forEach>             
            </tbody>
          </table>
          <hr>
           <nav id="navArea" aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item disabled">
                <c:if test="${ pageVo.currentPage > 1 }">
					<a style="margin-right: 20px" class="page-link" href="/LeeS/admin3?page=${pageVo.currentPage-1}">이전</a>
				</c:if>
              </li>
                <c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}">					
					<c:if test="${pageVo.currentPage == i}">
						<div><span style="font-size: 30px; padding-right: 20px;"  >${i}</span></div>
					</c:if>
					<c:if test="${pageVo.currentPage != i}">
						<a style="font-size: 30px; padding-right: 20px;" href="/LeeS/admin3?page=${i}">${i}</a>
					</c:if>
				</c:forEach>
              <li class="page-item">
                <c:if test="${ pageVo.currentPage < pageVo.maxPage }">
					<a class="page-link" href="/LeeS/admin3?page=${pageVo.currentPage+1}">다음</a>
				</c:if>
              </li>
            </ul>
          </nav>
        </article>  
 </body>
</html>

<script>

	const tbody = document.querySelector("main tbody");
	tbody.addEventListener("click" , function(event){
		const no = event.target.parentNode.children[0].innerText;
		location.href = "/LeeS/detail2?no=" + no;
	});

</script>