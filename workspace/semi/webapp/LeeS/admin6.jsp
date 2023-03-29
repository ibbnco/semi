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
         <form action="/LeeS/write6" method="post" enctype="multipart/form-data">
            <table border="1"  id="lee1" style="width: 20%;">
                <tr>
                    <td colspan="2">매점물품등록(DB로 저장되게)</td>
                </tr>
                <tr>
                    <td>상품명</td>
                    <td><input type="text" name="title" size="30"></td>
                 </tr>
                 <tr>
                    <td>가격</td>
                    <td><input type="text" name="price" size="30"></td>
                 </tr>
                 <tr>
                    <td>상품등록일</td>
                    <td><input type="text" name="date" size="30"></td>
                 </tr>
                 <tr>
                    <td>상품수정일</td>
                    <td><input type="text" name="update" size="30"></td>
                 </tr>
                 <tr>
                    <td>상품설명</td>
                    <td><textarea rows="4" cols="30" name="content"></textarea></td>
                 </tr>
                 <tr>
                    <td>재고량</td>
                    <td><input type="text" name="count" size="10"></td>
                 </tr>
                 <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="등록하기"></td>
                 </tr>
            </table>
            <table class="table table-striped" id="tab2" style="width: 57%;">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">상품명</th>
                    <th scope="col">상품등록일</th>
                    <th scope="col">재고량</th>
                  </tr>
                </thead>
                <tbody class="table table-striped">
                  <c:forEach items="${boardList}" var="bl">
                <tr>
                  <th scope="row">${bl.no}</th>
                  <td>${bl.title}</td>
                  <td>${bl.date}</td>
                  <td>${bl.count}</td>
                </tr>
              </c:forEach> 
            </tbody>
          </table>
          <hr>
          <nav id="navArea" aria-label="Page navigation example" style="margin-right: 220px">
            <ul class="pagination justify-content-center">
              <li class="page-item disabled">
                <c:if test="${ pageVo.currentPage > 1 }">
					<a style="margin-right: 20px" class="page-link" href="/LeeS/admin6?page=${pageVo.currentPage-1}">이전</a>
				</c:if>
              </li>
                <c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}">					
					<c:if test="${pageVo.currentPage == i}">
						<div><span style="font-size: 30px; padding-right: 20px;"  >${i}</span></div>
					</c:if>
					<c:if test="${pageVo.currentPage != i}">
						<a style="font-size: 30px; padding-right: 20px;" href="/LeeS/admin6?page=${i}">${i}</a>
					</c:if>
				</c:forEach>
              <li class="page-item">
                <c:if test="${ pageVo.currentPage < pageVo.maxPage }">
					<a class="page-link" href="/LeeS/admin6?page=${pageVo.currentPage+1}">다음</a>
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
		location.href = "/LeeS/detail6?no=" + no;
	});

</script>