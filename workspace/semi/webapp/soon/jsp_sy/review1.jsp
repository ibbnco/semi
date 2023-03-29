<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>리뷰 작성</title>
</head>
<body>
  <h1>리뷰 작성</h1>
  <form action="${pageContext.request.contextPath}/write.jsp" method="post">
    <div>
      <label for="title">제목</label>
      <input type="text" id="title" name="title" required>
    </div>
    <div>
      <label for="content">내용</label>
      <textarea id="content" name="content" required></textarea>
    </div>
    <div>
      <label for="rating">평점</label>
      <select id="rating" name="rating" required>
        <option value="">선택하세요</option>
        <option value="1">1점</option>
        <option value="2">2점</option>
        <option value="3">3점</option>
        <option value="4">4점</option>
        <option value="5">5점</option>
      </select>
    </div>
    <button type="submit">작성</button>
  </form>
</body>
</html>