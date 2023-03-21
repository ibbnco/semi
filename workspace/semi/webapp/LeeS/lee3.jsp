<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="mainHead.jsp" />    
<!DOCTYPE html>
<html>
<head>
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
        <h2 style="text-align: left;">1:1 문의내역</h2>
        <table class="table table-striped" id="tab1">
          <button type="submit" style="float: right;"><span>선택삭제</span></button>
            <thead>
              <tr>
                <th scope="col"><input type="checkbox" name="체크박스">번호</th>
                <th scope="col">유형</th>
                <th scope="col">제목</th>
                <th scope="col">등록일</th>
                <th scope="col">진행상태</th>
              </tr>
            </thead>
            <tbody class="table table-striped">
              <tr>
                <th scope="row"><input type="checkbox" name="체크박스"> 1</th>
                <td>분실물</td>
                <td>영화관에서 지갑을 잃어버렸어요</td>
                <td>2023-03-10</td>
                <td>답변완료</td>
              </tr>
              <tr>
                <th scope="row"><input type="checkbox" name="체크박스"> 2</th>
                <td>불편사항</td>
                <td>재문의</td>
                <td>2023-03-12</td>
                <td>문의접수</td>
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
              <li class="page-item">
                <a class="page-link" href="#" style="font-size: 17px;">다음</a>
              </li>
            </ul>
          </nav>
        </article>   
 </body>
</html>