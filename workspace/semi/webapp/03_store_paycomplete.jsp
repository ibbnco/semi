<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%-- <div id="wrapper">
<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %></div> --%>

	<%@ include file="complete.jsp" %>
	
    <div id="menuname">
        <ul>
            <li>결제완료</li>
        </ul>
    </div> 
    
    <div class="purchase">
        <ul>
            <li>주문번호 1353B0342C</li><br>
            <li>픽업시 영수증을 보여주시기 바랍니다.</li>
        </ul>
    </div>
    
    <div class="purchaselist">
        <table border="0">
            <form>
            <thead>
                <tr>   
                    <td colspan="2">주문번호</td>
                    <td>구매상품</td>
                    <td>결제방법</td>
                    <td>구매금액</td>
                </tr>
            </thead>
            <tbody>
                <tr class="purchaselist_detail">
                    <td><p>1353B0342C</p></td>
                    <td></td>
                    <td><span class="price"><p>커플콤보 / 1개</p></td> 
                    <td class="purchaselist_option">
                        <p>신용카드결제</p>
                    </td>
                    <td>￦5,500</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3"></td>
                    <td colspan="3"><button class="purchaselist_optionbtn">결제영수증</button></td>
                </tr>
            </tfoot>
            </form>
        </table>
        <div class="purchase_mainbtns">
            <button class="purchase_orderbtn" onclick="location.href='01_store_main.html';">돌아가기</button>
        </div>
    <footer>footer</footer>
</body>
</html>

</body>
</html>