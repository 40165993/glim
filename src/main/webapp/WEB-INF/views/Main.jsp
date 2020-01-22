
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style type="text/css">
body, html {
	margin: 0;
	padding: 0;
	height: 100%;
}

* {
	box-sizing: border-box;
	
}

.bgimg {
	position: relative;
	border: 0;
	padding: 0;
	background-image: url('/resources/wood.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
	overflow: scroll;
}

#wrapper {
	
	position: absolute;
	width: 95%;
	height: 95%;
	z-index: 1;
	margin: 2%;
}

* {
	text-align: center;
	box-sizing: border-box;
}

.header {
	width: 100%;
	height: 20%;
	background-color: gray;
	text-align: center;
}

#blank {
	float: left;
	width: 20%;
	height: 100%;
}

#logo {
	float: left;
	position: reltive;
	width: 60%;
	height: 100%;
	z-index: 2;
	background-color: white;
}

#logo>img {
	opacity: 1;
	width: 100%;
	height: 100%;
}

#info {
	float: left;
	width: 20%;
	height: 100%;
}

.body {
top:3%;
	
}

.hot {
	position: relateive;
	top: 100px;
}

#category {
	position: relative;
	top: 30px;
	float: right;
	height: 20%;
	width: 100%;
}

#select {
float: right;}

#selectCategory{
float:right;}

#hot {
	position: relative;
	top: 100px;
	width: 100%;
	height: 20%;
}

.hotList {
	position: relative;
	text-align: center;
	height: 80%;
	width: 100%;
}

.hotList>div {
	position: relative;
	float: left;
	width: 30%;
	height: 400px;
	overflow: hidden;
	line-height: 100%;
	display: flex;
	top: 50px;
	margin-right: 2%;
	margin-left :2%;
	margin-top:3%;
}

div>img {
	position: relative;
	overflow: hidden;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	    
}

#footerContainer {
	position: relative;
	width: 100%;
	top: 150px;
	left: 15px;
	heigth: auto:
}

.card{
margin : 0px 0px 5px 5px;
background-color : white;
}


.card-body{
width:100%;
height:100%;

}

#login, #signUp{
width:100%;
height:50%;
}

</style>

