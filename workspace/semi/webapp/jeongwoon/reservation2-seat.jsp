<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<jsp:include page="logoHeader.jsp"/>
<link href="/jeongwoon/reservation2-seat.css" rel="stylesheet" type="text/css">

<body>
    <hr>
        <br>
              <div class="parant">
         <div class="title">인원/좌석</div>           

        <div class="choice">
            <br>
         <div class="screen">스크린</div><br>
         <div class="seat-wrapper" style="margin:0px 0% 0 80px;"></div>
         <div class=""></div></div>

        <div  class="moviechoice" >
      <div class="moviechoiceinside" ><button><a href="/movie/movie">←영화선택</a></button></div>
      </div>
        
      <div class="person"> 
      <div><center> 일반 : <input type="number" name="favnum" min="1" max="8"></center></div>
      <div><center> 청소년 : <input type="number" name="favnum" min="1" max="8"></center></div>
        </div>
                    
           <div  class="paychoice" >
<<<<<<< HEAD
       <button><a href="/movie/pay">결제선택→</a></button></div>
=======
       <button><a href="/movie/payment">결제선택→</a></button></div>
>>>>>>> 25c23b567d946613ff0988f063b3040a3c7ecb9e
      
              </div>



<script>
let test = [];
let selectedSeats = new Array();
let selectedSeatsMap = [];
const seatWrapper = document.querySelector(".seat-wrapper");
let clicked = "";
let div = "";

for (let i = 1; i < 6; i++) {
div = document.createElement("div");
seatWrapper.append(div);
for (let j = 1; j < 25; j++) {
  const input = document.createElement('input');
  input.type = "button";
  input.name = "seats"
  input.classList = "seat";
  //3중포문을 사용하지 않기위해 
  mapping(input, i, j);
  div.append(input);
  input.addEventListener('click', function(e) {
      console.log(e.target.value);
      //중복방지 함수
      selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);

      //click class가 존재할때(제거해주는 toggle)
      if (input.classList.contains("clicked")) {
          input.classList.remove("clicked");
          clicked = document.querySelectorAll(".clicked");
          selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
          clicked.forEach((data) => {
              selectedSeats.push(data.value);
          });
          //click class가 존재하지 않을때 (추가해주는 toggle)
      } else {
          input.classList.add("clicked");
          clicked = document.querySelectorAll(".clicked");
          clicked.forEach((data) => {
              selectedSeats.push(data.value);
          })
      }
      console.log(selectedSeats);
  })
}
}

function mapping(input, i, j) {
if (i === 1) {
  input.value = "A" + j;
} else if (i === 2) {
  input.value = "B" + j;
} else if (i === 3) {
  input.value = "C" + j;
} else if (i === 4) {
  input.value = "D" + j;
} else if (i === 5) {
  input.value = "E" + j;
}
}


</script>
</body>

<jsp:include page="footer.jsp" />
</html>