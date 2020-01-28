<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp" %>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--<meta charset="UTF-8">--%>
<%--<title>Insert title here</title>--%>
<%--<script src="https://code.jquery.com/jquery-3.4.1.js"></script>--%>
<%--<style>--%>
<%--* {--%>
<%--	font-size: : 200px;--%>
<%--	box-sizing: border-box;--%>
<%--	margin: 0px;--%>
<%--	text-align: center;--%>
<%--}--%>

<%--body, html {--%>
<%--	margin: 0;--%>
<%--	padding: 0;--%>
<%--	height: 100%;--%>
<%--}--%>

<%--.bgimg {--%>
<%--	border: 0;--%>
<%--	padding: 0;--%>
<%--	background-image: url('/resources/wood.jpg');--%>
<%--	min-height: 100%;--%>
<%--	background-position: center;--%>
<%--	background-size: cover;--%>
<%--}--%>

<%--.infoBox {--%>
<%--	position: absolute;--%>
<%--	top: 35%;--%>
<%--	left: 40%;--%>
<%--	border-radius: 10%;--%>
<%--	width: 600px;--%>
<%--	height: 650px;--%>
<%--	margin-left: -100px;--%>
<%--	margin-top: -150px;--%>
<%--	background-color: #faf8f7;--%>
<%--}--%>

<%--#titleName {--%>
<%--	text-align: center;--%>
<%--}--%>

<%--.infoBox label {--%>
<%--	text-align: right;--%>
<%--	width: 100px;--%>
<%--	display: inline-block;--%>
<%--	margin-right: 5px--%>
<%--}--%>

<%--.sr {--%>
<%--	text-align: center;--%>
<%--}--%>
<%--</style>--%>
<%--</head>--%>
<%--<body>--%>

<%--	<div class="bgimg col-12">--%>
<%--		<div class="infoBox">--%>
<%--			<br>--%>
<%--			<br>--%>
<%--			<br>--%>
<%--			<h3 id="titleName">회원정보</h3>--%>
<%--			<br>--%>
<%--			<br>--%>
<%--			<br> <label for="id">아이디 :</label> <input type="text" id="id"--%>
<%--				name="id" size="20" value="${result.id}" readonly> <br>--%>
<%--			<br> <label for="name">이름 :</label> <input type="text" id="name"--%>
<%--				name="name" size="20" value="${result.name}" readonly> <br>--%>
<%--			<br> <label for="nickname">닉네임 :</label> <input type="text"--%>
<%--				id="nickname" name="nickname" size="20" value="${result.nickname}"--%>
<%--				readonly> <br>--%>
<%--			<br> <label for="birth">생일 :</label> <input type="text"--%>
<%--				id="birth" name="birth" size="20" value="${result.birth}" readonly>--%>
<%--			<br>--%>
<%--			<br> <label for="gender">성별 :</label> <input type="text"--%>
<%--				id="gender" name="gender" size="20" value="${result.gender}"--%>
<%--				readonly> <br>--%>
<%--			<br> <label for="phone">전화번호 :</label> <input type="text"--%>
<%--				id="phone" name="phone" size="20" value="${result.phone}" readonly>--%>
<%--			<br>--%>
<%--			<br> --%>
<%--			<br>--%>
<%--			<br>--%>
<%--			--%>
<%--		--%>

<%--			<div style="text-align: center">--%>
<%--				<button id="toHome">돌아가기</button>--%>
<%--				<button id="modify">수정하기</button>--%>
<%--				<button id="memberOut">탈퇴하기</button>--%>
<%--			</div>--%>

<%--		</div>--%>
<%--	</div>--%>



<%--	<script>--%>
<%--      $("#toHome").on("click", function(){--%>
<%--         location.href="${pageContext.request.contextPath}/";--%>
<%--      });--%>
<%--      $("#modify").on("click",function(){--%>
<%--         location.href="${pageContext.request.contextPath}/member/myModify.mem"--%>
<%--      })--%>
<%--       $("#memberOut").on("click",function(){--%>
<%--    	   var cancelConfirm = confirm("탈퇴하시겠습니까?");--%>
<%--    	   if(cancelConfirm == true){--%>
<%--               location.href="${pageContext.request.contextPath}/member/memberOut.mem";--%>
<%--           }--%>
<%--      })--%>
<%--   </script>--%>


<%--</body>--%>
<%--</html>--%>


<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(/resources/hero_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
	<div class="container">
		<div class="row align-items-center justify-content-center text-center">

			<div class="col-md-12" data-aos="fade-up" data-aos-delay="400">

				<div class="row justify-content-center mb-4">
					<div class="col-md-8 text-center">
						<h1>My Info</h1>
						<p class="lead mb-5">회원정보를 확인하고 수정할 수 있습니다</p>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<div class="site-section bg-light">
	<div class="container">
		<div class="row">
			<div class="col-md-70 mb-5">

				<div class="p-5 bg-white">

					<h2 class="h4 text-black mb-5">My Info</h2>

					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="id">아이디</label>
							<input type="email" class="form-control" id="id" name="id" size="20" value="${result.id}" readonly>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="name">이름</label>
							<input type="text" class="form-control" id="name" name="name" size="20" value="${result.name}" readonly>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="nickname">닉네임</label>
							<input type="text" class="form-control" id="nickname" name="nickname" size="20" value="${result.nickname}" readonly>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="birth">생년월일</label>
							<input type="text" class="form-control" id="birth" name="birth" size="20" value="${result.birth}" readonly>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="phone">전화번호</label>
							<input type="text" class="form-control" id="phone" name="phone" size="20" value="${result.phone}" readonly>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="message">작가소개</label>
							<input type="textarea" name="writerInfo" class="form-control" id="writerInfo" cols="30" rows="7" value="${result.writerInfo}" readonly>
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-12">
							<button id="toHome" onclick="toHome()" value="메인으로" class="btn btn-primary btn-md text-white">메인으로</button>
							<button id="modify"  onclick="modify()" value="수정하기" class="btn btn-primary btn-md text-white">수정하기</button>
							<button id="memberOut" onclick="memberOut()" value="회원탈퇴" class="btn btn-primary btn-md text-white">회원탈퇴</button>
						</div>
					</div>

					<script>
						function toHome(){
							location.href="${pageContext.request.contextPath}/";
						}
						function modify(){
							location.href="${pageContext.request.contextPath}/member/myModify.mem"
						}
						function memberOut(){
							var cancelConfirm = confirm("탈퇴하시겠습니까?");
							if(cancelConfirm == true){
								location.href="${pageContext.request.contextPath}/member/memberOut.mem";
							}
						}
					</script>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>



<%@include file="../footer.jsp" %>