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
      <h2 style="text-align: left;">문의내역 상세</h2>
            <table class="table table-striped" id="tab1">            
              <tbody class="table table-striped">
                 <tr>                
                   <th scope="row">제목  :  ${AdminVo.title}</th>
                   <td>     </td>
                   <td>작성일시 : ${AdminVo.date}</td>
                   <td>     </td>
                 </tr>
                 <tr>
                   <th scope="row">내용  :  ${AdminVo.content}</th>
                 </tr>
                    </tbody>                          
                </table>
              </form>
              <form action="/LeeS/write2" method="post" enctype="multipart/form-data">             
              <table class="table table-striped" id="tab1">            
              <tbody class="table table-striped">              
                 <tr>
                   <th scope="row"> 답변 내용  :  <textarea name="content" placeholder="답변내용을 입력하세요"></textarea></th>
                 </tr>
                    </tbody>
                  <input id="write" type="submit" value="답변작성">                             
                </table>
          </form>
        </article>  
     </div>  
   </main> 
 </body>
</html>







