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
                    <td colspan="2">관리자 권한설정(DB에 저장되게)</td>
                </tr>
                <tr>
                    <td>관리자 ID</td>
                    <td><input type="text" name="PRODUCT_NAME" size="15"></td>
                 </tr>
                 <tr>
                    <td>권한레벨</td>
                    <td><input type="text" name="PRODUCT_PRICE" size="15"></td>
                 </tr>
                 <tr>
                    <td>권한부여일</td>
                    <td><input type="text" name="PRODUCT_DATE" size="20"></td>
                 </tr>
                 <tr>
                    <td>권한내용</td>
                    <td><textarea rows="4" cols="30" name="PRODUCT_DETAIL"></textarea></td>
                 </tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="등록"></td>
                 </tr>
            </table>
            <table class="table table-striped" id="tab2" style="float: right; width: 50%;">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">관리자ID</th>
                    <th scope="col">권한레벨</th>
                    <th scope="col">권한부여일</th>
                  </tr>
                </thead>
                <tbody class="table table-striped">
                  <tr>
                    <th scope="row">1</th>
                    <td>admin01</td>
                    <td>3LV</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>admin02</td>
                    <td>3LV</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>admin03</td>
                    <td>3LV</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>admin04</td>
                    <td>3LV</td>
                    <td>2023-01-01</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>admin05</td>
                    <td>3LV</td>
                    <td>2023-01-01</td>
                  </tr>
                </tbody>
            </table>
        </form>
    </div>
</section>
</body>
</html>