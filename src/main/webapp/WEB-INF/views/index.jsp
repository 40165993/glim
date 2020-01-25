
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="utf-8">

<head>
    <title>Glim &mdash; </title>
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
    
   
    
    </style>
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
    <div class="border-bottom top-bar py-2">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
          </div>
          <div class="col-md-6">
            <ul class="social-media">
              <li><a href="#" class="p-2"><span class="icon-facebook"></span></a></li>
              <li><a href="#" class="p-2"><span class="icon-twitter"></span></a></li>
              <li><a href="#" class="p-2"><span class="icon-instagram"></span></a></li>
              <li><a href="#" class="p-2"><span class="icon-linkedin"></span></a></li>
            </ul>
          </div>
        </div>
      </div> 
    </div>
    <header class="site-navbar py-4 bg-white" role="banner">

      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-11 col-xl-2">
            <h1 class="mb-0 site-logo"><a href="/" class="text-black h2 mb-0">Glim</a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">     
              
              <c:if test="${loginInfo == null }">
                   로그인 후 이용하실 수 있습니다.
                    <li class="active"><a href="${pageContext.request.contextPath}/start.mem">로그인하기</a></li>
                <li><a href="${pageContext.request.contextPath}/member/signUp.mem">회원가입하기</a></li>
                   </c:if>
                       
             <c:if test="${loginInfo ne null && loginInfo.id ne 'admin' && loginInfo.vanList == 'N' }">
            ${loginInfo.nickname}님 환영합니다.
                <li class="active"><a href="/">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/member/myInfo.mem">내 정보보기</a></li>
                    <li><a href="${pageContext.request.contextPath}/member/logout.mem">로그아웃</a></li>
                          <li><a href="${pageContext.request.contextPath}/board/write.board">글쓰기</a></li>
                <li class="has-children">
                  <a href="/board.board">Category</a>
                  <ul class="dropdown">
                    <li><a href="/board/category.board?category=sisa">시사,이슈</a></li>
                    <li><a href="/board/category.board?category=inmun">인문학,철학</a></li>
                    <li><a href="/board/category.board?category=munhwa">문화, 예술</a></li>
                    <li><a href="/board/category.board?category=simli">심리, 탐구</a></li>
                    <li><a href="/board/category.board?category=IT">IT</a></li>
                  </ul>
                  </li>
                  <li><a href="${pageContext.request.contextPath}/member/membergudok.mem">구독중인작가</a></li>
                   </c:if>
                   
                   
                   
                   
                   
                   <c:if test="${loginInfo.id == 'admin' }">
                   <li class="active"><a href="/">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/memberList.admin">회원목록보기</a></li>
                  <li><a href="${pageContext.request.contextPath}/admin/vanmember.admin">블랙리스트목록보기</a></li>
                    <li><a href="${pageContext.request.contextPath}/member/logout.mem">로그아웃하기</a></li>
                  </c:if>
                  
                  <c:if test="${loginInfo.vanList == 'Y' }">      
                  	차단된 아이디입니다.
                    <li class="active"><a href="${pageContext.request.contextPath}/member/logout.mem">로그아웃하기</a></li>
                   </c:if>
            
                   
                  </ul>
            
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

          </div>

        </div>
      </div>
      
    </header>

  

    <div class="site-blocks-cover overlay" style="background-image: url(/resources/wood.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-12" data-aos="fade-up" data-aos-delay="400">
                        
            <div class="row justify-content-center mb-4">
              <div class="col-md-8 text-center">
                <h1 >GLIM <br><span class="typed-words">세상을 보는 다른 눈</span></h1>
                <p class="lead mb-5">당신의 세상을 넓혀드립니다</p>
                
          
					
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>  


  


    <section class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4">
            <div class="p-3 box-with-humber">
              <div class="number-behind">01.</div>
              <h2>누구나 쉽게</h2>
              <p><br><br>글림은 가입만 한다면 <br> 누구나 쉽게 글을 쓸 수 있습니다.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="p-3 box-with-humber">
              <div class="number-behind">02.</div>
              <h2>전문적으로</h2>
             <p><br><br>각자의 분야에 대한 <br>전문적인 지식들을 나눌 수 있습니다.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="p-3 box-with-humber">
              <div class="number-behind">03.</div>
              <h2>일상생활에 적용</h2>
             <p><br><br>컴퓨터 속 글을 넘어 <br>일상생활에 직접 적용가능한 지식들을<br> 나눕니다.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
  

    <section class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-8 text-center">
            <h2 class="text-black h1 site-section-heading text-center">CATEGORY</h2>
            <p class="lead">각 분야별 가장 인기있는 글을 지금 바로 만나보세요</p>
            <form action = "/board/categoryCard.board">
				<div id="category" style="float:center">
					<select name="category" id="select" style="width:150px">
						<option value="">카테고리선택</option>
						<option value="sisa">시사,이슈</option>
						<option value="inmun">인문학,철학</option>
						<option value="munhwa">문화, 예술</option>
						<option value="simli">심리, 탐구</option>
							<option value="IT">IT</option>
					</select>
					<button id="selectCategory" style="float:center, height:10px;">선택</button>
				</div>
				</form>
          </div>
        </div>
      </div>
        
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6 col-lg-4">
          <c:forEach var="list" items="${list }" begin="0" end="0">
            <a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}" class="media-1">
              <img src="/resources/img_1.jpg" alt="Image" class="img-fluid">
              <div class="media-1-content">
                <h2>${list.title }</h2>
                <span class="category">${list.nickname }</span>
              </div>
            </a>
            </c:forEach>
          </div>
          <div class="col-md-6 col-lg-4">
           <c:forEach var="list" items="${list }" begin="1" end="1">
            <a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}" class="media-1">
              <img src="/resources/img_2.jpg" alt="Image" class="img-fluid">
              <div class="media-1-content">
                <h2>${list.title }</h2>
                <span class="category">${list.nickname }</span>
              </div>
            </a>
             </c:forEach>
          </div>
          <div class="col-md-6 col-lg-4">
            <c:forEach var="list" items="${list }" begin="1" end="1">
            <a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}" class="media-1">
              <img src="/resources/img_3.jpg" alt="Image" class="img-fluid">
              <div class="media-1-content">
                <h2>${list.title }</h2>
                <span class="category">${list.nickname }</span>
              </div>
            </a>
             </c:forEach>
          </div>

          

          
        </div>
      </div>
    </section>


    <section class="site-section testimonial-wrap">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-8 text-center">
            <h2 class="text-black h1 site-section-heading text-center">Today's words</h2>
          </div>
        </div>
      </div>
      <div class="slide-one-item home-slider owl-carousel">
          <div>
            <div class="testimonial">
              
              <blockquote class="mb-5">
                <p>&ldquo;Learn as much by writing as by reading &rdquo;<br>&ldquo; 읽는 것만큼 쓰는 것을 통해서도 많이 배운다. &rdquo;</p>
              </blockquote>

              <figure class="mb-4 d-flex align-items-center justify-content-center">
                <div><img src="/resources/person_3.jpg" alt="Image" class="w-50 img-fluid mb-3"></div>
                <p>Lord Acton</p>
              </figure>
            </div>
          </div>
          <div>
            <div class="testimonial">

              <blockquote class="mb-5">
                <p>&ldquo;Life-transforming ideas have always come to me through books.&rdquo;<br>
                &ldquo;나의 삶을 변화시키는 아이디어는 항상 책에서 얻었다.&rdquo;</p>
              </blockquote>
              <figure class="mb-4 d-flex align-items-center justify-content-center">
                <div><img src="/resources/person_2.jpg" alt="Image" class="w-50 img-fluid mb-3"></div>
                <p>Bell Hooks</p>
              </figure>
              
            </div>
          </div>

          <div>
            <div class="testimonial">

              <blockquote class="mb-5">
                <p>&ldquo;All people want is someone to listen.&rdquo;<br>
                &ldquo;사람들이 원하는 모든 것은 자신의 얘기를 들어줄 사람이다.</p>
              </blockquote>
              <figure class="mb-4 d-flex align-items-center justify-content-center">
                <div><img src="/resources/person_4.jpg" alt="Image" class="w-50 img-fluid mb-3"></div>
                <p>Robert Spears</p>
              </figure>

              
            </div>
          </div>

          <div>
            <div class="testimonial">

              <blockquote class="mb-5">
                <p>&ldquo;By changing nothing, nothing changes.&rdquo;<br>
                &ldquo;아무것도 바꾸지 않으면 아무것도 바뀌지 않는다.&rdquo;</p>
              </blockquote>
              <figure class="mb-4 d-flex align-items-center justify-content-center">
                <div><img src="/resources/person_5.jpg" alt="Image" class="w-50 img-fluid mb-3"></div>
                <p>Hugh Elliott</p>
              </figure>

            </div>
          </div>

        </div>
    </section>

  

   
    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-5">
                <h2 class="footer-heading mb-4">About Us</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque facere laudantium magnam voluptatum autem. Amet aliquid nesciunt veritatis aliquam.</p>
              </div>
              <div class="col-md-3 ml-auto">
                <h2 class="footer-heading mb-4">Features</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <h2 class="footer-heading mb-4">Subscribe Newsletter</h2>
            <form action="#" method="post">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-white" type="button" id="button-addon2">Send</button>
                </div>
              </div>
            </form>
          </div>
        </div>
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
            var typed = new Typed('.typed-words', {
            strings: ["세상을 보는 다른 눈","세상을 여는 다른 창"],
            typeSpeed: 80,
            backSpeed: 80,
            backDelay: 4000,
            startDelay: 1000,
            loop: true,
            showCursor: true
            });
            </script>
            
            <script type="text/javascript">
            	var loginInfo= ${loginInfo};
            	console.log("loginInfo " + loginInfo);
            
            </script>

    <script src="/js/main.js"></script>
  
 
  </body>
</html>