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
            <table border="1"  id="lee1" style="width: 15%;">
                <tr>
                    <td colspan="2">회원정보 통계</td>
                </tr>
                <tr>
                    <td>총회원계정 : </td>
                    <td>${gradeVo.total}개</td>
                 </tr>
                 <tr>
                    <td>정상계정 : </td>
                    <td>${gradeVo.live}개</td>
                 </tr>
                 <tr>
                    <td>휴면계정 : </td>
                    <td>${gradeVo.sleep}개</td>
                 </tr>
                 <tr>
                    <td>탈퇴계정 : </td>
                    <td>${gradeVo.death}개</td>
                 </tr>
                 <tr>
                    <td>White등급 계정 : </td>
                    <td>${gradeVo.white}개</td>
                 </tr>
                 <tr>
                    <td>Silver등급 계정 : </td>
                    <td>${gradeVo.gold}개</td>
                 </tr>
                 <tr>
                    <td>Gold등급 계정 : </td>
                    <td>${gradeVo.gold}개</td>
                 </tr>                 
            </table>
            <table class="table table-striped" id="tab2" style="width: 62%;">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">아이디</th>
                    <th scope="col">회원상태</th>
                    <th scope="col">회원등급</th>
                    <th scope="col">가입일</th>
                  </tr>
                </thead>
                <tbody class="table table-striped">
                  <c:forEach items="${boardList}" var="bl">
                <tr>
                  <th scope="row">${bl.no}</th>
                  <td>${bl.id}</td>
                  <td>${bl.status}</td>
                  <td>${bl.grade}</td>
                  <td>${bl.date}</td>
                </tr>
              </c:forEach> 
            </tbody>
          </table>
          <hr>
          <nav id="navArea" aria-label="Page navigation example"  style="margin-right: 220px">
            <ul class="pagination justify-content-center">
              <li class="page-item disabled">
                <c:if test="${ pageVo.currentPage > 1 }">
					<a style="margin-right: 20px" class="page-link" href="/LeeS/admin7?page=${pageVo.currentPage-1}">이전</a>
				</c:if>
              </li>
                <c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}">					
					<c:if test="${pageVo.currentPage == i}">
						<div><span style="font-size: 30px; padding-right: 20px;"  >${i}</span></div>
					</c:if>
					<c:if test="${pageVo.currentPage != i}">
						<a style="font-size: 30px; padding-right: 20px;" href="/LeeS/admin7?page=${i}">${i}</a>
					</c:if>
				</c:forEach>
              <li class="page-item">
                <c:if test="${ pageVo.currentPage < pageVo.maxPage }">
					<a class="page-link" href="/LeeS/admin7?page=${pageVo.currentPage+1}">다음</a>
				</c:if>
              </li>
            </ul>
          </nav>
        </article>  
     </div>  
   </main> 
  </section>
 </body>
</html>
<script>

	const tbody = document.querySelector("main tbody");
	tbody.addEventListener("click" , function(event){
		const no = event.target.parentNode.children[0].innerText;
		location.href = "/LeeS/detail7?no=" + no;
	});

</script>