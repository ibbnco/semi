<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<jsp:include page="logoHeader.jsp" />
<style>
     body{
 padding-left: 220px;
 padding-right: 220px;

}
   .div1{
    float: left;
    margin-left: 150px;
   }
   .IMAX{
  
    float: left;
    margin-left: 100px;
   }
   .SCREENX{
    float: left;
    margin-left: 100px;
   }
   .div2{
    float: left;
    margin-left: 150px;
    margin-top: 20px;
   }
   .SPHEREX{
    float: left;
    margin-top: 20px;
    margin-left: 100px;
   }
   .STARIUM{
    float: left;
    margin-left: 100px;
    margin-top: 20px;
   }
   .SOUNDX{
    float: left;
    margin-left: 150px;
    margin-top: 20px;
   }
   .div3{

    float: left;
    margin-left: 100px;
    margin-top: 20px;
   }


</style>
<body>
    <div class="theater">
    <div class="div1"><img src="img/4DX.JPG" style="width: 200px;" height="300px"><br>
    <button type="submit" style="margin-left: 75px; background-color: #78B9E9; color: aliceblue;"><a href="./theater-4DX.jsp">4DX</a></div>
    <div class="IMAX"><img src="img/IMAX.jpg" style="width: 200px;" height="300px"><br>
    <button type="submit" style="margin-left: 75px; background-color: #78B9E9; color: aliceblue;"><a href="./theater-IMAX.jsp">IMAX</a></div>
    <div class="SCREENX"><img src="img/SCREENX.jpg" style="width: 200px;" height="300px"><br>
    <button type="submit" style="margin-left: 65px; background-color: #78B9E9; color: aliceblue;"><a href="./theater-SCREENX.jsp">SCREENX</a></div>
    <div class="div2"><img src="img/4DX SCREEN.jpg" style="width: 200px;" height="300px"><br>
    <button type="submit" style="margin-left: 50px; background-color: #78B9E9; color: aliceblue;"><a href="./theater-4DX SCREEN.jsp">4DX SCREEN</a></div>

    <div class="SPHEREX"><img src="img/SPHEREX.png" style="width: 200px;" height="300px"><br>
    <button type="submit" style="margin-left: 60px; background-color: #78B9E9; color: aliceblue;" ><a href="./theater-SPHEREX.jsp">SPHEREX</a></div>
    <div class="STARIUM"><img src="img/STARIUM.png" style="width: 200px;" height="300px"><br>
    <button type="submit" style="margin-left: 65px; background-color: #78B9E9; color: aliceblue;"><a href="./theater-STARIUM.jsp">STARIUM</a></div>
    <div class="SOUNDX"><img src="img/SOUNDX.png" style="width: 200px;" height="300px"><br>
    <button type="submit" style="margin-left: 65px; background-color: #78B9E9; color: aliceblue;"><a href="./theater-SOUNDX.jsp">SOUNDX</a></div>
    <div class="div3"><img src="img/DOLBY ATOMS.png" style="width: 200px;" height="300px"><br>
    <button type="submit" style="margin-left: 50px; background-color: #78B9E9; color: aliceblue;"><a href="./theater-DOLBYATOMS.jsp">DOLBY ATOMS</a></div>
</body>
<jsp:include page="footer.jsp" />
</html>