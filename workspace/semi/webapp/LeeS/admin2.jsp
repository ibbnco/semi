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
                <th scope="col">분류</th>
                <th scope="col">제목</th>
                <th scope="col">작성자</th>
                <th scope="col">접수일자</th>
                <th scope="col">상태</th>
              </tr>
            </thead>
            <tbody class="table table-striped">
              <tr>
                <th scope="row">1</th>
                <td>예매</td>
                <td>예매관련 문의</td>
                <td>user01</td>
                <td>2023-03-13</td>
                <td>답변대기</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>분실물</td>
                <td>영화관에서 지갑잃어버림</td>
                <td>user02</td>
                <td>2023-03-11</td>
                <td>재문의</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>결제</td>
                <td>결제가 두번됐어여</td>
                <td>user03</td>
                <td>2023-03-11</td>
                <td>답변대기</td>
              </tr>
              <tr>
                <th scope="row">4</th>
                <td>매점</td>
                <td>팝콘이 맛있어여</td>
                <td>user04</td>
                <td>2023-03-10</td>
                <td>답변대기</td>
              </tr>
              <tr>
                <th scope="row">5</th>
                <td>불편사항</td>
                <td>잼민이가 뒤에서 발로차여</td>
                <td>user05</td>
                <td>2023-03-09</td>
                <td>답변대기</td>
              </tr>
            </tbody>
          </table>
          <hr>
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item disabled">
                <a class="page-link" href="#" style="font-size: 17px;">이전</a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item">
                <a class="page-link" href="#" style="font-size: 17px;">다음</a>
              </li>
            </ul>
          </nav>
        </article>  
 </body>
</html>