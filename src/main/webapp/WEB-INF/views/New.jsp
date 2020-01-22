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

<style>
body, html {
	margin: 0;
	padding: 0;
	height: 100%;
}

.bgimg {
	position: relative;
	border: 0;
	padding: 0;
	background-image: url('/resources/wood.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}

#wrapper {
	border: 1px solid black;
	position: absolute;
	background-color: white;
	width: 95%;
	height: 95%;
	z-index: 1;
	margin: 2%;
	opacity: 0.9;
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

.papular {
	position: relative;
	border: 1px solid black;
	width: 95%;
	height: 20%;
	z-index: 2;
	border: 1px solid black;
}

.papular>img {
	width: 100%;
	height: 100%;
}

.carousel {
	position: relative;
	float: left;
}
</style>
</head>
<body>
	<div class="bgimg">
		<div id="wrapper">
			<div class="header">
				<div id="blank"></div>
				<div id="logo">
					<img src="/resources/logo.png">
				</div>
				<div id="info">
					<c:choose>
						<c:when test="${loginInfo == null }">
							<button id=login>로그인하기</button>
							<button id="signUp">회원가입하기</button>
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
				</div>
			</div>

			<div class="body">
				<div class="polular">
					<div class="first">

						<%-- 첫번째 캐러셀 --%>
						<div id="carouselExampleCaptions"
							class="carousel slide col-4 col-md-6 col-sm-12" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleCaptions" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo4.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>First slide label</h5>
										<p>Nulla vitae elit libero, a pharetra augue mollis
											interdum.</p>
									</div>
								</div>
								<div class="carousel-item"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo2.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Second slide label</h5>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit.</p>
									</div>
								</div>
								<div class="carousel-item"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo3.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Third slide label</h5>
										<p>Praesent commodo cursus magna, vel scelerisque nisl
											consectetur.</p>
									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleCaptions"
								role="button" data-slide="prev"> <span
								class="carousel-control-prev-icon" aria-hidden="true"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
								role="button" data-slide="next"> <span
								class="carousel-control-next-icon" aria-hidden="true"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>


						<%-- 두번째 캐러셀 --%>

						<div id="carouselExampleCaptions2"
							class="carousel slide col-4 col-md-6 col-sm-12" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleCaptions" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo4.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>First slide label</h5>
										<p>Nulla vitae elit libero, a pharetra augue mollis
											interdum.</p>
									</div>
								</div>
								<div class="carousel-item"
									style="width: 100%; height: 300px; overflow: hidden">
									<img src="/resources/monmo2.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Second slide label</h5>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit.</p>
									</div>
								</div>
								<div class="carousel-item"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo3.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Third slide label</h5>
										<p>Praesent commodo cursus magna, vel scelerisque nisl
											consectetur.</p>
									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleCaptions2"
								role="button" data-slide="prev"> <span
								class="carousel-control-prev-icon" aria-hidden="true"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleCaptions2" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>


						<%-- 세번째 캐러셀 --%>

						<div id="carouselExampleCaptions3"
							class="carousel slide col-4 col-md-6 col-sm-12" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleCaptions" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo4.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>First slide label</h5>
										<p>Nulla vitae elit libero, a pharetra augue mollis
											interdum.</p>
									</div>
								</div>
								<div class="carousel-item"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo2.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Second slide label</h5>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit.</p>
									</div>
								</div>
								<div class="carousel-item"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo3.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Third slide label</h5>
										<p>Praesent commodo cursus magna, vel scelerisque nisl
											consectetur.</p>
									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleCaptions3"
								role="button" data-slide="prev"> <span
								class="carousel-control-prev-icon" aria-hidden="true"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleCaptions3" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>


					<%-- 네번째 캐러셀 --%>

					<div class="second">
						<div id="carouselExampleCaptions4" class="carousel slide col-4 col-md-6 col-sm-12"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleCaptions" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active"
									style="width: 100%; height: 300px; overflow: hidden">
									<img src="/resources/monmo4.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>First slide label</h5>
										<p>Nulla vitae elit libero, a pharetra augue mollis
											interdum.</p>
									</div>
								</div>
								<div class="carousel-item"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo2.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Second slide label</h5>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit.</p>
									</div>
								</div>
								<div class="carousel-item"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo3.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Third slide label</h5>
										<p>Praesent commodo cursus magna, vel scelerisque nisl
											consectetur.</p>
									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleCaptions4"
								role="button" data-slide="prev"> <span
								class="carousel-control-prev-icon" aria-hidden="true"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleCaptions4" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>


						<%-- 다섯번째 캐러셀 --%>


						<div id="carouselExampleCaptions5" class="carousel slide col-4 col-md-6 col-sm-12"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleCaptions" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo4.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>First slide label</h5>
										<p>Nulla vitae elit libero, a pharetra augue mollis
											interdum.</p>
									</div>
								</div>
								<div class="carousel-item"
									style="width: 100%;  height: 300px; overflow: hidden">
									<img src="/resources/monmo2.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Second slide label</h5>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit.</p>
									</div>
								</div>
								<div class="carousel-item"
									style="width: 100%; height: 300px; overflow: hidden">
									<img src="/resources/monmo3.jpg" class="d-block w-100"
										alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Third slide label</h5>
										<p>Praesent commodo cursus magna, vel scelerisque nisl
											consectetur.</p>
									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleCaptions5"
								role="button" data-slide="prev"> <span
								class="carousel-control-prev-icon" aria-hidden="true"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleCaptions5" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>