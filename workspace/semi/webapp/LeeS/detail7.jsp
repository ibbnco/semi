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
      <h2 style="text-align: left;">회원 상세</h2>       
            <table class="table table-striped" id="tab1">            
              <tbody class="table table-striped">
                 <input type="hidden" name="no" value="${AdminVo.no}">              
                 <tr>   
                   <th scope="row">아이디  :  ${AdminVo.id}</th>
                 </tr>
                 <tr>
                   <th scope="row">이름  :  ${AdminVo.name}</th>
                 </tr>
                 <tr>
                   <th scope="row">닉네임  :  ${AdminVo.nick}</th>
                 </tr>
                 <tr>
                   <th scope="row">전화번호  :  ${AdminVo.tel}</th>
                 </tr>
                 <tr>
                   <th scope="row">이메일  :  ${AdminVo.email}</th>
                 </tr>
                 <tr>
                   <th scope="row">계정상태  :  ${AdminVo.status}</th>
                 </tr>
                 <tr>
                   <th scope="row">회원등급  :  ${AdminVo.grade}</th>
                 </tr>
                 <tr>
                   <th scope="row">가입일  :  ${AdminVo.date}</th>
                 </tr>
                 <tr>
                   <th scope="row">포인트  :  ${AdminVo.point}</th>
                 </tr>                                
                    </tbody>
                </table>             
        </article>  
     </div>  
   </main> 
 </body>
</html>