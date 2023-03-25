<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	var count=0;
	button.addEventListener('click', function () {
    	count += 1;
    	input.innerHTML = count;
	}
</script>
</head>
<body>
<%-- <div id="wrapper">
<%@ include file="/WEB-INF/views/common/logoHeader.jsp" %></div> --%>

	<%@ include file="payHeader.jsp" %>
	
    <div id="menuname">
        <ul>
            <li>장바구니 Cart</li><br>
        </ul>
    </div> 
    
    <div class="cart">
        <ul>
            <li>장바구니 상품은 최대 30일간 저장됩니다.</li><br>
            <li>조리상품은 특성상 즉시취소가 불가능하며,</li> 
            <li>취소시 해당 영화관에 문의하시기 바랍니다.</li>
        </ul>
    </div>
    <div class="cartlist">
        <table border="0">
            <form>
            <thead>
                <tr>
                    <td><input type="checkbox" id="checkbox"></td>
                    <td colspan="2">상품명</td>
                    <td>판매금액/수량</td>
                    <td>포인트</td>
                    <td>구매금액</td>
                </tr>
            </thead>
            <tbody>
                <tr class="cartlist_detail">
                    <td><input type="checkbox" id="checkbox"></td>
                    <td><img src="/images/팝콘.jpg" alt="" width="100px" height="100px"></td>
                    <td>
                        <p>오리지널 팝콘</p>
                    </td>
                    <td><span class="price">￦4,500
                        <br><br>
                    	<%@ include file="btn.jsp" %>    
                    </td>
                    <td class="cartlist_option">
                        <p>-3000p</p>
                    </td>
                    <td>￦1,500</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3"><button class="cartlist_optionbtn">선택상품 삭제</button>
                    <td colspan="3"></td>
                </tr>
            </tfoot>
            </form>
        </table>
        <div class="cart_mainbtns">
            <button class="cart_orderbtn left" onclick="location.href='01_store_main.jsp';">돌아가기</button>
            <button class="cart_orderbtn right" onclick="location.href='03_store_payment.jsp';">구매하기</button>
        </div>
    <footer>footer</footer>
</body>
</html>

</body>
</html>