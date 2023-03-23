<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="mainHead.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="newbmovie.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div id="container">
    <aside id="as1">
        <h1 style="color: #104E86; font-size: 40px; ">고객센터</h1>
        <p><a href="lee1.jsp">공지사항</a></p>
        <p><a href="lee2.jsp">자주찾는 질문</a></p>
        <p><a href="lee3.jsp">1:1문의</a></p>
    </aside>
    <article id="art1">
      <h2 style="text-align: left;">자주찾는질문</h2>
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
                <td>관람권 사용해서 예매했는데 현금영수증 발행을 못했어요!</td>
                <td>관리자</td>
                <td>2023-03-13</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>VIP 등급별 유지, 선정의 VIP점수 기준을 알고 싶어요</td>
                <td>관리자</td>
                <td>2023-03-11</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>인터넷 예매 후 예매 내용 확인은 어떻게 하나요?</td>
                <td>관리자</td>
                <td>2023-03-11</td>
              </tr>
              <tr>
                <th scope="row">4</th>
                <td>내가 본 영화를 실수로 삭제했어요. 복구 가능한가요?</td>
                <td>관리자</td>
                <td>2023-03-10</td>
              </tr>
              <tr>
                <th scope="row">5</th>
                <td>이미 예매한 내역의 결제수단을 변경하고 싶어요.</td>
                <td>관리자</td>
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