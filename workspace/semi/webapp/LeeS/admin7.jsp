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
        <form action="" method="post">
            <table border="1"  id="lee1" style="width: 10%;">
                <tr>
                    <td colspan="2">회원정보 통계</td>
                </tr>
                <tr>
                    <td>총회원수 : </td>
                    <td>10명</td>
                 </tr>
                 <tr>
                    <td>휴면계정 : </td>
                    <td>1개</td>
                 </tr>
                 <tr>
                    <td>VIP 회원 :  </td>
                    <td>1명</td>
                 </tr>
            </table>
            <table class="table table-striped" id="tab2" style="float: right; width: 60%;">
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
                  <tr>
                    <th scope="row">1</th>
                    <td>ID1</td>
                    <td>정상</td>
                    <td>VIP</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>ID2</td>
                    <td>휴면</td>
                    <td>일반</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>ID3</td>
                    <td>정상</td>
                    <td>일반</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>ID4</td>
                    <td>정상</td>
                    <td>일반</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>ID5</td>
                    <td>정상</td>
                    <td>일반</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">6</th>
                    <td>ID6</td>
                    <td>정상</td>
                    <td>일반</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>ID7</td>
                    <td>정상</td>
                    <td>일반</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">8</th>
                    <td>ID8</td>
                    <td>정상</td>
                    <td>일반</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">9</th>
                    <td>ID9</td>
                    <td>정상</td>
                    <td>일반</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">10</th>
                    <td>ID10</td>
                    <td>정상</td>
                    <td>일반</td>
                    <td>2023-01-01</td>
                  </tr>
                </tbody>
            </table>
        </form>
    </div>
</section>
</body>
</html>