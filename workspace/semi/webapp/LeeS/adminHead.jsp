<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.css" integrity="sha512-c0+vSv9tnGS4fzwTIBFPcdCZ0QwP+aTePvZeAJkYpbj67KvQ5+VrJjDh3lil48LILJxhICQf66dQ8t/BJyOo/g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>NEWBMOVIE</title>
    <link rel="icon" href="image/movielogo.png">
    <link rel="stylesheet" href="newbmovie.css">
    <script src="script.js"></script>
</head>

<header class="header">
  <div class="header_logo">
      <a href="adminMain.jsp">
          <h1>관리자페이지</h1>
          <p>AdminPage</p>
      </a>
</div>
<div>
  <img class="logo" src="image/movielogo.png" alt="logo">
</div>
<table>
  <tr>
    <td>ID - <a>${hv.id}yedece12</a></td>
    <td>권한레벨 - <a>${hv.lv}3레벨</a></td>
  </tr>
  <tr>
    <td colspan="2">답변대기 문의 - <a href="QNA?page=1">${hv.cnt}8개</a></td>
  </tr>
</table>
</header>