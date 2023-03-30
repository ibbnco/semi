<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="adminHead.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매점상품등록</title>
</head>
<body>
  <main>
   <div id="container">
    <article id="art2">
      <h2 style="text-align: left;">매점 관리
          <div id="wrBtn" style="float: right;">
			<button><a href="storeWrite.jsp">물품 등록하기</a></button>
		  </div>
      </h2>
       <table class="table table-striped" id="tab1">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">상품명</th>
                    <th scope="col">가격</th>
                    <th scope="col">재고량</th>
                  </tr>
                </thead>
                <tbody class="table table-striped">
                  <c:forEach items="${boardList}" var="bl">
                <tr>
                  <th scope="row">${bl.no}</th>
                  <td>${bl.title}</td>
                  <td>${bl.price}원</td>
                  <td>${bl.count}개</td>
                </tr>
              </c:forEach> 
            </tbody>
          </table>
          <hr>
          <nav id="navArea" aria-label="Page navigation example" style="margin-right: 220px">
            <ul class="pagination justify-content-center">
              <li class="page-item disabled">
                <c:if test="${ pageVo.currentPage > 1 }">
					<a style="margin-right: 20px" class="page-link" href="/LeeS/store?page=${pageVo.currentPage-1}">이전</a>
				</c:if>
              </li>
                <c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}">					
					<c:if test="${pageVo.currentPage == i}">
						<div><span style="font-size: 30px; padding-right: 20px;"  >${i}</span></div>
					</c:if>
					<c:if test="${pageVo.currentPage != i}">
						<a style="font-size: 30px; padding-right: 20px;" href="/LeeS/store?page=${i}">${i}</a>
					</c:if>
				</c:forEach>
              <li class="page-item">
                <c:if test="${ pageVo.currentPage < pageVo.maxPage }">
					<a class="page-link" href="/LeeS/store?page=${pageVo.currentPage+1}">다음</a>
				</c:if>
              </li>
            </ul>
          </nav>
     </div> 
   </main> 
 </body>
</html>

<script>

	const tbody = document.querySelector("main tbody");
	tbody.addEventListener("click" , function(event){
	const no = event.target.parentNode.children[0].innerText;
	location.href = "/LeeS/storeDetail?no=" + no;
	});

</script>
