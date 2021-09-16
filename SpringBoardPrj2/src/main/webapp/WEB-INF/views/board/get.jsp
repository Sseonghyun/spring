<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${vo.bno }번 글 상세페이지</h1>
<p>
글번호 : ${vo.bno} <br>
글제목 : ${vo.title } <br>
글본문 : ${vo.content } <br>
글쓴이 : ${vo.writer } <br>
날짜 : ${vo.regdate } <br>
최종수정일 : ${vo.updatedate } <br>
<a href="/board/list">목록으로</a>
</p>
</body>
</html>