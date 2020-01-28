<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
	<table border=1 align=center>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>닉네임</th>
			<th>생년월일</th>
			
			<th>전화번호</th>
			<th>차단여부</th>
		</tr>

		<c:forEach var="dto" items="${dto}">
			<tr>
				<td>${dto.id}</td>
				<td>${dto.name}</td>
				<td>${dto.nickname}</td>
				<td>${dto.birth}</td>
			
				<td>${dto.phone}</td>
				<td>${dto.vanList }</td>
				<td><button id="van_${dto.id }" onclick="modi('${dto.id}')">계정정지</button></td>
			</tr>
		</c:forEach>
	</table>
	<br>

	<div style="text-align: center">
		<button id="toHome">To Home</button>
	</div>

	<script>
		$("#toHome").on("click", function() {
			location.href = "${pageContext.request.contextPath}/";
		});

		var modi = function(id) {
			$.ajax({
				url : "/admin/van.admin",
				data : {
					id : id
				}
			}).done(function(data) {
				console.log("success");
			}).fail(function() {
				console.log("fail");
			});

		}
	</script>
</body>
</html>