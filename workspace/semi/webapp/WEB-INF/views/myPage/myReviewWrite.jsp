<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰쓰기</title>
</head>
<body>

	<h2>리뷰쓰기</h2>
	<textarea id = "reviwe" name="review" rows="10" cols="30"></textarea>
	<div id="review_cnt">(0/100)</div>
	
	<script>
	$(document).ready(function() {
	    $('#review').on('keyup', function() {
	        $('#review_cnt').html("("+$(this).val().length+" / 100)");
	 
	        if($(this).val().length > 100) {
	            $(this).val($(this).val().substring(0, 100));
	            $('#review_cnt').html("(100 / 100)");
	        }
	    });
	});

	</script>
</body>
</html>