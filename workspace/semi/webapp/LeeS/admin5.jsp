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
            <table border="1"  id="lee1" style="width: 22%;">
                <tr>
                    <td colspan="2">영화등록(DB로 저장되게)</td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="MOVIE_TITLE" size="30"></td>
                 </tr>
                 <tr>
                    <td>개봉일</td>
                    <td><input type="text" name="OPENNING_DATE" size="30"></td>
                 </tr>
                 <tr>
                    <td>상영시작일</td>
                    <td><input type="text" name="START_DATE" size="30"></td>
                 </tr>
                 <tr>
                    <td>상영종료일</td>
                    <td><input type="text" name="FINISH_DATE" size="30"></td>
                 </tr>
                 <tr>
                    <td>출연진</td>
                    <td><textarea rows="3" cols="30" name="MOVIE_ACTOR"></textarea></td>
                 </tr>
                 <tr>
                    <td>줄거리</td>
                    <td><textarea rows="5" cols="30" name="SUMMARY"></textarea></td>
                 </tr>
                 <tr>
                    <td>상영등급</td>
                    <td><input type="text" name="RATE_FIFTEEN" size="10"></td>
                 </tr>
                 <tr>
                    <td>포스터이미지</td>
                    <td><input type="file" name="MOVIE_IMG"></td>
                 </tr>
                 <tr>
                    <td>장르</td>
                    <td><input type="text" name="GENRE_TYPE" size="10"></td>
                 </tr>
                 <tr>
                    <td>가격</td>
                    <td><input type="text" name="MOVIE_PRICE" size="10"></td>
                 </tr>
                 <tr>
                    <td>런타임</td>
                    <td><input type="text" name="MOVIE_RUNNING" size="10"></td>
                 </tr>
                 <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="등록"></td>
                 </tr>
            </table>
            <table class="table table-striped" id="tab2" style="float: right; width: 50%;">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">상영시작일</th>
                    <th scope="col">상영종료일</th>
                    <th scope="col">작성자</th>
                  </tr>
                </thead>
                <tbody class="table table-striped">
                  <tr>
                    <th scope="row">1</th>
                    <td>영화1</td>
                    <td>2023-01-01</td>
                    <td>2023-03-13</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>영화2</td>
                    <td>2023-01-01</td>
                    <td>2023-03-11</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>영화3</td>
                    <td>2023-01-01</td>
                    <td>2023-03-11</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>영화4</td>
                    <td>2023-01-01</td>
                    <td>2023-03-10</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>영화5</td>
                    <td>2023-01-01</td>
                    <td>2023-03-09</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">6</th>
                    <td>영화6</td>
                    <td>2023-01-01</td>
                    <td>2023-03-09</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>영화7</td>
                    <td>2023-01-01</td>
                    <td>2023-03-09</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">8</th>
                    <td>영화8</td>
                    <td>2023-01-01</td>
                    <td>2023-03-09</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">9</th>
                    <td>영화9</td>
                    <td>2023-01-01</td>
                    <td>2023-03-09</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">10</th>
                    <td>영화10</td>
                    <td>2023-01-01</td>
                    <td>2023-03-09</td>
                    <td>admin01</td>
                  </tr>
                </tbody>
            </table>
        </form>
    </div>
</section>
</body>
</html>