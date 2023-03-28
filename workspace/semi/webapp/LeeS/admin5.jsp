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
<section>
    <div>
        <form action="/LeeS/write5" method="post" enctype="multipart/form-data">
            <table border="1"  id="lee1" style="width: 22%;">
                <tr>
                    <td colspan="2">영화등록(DB로 저장되게)</td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="title" size="30"></td>
                 </tr>
                 <tr>
                    <td>개봉일</td>
                    <td><input type="text" name="open" size="30"></td>
                 </tr>
                 <tr>
                    <td>출연진</td>
                    <td><textarea rows="3" cols="30" name="actor"></textarea></td>
                 </tr>
                 <tr>
                    <td>줄거리</td>
                    <td><textarea rows="5" cols="30" name="summary"></textarea></td>
                 </tr>
                 <tr>
                    <td>장르</td>
                    <td><input type="text" name="genre" size="10"></td>
                 </tr>
                 <tr>
                    <td>상영등급</td>
                    <td><input type="text" name="rate" size="10"></td>
                 </tr>
                 <tr>
                    <td>상영기간</td>
                    <td><input type="text" name="pr" size="30"></td>
                 </tr>               
                 <tr>
                    <td>러닝타임</td>
                    <td><input type="text" name="run" size="10"></td>
                 </tr>
                 <tr>
                    <td colspan="2" align=right"><input type="submit" value="등록하기"></td>
                 </tr>
            </table>
            </form>
            <table class="table table-striped" id="tab2" style="float: right; width: 50%;">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">상영기간</th>
                    <th scope="col">개봉일</th>
                  </tr>
                </thead>
                <tbody class="table table-striped">
                  <c:forEach items="${boardList}" var="bl">
                <tr>
                  <th scope="row">${bl.no}</th>
                  <td>${bl.title}</td>
                  <td>${bl.pr}</td>
                  <td>${bl.open}</td>
                </tr>
              </c:forEach> 
            </tbody>
          </table>
          <hr>
          <nav id="navArea" aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item disabled">
                <c:if test="${ pageVo.currentPage > 1 }">
					<a style="margin-right: 20px" class="page-link" href="/LeeS/admin4?page=${pageVo.currentPage-1}">이전</a>
				</c:if>
              </li>
                <c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}">					
					<c:if test="${pageVo.currentPage == i}">
						<div><span style="font-size: 30px; padding-right: 20px;"  >${i}</span></div>
					</c:if>
					<c:if test="${pageVo.currentPage != i}">
						<a style="font-size: 30px; padding-right: 20px;" href="/LeeS/admin4?page=${i}">${i}</a>
					</c:if>
				</c:forEach>
              <li class="page-item">
                <c:if test="${ pageVo.currentPage < pageVo.maxPage }">
					<a class="page-link" href="/LeeS/admin4?page=${pageVo.currentPage+1}">다음</a>
				</c:if>
              </li>
            </ul>
          </nav>
        </article>  
     </div>  
   </main> 
 </body>
</html>

<script>

	const tbody = document.querySelector("main tbody");
	tbody.addEventListener("click" , function(event){
		const no = event.target.parentNode.children[0].innerText;
		location.href = "/LeeS/detail5?no=" + no;
	});

</script>