<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>BMI 지수 계산하기</h1>
	<form action="/bmi" method="post">
	키 : <input type="number" name="height">cm<br>
	몸무게 : <input type="number" name="weight">kg<br>
	<input type="submit" value="제출">
	</form>
</body>
</html>