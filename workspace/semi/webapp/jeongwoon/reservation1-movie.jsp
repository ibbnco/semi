<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<link href="/jeongwoon/reservation1-movie.css" rel="stylesheet" type="text/css">
<jsp:include page="logoHeader.jsp" />


<body onload="drawImage()">

    <hr>
    <br>
            <div class="parant">
    
                   <div class="titlem" style="background-color: #78B9E9;">영화</div>
                   <div class="titlet" style="background-color: #78B9E9;">상영관</div>
                   <div class="titleday" style="background-color: #78B9E9;">날짜</div>
                   <div class="titletime" style="background-color: #78B9E9;">시간</div>
                    
                
                  <div class="movielist">
         
                
                    <div class="movielistinside">
                        <form> 
                            <input type="radio" name="movies" value="/jeongwoon/img/귀멸의 칼날.jpeg" checked onchange="drawImage()">귀멸의 칼날<br>
                            <input type="radio" name="movies" value="/jeongwoon/img/스즈메의 문단속.jpeg" onchange="drawImage()">스즈메<br>
                            <input type="radio" name="movies" value="/jeongwoon/img/에브리씽.jpeg" onchange="drawImage()">에브리씽<br>
                            <input type="radio" name="movies" value="/jeongwoon/img/더 퍼스트 슬램덩크.jpeg" onchange="drawImage()">더 퍼스트 슬램덩크<br>
                            <input type="radio" name="movies" value="/jeongwoon/img/샤잠! 신들의 분노.jpeg" onchange="drawImage()">샤잠! 신들의 분노<br>
                            <input type="radio" name="movies" value="/jeongwoon/img/소울메이트.jpeg" onchange="drawImage()">소울메이트<br>
                            <input type="radio" name="movies" value="/jeongwoon/img/아임 히어로 더 파이널.jpeg" onchange="drawImage()">아임 히어로 더 파이널<br>
                            <input type="radio" name="movies" value="/jeongwoon/img/치킨래빗.jpeg" onchange="drawImage()">치킨레빗<br>
                            <input type="radio" name="movies" value="/jeongwoon/img/플레인.jpeg" onchange="drawImage()">플레인<br>
                            <input type="radio" name="movies" value="/jeongwoon/img/웅남이.jpeg"  onchange="drawImage()">웅남이<br>
                            <br>
                            
                        </select></form>
                        </div></div>
                        
    
    
                  <div class="theaterlist">
                    <div class="theaterinside">
                        <input type="radio" name="theater" value="IMAX" checked onclick="theatervalue(event)">IMAX<br>
                        <input type="radio" name="theater" value="4DX" onclick="theatervalue(event)">4DX<br>
                        <input type="radio" name="theater" value="SCREENX" onclick="theatervalue(event)">SCREENX<br>
                        <input type="radio" name="theater" value="4DX SCREEN" onclick="theatervalue(event)">4DX SCREEN<br>
                        <input type="radio" name="theater" value="SPHEREX" onclick="theatervalue(event)">SPHEREX<br>
                        <input type="radio" name="theater" value="STARIUM" onclick="theatervalue(event)">STARIUM<br>
                        <input type="radio" name="theater" value="SOUNDX" onclick="theatervalue(event)">SOUNDX<br>
                        <input type="radio" name="theater" value="DOLBY ATMOS" onclick="theatervalue(event)">DOLBY ATMOS
                        
                  </div></div>
                
                
    
                  <div class="day-part">
                   <div class="day-partin">
                    <p><input type="date"  value="today" min="2023-03-27" max="2023-04-11"></p>
                    </div></div>
                
                   
                        
    
                   <div class="timelist">
                    <div class="div1">
                        <div class="div2">11:00</div>
                             <div class="div2">12:00</div>
                            <div class="div2">13:00</div>
                            <div class="div2">14:00</div>
                            <div class="div2">15:00</div>
                            <div class="div2">16:00</div>
                            <div class="div2">17:00</div>
                            <div class="div2">18:00</div>
                            <div class="div2">19:00</div>
                            <div class="div2">20:00</div>
                    </div></div> 
      
                    
    
    
              <div class="movieinf">
                
                    <div class="choicemovieimage"><img id="movieimage" src="/jeongwoon/img/귀멸의 칼날.jpeg" style="width: 170px;" height="200px"  >
                    </div>
                    <div  class="choicetheater" >
                         
                    <div id="result" style="font-size:x-large;">

                    </div></div></div>
            
              <div  class="seatchoice" >
                <div class="seatchoiceinside" ><button><a href="/movie/seat">좌석선택→</a></div>
                </div>
                
                </div>
            
    

    

        <script>
           
        var div2 = document.getElementsByClassName("div2");

        function handleClick(event) {
          console.log(event.target);
          // console.log(this);
          // 콘솔창을 보면 둘다 동일한 값이 나온다
  
          console.log(event.target.classList);
  
          if (event.target.classList[1] === "clicked") {
            event.target.classList.remove("clicked");
          } else {
            for (var i = 0; i < div2.length; i++) {
                div2[i].classList.remove("clicked");
            }
  
            event.target.classList.add("clicked");
          }
        }
  
        function init() {
          for (var i = 0; i < div2.length; i++) {
            div2[i].addEventListener("click", handleClick);
          }
        }
  
        init();

        function drawImage()
{
    var found = null;
    var sel = document.getElementsByName("movies"); // fruits 이름을 가진 모든 태그를 찾는 코드
    var img = document.getElementById("movieimage"); // 찾고자하는 id 값을 찾는 코드 
 
    for(var i=0; i<sel.length; i++) 
    {
        if(sel[i].checked == true) 
        {
            found = sel[i];
            break; 
        }
    }
    img.src = found.value;
}
function theatervalue(event) {
        document.getElementById('result').innerText =
        event.target.value;
    }
    </script>
                


   

</body>

<jsp:include page="footer.jsp" />
</html>