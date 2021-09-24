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
	
	<!-- 모달 코드는 작성이 안 되어있는게 아니고
	작성은 해뒀지만 css의 display옵션을 none으로 작성 -->
	<div class="modal" id="myModal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">글 작성 완료</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>${bno }번 글 작성을 완료했습니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
      
      </div>
    </div>
  </div>
</div>
	
	<!-- 부트 스트랩용 js 파일도 마저 임포트 코드진행 순서가 위에서 아래이므로 script 태그위에 먼저 js파일을 집어넣음 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
	
	<script>
		// 컨트롤러에서 success라는 이름으로 날린 자료가 들어오는지 확인
		// 그냥 list페이지 접근시는 success를 날려주지 않아서 아무것도 들어오지 않고,
		// remove 로직의 결과로 넘어왔을때만 데이터가 전달됨
		var result = "${success}";
		// 지금 여기 bno가 아니고 result라는 동일한 이름으로 bno값으로 덮어씌우고 있네요
		var bno = "${bno}";
		// 모달 사용을 위한 변수 선언
		var myModal = new bootstrap.Modal(document.getElementById('myModal'), focus);
		console.log(myModal)
		

		if(result === "success"){
			alert(bno + "글이 삭제되었습니다.");
			// js에서 문자열비교는===로 합니다.
		} else if (result === "register") {
			// 공식문서 하단의 modal.show()를 응용합니다.
			console.log("테스트 완료");
			alert("테스트 완료");
			myModal.show();
		}
	</script>




</body>
</html>