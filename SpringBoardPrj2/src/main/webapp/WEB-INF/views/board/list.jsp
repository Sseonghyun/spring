<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 게시물 목록 페이지 </h1>
	<table class="table table-hover">
			<tr>
				<th>글 번호</th>
				<th>글 제목</th>
				<th>글 쓴이</th>
				<th>날자</th>
				<th>최종수정일</th>
			</tr>
			<c:forEach var="board" items="${list }">
			<tr>
				<td>${board.bno }</td>
				<td><a href="/board/get?bno=${board.bno}">${board.title }</a></td>
				<td>${board.writer }</td>
				<td>${board.regdate }</td>
				<td>${board.updatedate }</td>
			</tr>
			</c:forEach>
			
	
	</table>
	
	<a href="/board/register"><button>글쓰기</button></a>
	<a href="/board/list"><button>목록으로</button></a>
	
	<form action="/board/list" method="get">
	<input type="text" name="keyword" placeholder="검색" value="${keyword }">
	<input type="submit" value="검색">
	</form>
	
	<script>
		// 컨트롤러에서 success라는 이름으로 날린 자료가 들어오는지 확인
		// 그냥 list페이지 접근시는 success를 날려주지 않아서 아무것도 들어오지 않고,
		// remove 로직의 결과로 넘어왔을때만 데이터가 전달됨
		var result = "${success}";
		var result = "${bno}";

		if(result === "success"){
			alert(bno + "글이 삭제되었습니다.");
		}
	</script>




</body>
</html>