</head>
<body>
<body>
	<div class="bgimg col-12">
		<div id="wrapper">
			<div class="header">
				<div id="blank"></div>
				<div id="logo">
					<img src="/resources/logo.png">
				</div>
				<div id="info">
					<c:if test="${loginInfo == null }">
							<button id="login">로그인하기</button>
							<button id="signUp">회원가입하기</button>
						</c:if>
						
						<c:if test="${loginInfo != null }">
						 <c:choose>
						
						<c:when test="${loginInfo.id == 'admin' }">
							<h3>관리자님환영합니다.</h3>
							<button class="btns" id="memberList">회원목록보기</button>
							<button class="btns" id="vanmember">블랙리스트목록보기</button>
							<button class="btns" id="adminlogout">로그아웃하기</button>
						</c:when>

						<c:otherwise>
							<h3>${loginInfo.nickname}님환영합니다.</h3>

							<button class="btns" id="myInfo">내 정보</button>
							<button class="btns" id="myModify">정보 수정</button>
							<br>
							<br>
							<button class="btns" id="logout">로그아웃</button>
							<button class="btns" id="memberOut">회원 탈퇴</button>
							<br>
							<br>

						</c:otherwise>
						</c:choose>
						</c:if>
				</div>

			</div>

			<%-- 본문영역 --%>

			<div class="body col-12 col-sm-auto">
				<!-- 네비게이션 -->

				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<a class="navbar-brand" href="#"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNav" aria-controls="navbarNav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav" style="margin: auto">
							<li class="nav-item active"><a class="nav-link"
								href="/board/category.board?category=시사,이슈">시사,이슈 <span
									class="sr-only">(current)</span></a></li>
							<li class="nav-item"><a class="nav-link"
								href="/board/category.board?category=인문학,철학">인문학,철학</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/board/category.board?category=문화,예술">문화,예술</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/board/category.board?category=심리,탐구">심리탐구</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/board/category.board?category=IT" tabindex="-1"
								aria-disabled="true">IT트랜드</a></li>
						</ul>
					</div>
				</nav>

				<form action = "/board/categoryCard.board">
				<div id="category" style="display: block">
					<select name="category" id="select">
						<option value="">카테고리선택</option>
						<option value="시사,이슈">시사,이슈</option>
						<option value="인문학,철학">인문학,철학</option>
						<option value="문화,예술">문화, 예술</option>
						<option value="심리,탐구">심리, 탐구</option>
							<option value="IT">IT</option>
					</select>
					<button id="selectCategory">선택</button>
				</div>
				</form>
				

				<div class="hotList col-12 col-sm-auto">
							<c:forEach var="list" items="${list }" begin="0" end="0">
					<div class="card" style="width: 25rem;">
						<img src="/resources/monmo5.jpg" class="card-img-top" >
						<div class="card-body">
							<h5 class="card-title">${list.title }</h5>
							<p class="card-text">${list.nickname }</p>
							<a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}" class="btn btn-primary">보러가기</a>
						</div>
						</div>
					
					</c:forEach>
					<c:forEach var="list" items="${list }" begin="1" end="1">
					<div class="card" style="width: 25rem;">
						<img src="/resources/monmo.jpg" class="card-img-top" >
						<div class="card-body">
							<h5 class="card-title">${list.title }</h5>
							<p class="card-text">${list.nickname }</p>
							<a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}" class="btn btn-primary">보러가기</a>
						</div>
						</div>
					
					</c:forEach>
					<c:forEach var="list" items="${list }" begin="2" end="2">
					<div class="card" style="width: 25rem;">
						<img src="/resources/monmo2.jpg" class="card-img-top" >
						<div class="card-body">
							<h5 class="card-title">${list.title }</h5>
							<p class="card-text">${list.nickname }</p>
							<a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}" class="btn btn-primary">보러가기</a>
						</div>
						</div>
					
					</c:forEach>
					<c:forEach var="list" items="${list }" begin="3" end="3">
					<div class="card" style="width: 25rem;">
						<img src="/resources/monmo3.jpg" class="card-img-top" >
						<div class="card-body">
							<h5 class="card-title">${list.title }</h5>
							<p class="card-text">${list.nickname }</p>
							<a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}" class="btn btn-primary">보러가기</a>
						</div>
						</div>
					
					</c:forEach>
					<c:forEach var="list" items="${list }" begin="4" end="4">
					<div class="card" style="width: 25rem;">
						<img src="/resources/monmo4.jpg" class="card-img-top" >
						<div class="card-body">
							<h5 class="card-title">${list.title }</h5>
							<p class="card-text">${list.nickname }</p>
							<a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}" class="btn btn-primary">보러가기</a>
						</div>
						</div>
					
					</c:forEach>
					
					<c:forEach var="list" items="${list }" begin="5" end="5">
					<div class="card" style="width: 25rem;">
						<img src="/resources/monmo4.jpg" class="card-img-top" >
						<div class="card-body">
							<h5 class="card-title">${list.title }</h5>
							<p class="card-text">${list.nickname }</p>
							<a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}" class="btn btn-primary">보러가기</a>
						</div>
						</div>
					
					</c:forEach>
					
					</div>
					
					
					
			



			<!-- 푸터-->
			<div style="background-color: lightgray">
				<div>

					<div class="row bg-light mt-2" id="footerContainer">
						<div class="col d-none d-sm-block"></div>
						<div id="footer" class="col-12 col-sm-6">
							<div class="row p-1">
								<div id="footer-logo" class="col-4 d-none d-lg-block">
									<img id="logo" src="/resources/logo.png" class="col-12">
								</div>
								<div id="footer-contents" class="col-12 col-lg-8">
									<div class="row">
										<div class="col-12 col-sm-auto">
											<a href="#">회사소개</a>
										</div>
										<div class="col-12 col-sm-auto">
											<a href="#">이용약관</a>
										</div>
										<div class="col-12 col-sm-auto">
											<a href="#">개인정보취급방침</a>
										</div>
										<div class="col-12 col-sm-auto">
											<a href="#">저작권안내</a>
										</div>
										<div class="col-12 col-sm-auto"></div>
									</div>
									<div class="row mt-1">
										<div class="col-12 text-left">상호명 : glim | 대표자 : 글림 |
											사업자등록번호 : 100-12-191205</div>
										<div class="col-12 text-left">주소 : 서울 중구 남대문로 120 대일빌딩
											3층 F Class</div>
										<div class="col-12 text-left">대표전화 : 02-1544-9970</div>
										<div class="col-12 text-left">Copyright(c) 2019 글림 All
											Rights Reserved.</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col d-none d-sm-block"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<script>
$("#start").on("click", function(){
   location.href = "${pageContext.request.contextPath}/start.mem";
})
$("#logout").on("click", function(){
   location.href = "${pageContext.request.contextPath}/member/logout.mem";
})

$("#myInfo").on("click",function(){
   location.href = "${pageContext.request.contextPath}/member/myInfo.mem";
})
$("#myModify").on("click", function(){
   location.href = "${pageContext.request.contextPath}/member/myModify.mem";
})
$("#memberOut").on("click", function(){
   location.href = "${pageContext.request.contextPath}/member/memberOut.mem";
})


   $("#login").on("click",function(){
	   location.href= "${pageContext.request.contextPath}/start.mem";
   })
      $("#signUp").on("click",function(){
      location.href="${pageContext.request.contextPath}/member/signUp.mem";
   })
   
   
   $("#memberList").on("click",function(){
   location.href = "${pageContext.request.contextPath}/admin/memberList.admin";
})

 $("#vanmember").on("click",function(){
   location.href = "${pageContext.request.contextPath}/admin/vanmember.admin";
})

 $("#adminlogout").on("click",function(){
   location.href = "${pageContext.request.contextPath}/member/logout.mem";
})

</script>

</body>
</html>