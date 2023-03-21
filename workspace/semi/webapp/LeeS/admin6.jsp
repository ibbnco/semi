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
                    <td colspan="2">매점물품등록(DB로 저장되게)</td>
                </tr>
                <tr>
                    <td>상품명</td>
                    <td><input type="text" name="PRODUCT_NAME" size="30"></td>
                 </tr>
                 <tr>
                    <td>가격</td>
                    <td><input type="text" name="PRODUCT_PRICE" size="30"></td>
                 </tr>
                 <tr>
                    <td>상품등록일</td>
                    <td><input type="text" name="PRODUCT_DATE" size="30"></td>
                 </tr>
                 <tr>
                    <td>상품수정일</td>
                    <td><input type="text" name="PRODUCT_REVISE" size="30"></td>
                 </tr>
                 <tr>
                    <td>상품설명</td>
                    <td><textarea rows="4" cols="30" name="PRODUCT_DETAIL"></textarea></td>
                 </tr>
                 <tr>
                    <td>상품이미지</td>
                    <td><input type="file" name="PRODUCT_IMAGE"></td>
                 </tr>
                 <tr>
                    <td>재고량</td>
                    <td><input type="text" name="COUNT" size="10"></td>
                 </tr>
                 <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="등록"></td>
                 </tr>
            </table>
            <table class="table table-striped" id="tab2" style="float: right; width: 50%;">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">상품명</th>
                    <th scope="col">상품등록일</th>
                    <th scope="col">재고량</th>
                    <th scope="col">작성자</th>
                  </tr>
                </thead>
                <tbody class="table table-striped">
                  <tr>
                    <th scope="row">1</th>
                    <td>상품1</td>
                    <td>2023-01-01</td>
                    <td>754</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>상품2</td>
                    <td>2023-01-01</td>
                    <td>2121</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>상품3</td>
                    <td>2023-01-01</td>
                    <td>5767</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>상품4</td>
                    <td>2023-01-01</td>
                    <td>999</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>상품5</td>
                    <td>2023-01-01</td>
                    <td>999</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">6</th>
                    <td>상품6</td>
                    <td>2023-01-01</td>
                    <td>9999</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>상품7</td>
                    <td>2023-01-01</td>
                    <td>999</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">8</th>
                    <td>상품8</td>
                    <td>2023-01-01</td>
                    <td>9999</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">9</th>
                    <td>상품9</td>
                    <td>2023-01-01</td>
                    <td>2909</td>
                    <td>admin01</td>
                  </tr>
                  <tr>
                    <th scope="row">10</th>
                    <td>상품10</td>
                    <td>2023-01-01</td>
                    <td>2175</td>
                    <td>admin01</td>
                  </tr>
                </tbody>
            </table>
        </form>
    </div>
</section>
</body>
</html>