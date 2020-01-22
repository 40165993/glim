<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>
* {
	font-size: : 200px;
	box-sizing: border-box;
	margin: 0px;
	text-align: center;
}

body, html {
	margin: 0;
	padding: 0;
	height: 100%;
}

.bgimg {
	border: 0;
	padding: 0;
	background-image: url('/resources/wood.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}

.infoBox {
	position: absolute;
	top: 35%;
	left: 40%;
	border-radius: 10%;
	width: 600px;
	height: 650px;
	margin-left: -100px;
	margin-top: -150px;
	background-color: #faf8f7;
}

#titleName {
	text-align: center;
}

.infoBox label {
	text-align: right;
	width: 100px;
	display: inline-block;
	margin-right: 5px
}

.sr {
	text-align: center;
}
</style>
</head>
<body>

	<div class="bgimg col-12">
		<div class="infoBox">
			<br>
			<br>
			<br>
			<h3 id="titleName">회원정보</h3>
			<br>
			<br>
			<br> <label for="id">아이디 :</label> <input type="text" id="id"
				name="id" size="20" value="${result.id}" readonly> <br>
			<br> <label for="name">이름 :</label> <input type="text" id="name"
				name="name" size="20" value="${result.name}" readonly> <br>
			<br> <label for="nickname">닉네임 :</label> <input type="text"
				id="nickname" name="nickname" size="20" value="${result.nickname}"
				readonly> <br>
			<br> <label for="birth">생일 :</label> <input type="text"
				id="birth" name="birth" size="20" value="${result.birth}" readonly>
			<br>
			<br> <label for="gender">성별 :</label> <input type="text"
				id="gender" name="gender" size="20" value="${result.gender}"
				readonly> <br>
			<br> <label for="phone">전화번호 :</label> <input type="text"
				id="phone" name="phone" size="20" value="${result.phone}" readonly>
			<br>
			<br> 
			<br>
			<br>
			
		

			<div style="text-align: center">
				<button id="toHome">To Home</button>
				<button id="modify">To modify</button>
			</div>

		</div>
	</div>



	<script>
      $("#toHome").on("click", function(){
         location.href="${pageContext.request.contextPath}/";
      });
      $("#modify").on("click",function(){
         location.href="${pageContext.request.contextPath}/member/myModify.mem"
      })
   </script>


</body>
</html>