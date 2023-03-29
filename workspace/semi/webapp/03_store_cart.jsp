<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	#btn{
		width: 50%;
	}
</style>
</head>
<body>


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
        <table>		
            <thead>
            	<tr>
                <td><input type="checkbox" id="checkbox-all" name="chkAll"></td>
                    <td colspan="2">상품명</td>
                    <td>판매금액</td>
                    <td>수량</td>
                    <td>구매금액</td>
                </tr>
            </thead>
            <tbody>
                <tr class="cartlist_detail">
                    <td><input type="checkbox" name="chk"></td>
                    <td><img src="/images/팝콘.jpg" alt="" width="100px" height="100px"></td>
                    <td>
                        <p></p>
                    </td>
                    <td></td>
                    <td id="btn"><%@ include file="btn.jsp" %></td>
                    <td></td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3"></td>
                    <td colspan="3"></td>
                </tr>
            </tfoot>
        </table>
        </div> 
        <div class="cart_mainbtns">
            <button class="cart_orderbtn left" onclick="location.href='01_store_main.jsp';">돌아가기</button>
            <button class="cart_orderbtn right" onclick="location.href='03_store_payment.jsp';">구매하기</button>
        </div>
    <footer><%@ include file="footer.jsp" %></footer>
		<script>
		    const all = document.querySelector("#checkbox-all");
		    	all.addEventListener("click",(x)=>{
		        const status = x.target.checked;
		        const checkBoxArr = document.querySelectorAll(".chk");
		        for(let box of checkBoxArr){
		            box.checked = status;
		        }		            
		    });
		</script>
</body>
</html>

</body>
</html>