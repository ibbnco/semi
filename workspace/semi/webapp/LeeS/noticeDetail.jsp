<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="adminHead.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세</title>
</head>
<body>
  <main>
   <div id="container">
    <article id="art2">
      <h2 style="text-align: left;">공지사항 상세</h2>
         <form action="/LeeS/noticeDelete" method="post" enctype="multipart/form-data">
            <table class="table table-striped" id="tab1">            
              <tbody class="table table-striped">
                 <tr>   
                 <input type="hidden" name="no" value="${AdminVo.no}">              
                   <th scope="row">제목  :  ${AdminVo.title}</th>
                   <td>     </td>
                   <td>작성일시 : ${AdminVo.date}</td>
                   <td>     </td>
                 </tr>
                 <tr>
                   <th scope="row"> 내용  :  ${AdminVo.content}</th>
                 </tr>
                    </tbody>
                  <input id="delete" type="submit" value="삭제하기">                             
                </table>
              </form>
              <form action="/LeeS/noticeUpdate" method="post" enctype="multipart/form-data">             
              <table class="table table-striped" id="tab1">            
              <tbody class="table table-striped">
                 <tr>
                   <input type="hidden" name="no" value="${AdminVo.no}">
                   <th scope="row">수정할 제목  :  <input type="text" name="title" placeholder="수정내용을 입력하세요"></th>
                   <td>     </td>
                   <td>작성일시 : ${AdminVo.date}</td>
                   <td>     </td>
                 </tr>
                 <tr>
                   <th scope="row"> 수정할 내용  :  <textarea name="content" placeholder="수정내용을 입력하세요"></textarea></th>
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