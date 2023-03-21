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
      <h2 style="text-align: left;">공지사항 관리</h2>
      <table class="table table-striped" id="tab1">
            <thead>
              <tr>
                <th scope="col">번호</th>
                <th scope="col">제목</th>
                <th scope="col">작성자</th>
                <th scope="col">작성일</th>
              </tr>
            </thead>
            <tbody class="table table-striped">
              <tr>
                <th scope="row">1</th>
                <td>예매관련 공지사항</td>
                <td>admin01</td>
                <td>2023-03-13</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>코로나 관련 관람시 주의사항</td>
                <td>admin01</td>
                <td>2023-03-11</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>이벤트 당첨자 관련 공지사항</td>
                <td>admin01</td>
                <td>2023-03-11</td>
              </tr>
              <tr>
                <th scope="row">4</th>
                <td>매점이용 관련 공지사항</td>
                <td>admin01</td>
                <td>2023-03-10</td>
              </tr>
              <tr>
                <th scope="row">5</th>
                <td>상영관 관련 공지사항</td>
                <td>admin01</td>
                <td>2023-03-09</td>
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