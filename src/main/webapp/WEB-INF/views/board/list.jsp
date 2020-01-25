<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
#write{
width: 5%;
font-size:15px;
height:20%;
border-radius:10%;
background-color: #ede9e8;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

</head>
<body>

	<table id="example" class="display" style="width: 100%">
		<thead>
			<tr>
				<th>글 번호</th>
				<th>글 제목</th>
				<th>글쓴이</th>
				<th>작성날짜</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.seq }</td>
					<td><a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}">${list.title }</a>
					<td><a href="${pageContext.request.contextPath}/board/writer.board?nickname=${list.nickname}">${list.nickname }</td>
					<td>${list.writeDate }</td>
					<td>${list.views }</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<form action="/board/write.board" method="post">
	<br><br>
	<c:if test="${loginInfo != null }">
	<button id="write" style="float:right">글쓰기</button>
	</c:if>
</form>
	<script>
		$(document).ready(function() {
			$('#example').DataTable();
		});

	</script>
</body>
</html>