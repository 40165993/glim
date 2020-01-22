<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        
    <style>
        *{box-sizing:border-box;}
        div{border: 1px solid black;}
        
        .slideimg, .innerDiv{
            float:left;
            text-align: center;
            align-items: center;
        }
        
        .slideimg{
        z-index:-1;
        }
        
        #background{
        width:100%;
        height:100%;
        z-index : -20;
        }
        
        
        #startBtn{
            
        }
 
    </style>
</head>


<body>

 
	  
 <!-- container -->
 <div>
 <img src="/resources/배경.jpg" id="backgound">
	<div class="container col-12" >

	
	<!-- 헤더 -->
	<div class="header col-12" style="width: 100%; height: 200px; text-align: center">
	    <img src="/resources/jh.jpg" class="logo" style="width 100%; height: 100%; overflow: hidden; margin: 0px; padding: 0px; align-items: center; background-size:cover">
	</div>
     
     <!-- 네비게이션 -->
    
	     <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav" >
    <ul class="navbar-nav" style="margin: auto">
      <li class="nav-item active">
        <a class="nav-link" href="/board/category.board?category=시사,이슈">시사,이슈 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/board/category.board?category=인문학,철학">인문학,철학</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/board/category.board?category=문화,예술">문화,예술</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/board/category.board?category=심리,탐구">심리탐구</a>
      </li>
       <li class="nav-item">
         <a class="nav-link" href="/board/category.board?category=IT" tabindex="-1" aria-disabled="true">IT트랜드</a>
      </li>
    </ul>
  </div>
</nav>


<div>
<c:choose>
<c:when test="${loginInfo == null }">
	 	 <button id=login>로그인하기</button>
	 	 <button id="signUp">회원가입하기</button>
	  </c:when>
	  
<c:otherwise>
            <h3>${loginInfo.nickname}님 환영합니다.</h3>
            
            <button class="btns" id="myInfo">내 정보</button>
            <button class="btns" id="myModify">정보 수정</button>
            <br><br>
            <button class="btns" id="logout">로그아웃</button>
            <button class="btns" id="memberOut">회원 탈퇴</button>
            <br><br>
          
</c:otherwise>
</c:choose>
</div>

	 	
	
	 	
	 
	  
	  
	<div class="row mt-2" style="margin: auto; text-align: center; align-items: center;">
	   <!-- <div class="col d-none d-sm-block"></div>-->
	     
	        <!-- 중심내용 -->
     <h6>카테고리별 인기글 <span class="badge badge-secondary">Popular</span></h6>
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    </div>
    <div class="carousel-item">
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
    </div>
    <div class="carousel-item">
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
    </div>
    <div class="carousel-item">
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
    </div>
    <div class="carousel-item">
      <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 

<div class="row mt-2" style="margin: auto; text-align: center; align-items: center;">
   <div class="col-12" style="height: 50px;"></div>
    <h6>카테고리별 인기글 <span class="badge badge-secondary">Popular</span></h6>
  <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
    </div>
    <div class="carousel-item">
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
    </div>
    <div class="carousel-item">
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
    </div>
    <div class="carousel-item">
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
    </div>
    <div class="carousel-item">
      <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="제목뜨나요?"></a>
    <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
     <a href="#">
      <img src="/resources/logo.png" class="slideimg d-block w-25" alt="..."></a>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	        
	  <!--  <div class="col d-none d-sm-block"></div>-->
	
	
	<!-- 푸터-->
	<div style=background-color:lightgray>
	    <div >
	    
	    <div class="row bg-light mt-2">
    <div class="col d-none d-sm-block"></div>
        <div id="footer" class="col-12 col-sm-6">
            <div class="row p-1">
                <div id="footer-logo" class="col-4 d-none d-lg-block">
                    <img id="logo" src="/resources/logo.png" class="col-12">
                </div>
                <div id="footer-contents" class="col-12 col-lg-8">
                    <div class="row">
                        <div class="col-12 col-sm-auto"><a href="#">회사소개</a></div>
                        <div class="col-12 col-sm-auto"><a href="#">이용약관</a></div>
                        <div class="col-12 col-sm-auto"><a href="#">개인정보취급방침</a></div>
                        <div class="col-12 col-sm-auto"><a href="#">저작권안내</a></div>
                        <div class="col-12 col-sm-auto"></div>
                    </div>
                    <div class="row mt-1">
                        <div class="col-12 text-left">
                            상호명 : glim | 대표자 : 글림 | 사업자등록번호 : 100-12-191205
                        </div>
                        <div class="col-12 text-left">
                            주소 : 서울 중구 남대문로 120 대일빌딩 3층 F Class
                        </div>
                        <div class="col-12 text-left">
                            대표전화 : 02-1544-9970
                        </div>
                        <div class="col-12 text-left">
                            Copyright(c) 2019 글림 All Rights Reserved.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <div class="col d-none d-sm-block"></div>
</div>
</div>
</div>
</div>
<script>
$("#login").on("click", function(){
   location.href = "${pageContext.request.contextPath}/start.mem";
})
            </script>
	    
	      </div>
	</div>
	
	</div>
<!-- container --> 
</body>
</html>