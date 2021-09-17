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
글번호 : ${vo.bno} <br/>
글제목 : ${vo.title } <br/>
글본문 : ${vo.content } <br/>
글쓴이 : ${vo.writer } <br/>
날짜 : ${vo.regdate } <br/>
최종수정일 : ${vo.updatedate } <br/>
<a href="/board/list">목록으로</a>

<!-- 글 삭제용 버튼
글 삭제가 되면, 리스트페이지로 넘어가는데, 삭제로 넘어오는 경우는
alert()창을 띄워서 "글이 삭제되었습니다"가 출력되도록 로직을 짜주세요. -->
<form action="/board/remove" method="post">
	<input type="hidden" name="bno" value="${vo.bno }"> <br/>
	<input type="submit" value="삭제">
</form>

<form action="/board/boardmodify" method="post">
	<input type="hidden" name="bno" value="${vo.bno }"> <br/>
	<input type="submit" value="수정">
</form>

</body>
</html>