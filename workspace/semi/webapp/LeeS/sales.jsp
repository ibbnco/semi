<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="adminHead.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출 통계</title>
</head>
<body>
<section>
    <div>
            <table border="1" class="table table-striped" id="lee1" style="width: 17%;">
                <tr>
                    <td colspan="2">매출 통계</td>
                </tr>
                <tr>
                    <td>총매출 : </td>
                    <td>${salesVo.totalSales}원</td>
                 </tr>
            </table>
            <table border="1" class="table table-striped" style="float: left; width: 30%;">
              <tr>
                <td colspan="2">영화관 매출</td>
            </tr>
            <tr>
                <td>영화관 총매출 : </td>
                <td>${salesVo.movieSales}원</td>
             </tr>           
            </table>
            <table border="1" class="table table-striped" style="float: left; width: 30%;">
              <tr>
                <td colspan="2">매점 매출</td>
            </tr>
            <tr>
              <td>매점 총매출 : </td>
              <td>${salesVo.storeSales}원</td>
           </tr>          
            </table>
    </div>
</section>
</body>
</html>