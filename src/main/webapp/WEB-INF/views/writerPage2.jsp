<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Glim &mdash;</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700,900" rel="stylesheet">
  
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-datepicker.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/aos.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    
    
    <style>
    .mb-3{
    text-align:center;
    float:auto;
    }
    
    .mb-3>a{
    font-size: 30px;
    }
    
    </style>
  </head>
  <body>
    <%@include file="header.jsp" %>
  
 

  

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(/resources/sky22.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-12" data-aos="fade-up" data-aos-delay="400">
                        
            <div class="row justify-content-center mb-4">
              <div class="col-md-8 text-center">
               <h3>${dto.nickname }</h3>
                <p class="lead mb-5">${dto.writerInfo }</p>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>  
    
    

    
    <section class="site-section border-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12 ml-auto">
          <c:forEach var="writeList" items="${writeList }">

<h3 class="mb-3" ><a href="${pageContext.request.contextPath}/board/detail.board?seq=${writeList.seq}">${writeList.title }</a></h3>

</c:forEach>
          </div>
        </div>
      </div>
    </section>


    <section class="site-section testimonial-wrap">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-8 text-center">
            <h2 class="text-black h1 site-section-heading text-center">작가소개</h2>
          </div>
        </div>

        <div class="row">
          <div class="col-12">
            <div class="testimonial">
              
              <blockquote class="mb-5">
                <p>&ldquo;${dto.writerInfo }&rdquo;</p>
              </blockquote>

              <figure class="mb-4 d-flex align-items-center justify-content-center">
                <div><img src="/resources/sky.jpg" alt="Image" class="w-50 img-fluid mb-3"></div>
                <p>${dto.nickname }</p>
              </figure>
            </div>
          </div>
        </div>
      </div>
      
 <c:if test="${dto.nickname != loginInfo.nickname }">
<form action="/board/gudok.board">
<div id="gudokDiv" style="text-align:center">
<c:if test="${gudok < 1 }">
<input type="hidden" value="${dto.nickname }" name="nickname" id="nickname">
<button id="gudokBtn" style="text-align:center">구독하기</button>
</c:if>
</div>
</form>
<form action="/board/cancleGudok.board">
<div id="gudokDiv" style="text-align:center">
<c:if test="${gudok >0 }">
<input type="hidden" value="${dto.nickname }" name="nickname" id="nickname2">
<button id="clncleBtn">구독취소</button>
</c:if>
</div>
</form>
</c:if>

    </section>
    
   <%@include file="footer.jsp" %>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/js/jquery-ui.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/owl.carousel.min.js"></script>
	<script src="/js/jquery.stellar.min.js"></script>
	<script src="/js/jquery.countdown.min.js"></script>
	<script src="/js/jquery.magnific-popup.min.js"></script>
	<script src="/js/bootstrap-datepicker.min.js"></script>
	<script src="/js/aos.js"></script>
	<script src="/js/typed.js"></script>
  <script src="/js/main.js"></script>
 
 
 <script>
 /*
  $("#gudokBtn").on("click",function(){
	  $.ajax({
		  url:"/board/gudok.board",
		  data : {
			  nickname : $("#nickname").val()
		  },
		  method:"get"
	  }).done(function(data){
		  console.log("success");
	  }).fail(function(data){
		  console.log("fail");
	  });
	  
  })
  */
 
 </script>
    
  </body>
</html>