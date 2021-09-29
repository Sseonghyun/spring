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
<button><a href="/board/list?pageNum=${param.pageNum }&searchType=${param.searchType }&keyword=${param.keyword }">목록으로</a></button>


<%-- pageNum, searchType, keyword 들어왔는지 여부 디버깅 
EL의 ${param.파라미터명} 을 이용해 확인 가능
get 파라미터에 SearchCriteria를 선언해서 처리해도 되지만
pageNum, searchType, keyword가 DB와 연계된 작업을 하지 않으므로
굳이 두 군데를 고치지 않고 get.jsp에서 바로 받아 쓸 수 있도록
아래와 같이 활용하는게 효율적입니다. --%>
글번호 : ${param.pageNum }<br/>
검색조건 : ${param.searchType }<br/>
키워드 : ${param.keyword }<br/>


<!-- 글 삭제용 버튼
글 삭제가 되면, 리스트페이지로 넘어가는데, 삭제로 넘어오는 경우는
alert()창을 띄워서 "글이 삭제되었습니다"가 출력되도록 로직을 짜주세요. -->
<form action="/board/remove" method="post">
	<input type="hidden" name="bno" value="${vo.bno }"> <br/>
	<input type="submit" value="삭제">
</form>

<form action="/board/boardmodify" method="post">
	<input type="hidden" name="bno" value="${vo.bno }"> <br/>
	<input type="hidden" name="pageNum" value="${param.pageNum }"> <br/>
	<input type="hidden" name="searchType" value="${param.searchType}"> <br/>
	<input type="hidden" name="keyword" value="${param.keyword }"> <br/>
	<input type="submit" value="수정">
</form>

</body>
</html>