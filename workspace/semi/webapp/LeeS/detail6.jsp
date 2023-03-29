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
  <main>
   <div id="container">
    <article id="art2">
      <h2 style="text-align: left;">상품 상세</h2>
         <form action="/LeeS/delete6" method="post" enctype="multipart/form-data">
            <table class="table table-striped" id="tab1">            
              <tbody class="table table-striped">
                 <input type="hidden" name="no" value="${AdminVo.no}">              
                 <tr>   
                   <th scope="row">상품명  :  ${AdminVo.title}</th>
                 </tr>
                 <tr>
                   <th scope="row">가격  :  ${AdminVo.price}</th>
                 </tr>
                 <tr>
                   <th scope="row">상품등록일  :  ${AdminVo.date}</th>
                 </tr>
                 <tr>
                   <th scope="row">상품수정일  :  ${AdminVo.update}</th>
                 </tr>
                 <tr>
                   <th scope="row" rowspan="4">상품설명  :  ${AdminVo.content}</th>
                 </tr>                
                 <tr>
                   <th scope="row">재고량  :  ${AdminVo.count}</th>
                 </tr>                
                    </tbody>
                  <input id="delete" type="submit" value="삭제하기">                             
                </table>
              </form>
              <form action="/LeeS/update6" method="post" enctype="multipart/form-data">             
              <table class="table table-striped" id="tab1">            
              <tbody class="table table-striped">
                 <input type="hidden" name="no" value="${AdminVo.no}">
                 <tr>   
                   <th scope="row">상품명  :  <input type="text" name="title" placeholder="수정내용을 입력하세요"></th>
                 </tr>
                 <tr>
                   <th scope="row">가격  :  <input type="text" name="price" placeholder="수정내용을 입력하세요"></th>
                 </tr>               
                 <tr>
                   <th scope="row">상품수정일  :  <input type="text" name="update" placeholder="수정내용을 입력하세요"></th>
                 </tr>
                 <tr>
                   <th scope="row" rowspan="4">상품명  :  <textarea type="text" name="content" placeholder="수정내용을 입력하세요"></textarea></th>
                 </tr>
                 <tr>
                   <th scope="row">재고량  :  <input type="text" name="count" placeholder="수정내용을 입력하세요"></th>
                 </tr>                 
                    </tbody>
                  <input id="update" type="submit" value="수정하기">                             
                </table>
          </form>
        </article>  
     </div>  
   </main> 
 </body>
</html>







