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
      <h2 style="text-align: left;">영화 상세</h2>
         <form action="/LeeS/delete5" method="post" enctype="multipart/form-data">
            <table class="table table-striped" id="tab1">            
              <tbody class="table table-striped">
                 <input type="hidden" name="no" value="${AdminVo.no}">              
                 <tr>   
                   <th scope="row">제목  :  ${AdminVo.title}</th>
                 </tr>
                 <tr>
                   <th scope="row">개봉일  :  ${AdminVo.open}</th>
                 </tr>
                 <tr>
                   <th scope="row" rowspan="2">출연진  :  ${AdminVo.actor}</th>
                 </tr>
                 <tr>
                   <th scope="row" rowspan="4">줄거리  :  ${AdminVo.summary}</th>
                 </tr>
                 <tr>
                   <th scope="row">장르  :  ${AdminVo.genre}</th>
                 </tr>
                 <tr>
                   <th scope="row">상영등급  :  ${AdminVo.rate}</th>
                 </tr>
                 <tr>
                   <th scope="row">상영기간  :  ${AdminVo.pr}</th>
                 </tr>
                 <tr>
                   <th scope="row">러닝타임  :  ${AdminVo.run}분</th>
                 </tr>
                    </tbody>
                  <input id="delete" type="submit" value="삭제하기">                             
                </table>
              </form>
              <form action="/LeeS/update5" method="post" enctype="multipart/form-data">             
              <table class="table table-striped" id="tab1">            
              <tbody class="table table-striped">
                 <input type="hidden" name="no" value="${AdminVo.no}">
                 <tr>   
                   <th scope="row">제목  :  <input type="text" name="title" placeholder="수정내용을 입력하세요"></th>
                 </tr>
                 <tr>
                   <th scope="row">개봉일  :  <input type="text" name="open" placeholder="수정내용을 입력하세요"></th>
                 </tr>
                 <tr>
                   <th scope="row" rowspan="2">출연진  :  <textarea type="text" name="actor" placeholder="수정내용을 입력하세요"></textarea></th>
                 </tr>
                 <tr>
                   <th scope="row" rowspan="4">줄거리  :  <textarea type="text" name="summary" placeholder="수정내용을 입력하세요"></textarea></th>
                 </tr>
                 <tr>
                   <th scope="row">장르  :  <input type="text" name="genre" placeholder="수정내용을 입력하세요"></th>
                 </tr>
                 <tr>
                   <th scope="row">상영등급  :  <input type="text" name="rate" placeholder="수정내용을 입력하세요"></th>
                 </tr>
                 <tr>
                   <th scope="row">상영기간  :  <input type="text" name="pr" placeholder="수정내용을 입력하세요"></th>
                 </tr>
                 <tr>
                   <th scope="row">러닝타임  :  <input type="text" name="run" placeholder="수정내용을 입력하세요"></th>
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







