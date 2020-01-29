<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Glim &mdash; </title>
    
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700,900" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-datepicker.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/icomoon/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/aos.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">



<meta charset="utf-8">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
	
	
<div class="site-wrap">

    <div class="site-mobile-menu">
        <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
                <span class="icon-close2 js-menu-toggle"></span>
            </div>
        </div>
        <div class="site-mobile-menu-body"></div>
    </div>

    <%--    <div class="border-bottom top-bar py-2">--%>
    <%--      <div class="container">--%>
    <%--        <div class="row">--%>
    <%--          <div class="col-md-6">--%>
    <%--          </div>--%>
    <%--          <div class="col-md-6">--%>
    <%--            <ul class="social-media">--%>
    <%--              <li><a href="#" class="p-2"><span class="icon-facebook"></span></a></li>--%>
    <%--              <li><a href="#" class="p-2"><span class="icon-twitter"></span></a></li>--%>
    <%--              <li><a href="#" class="p-2"><span class="icon-instagram"></span></a></li>--%>
    <%--              <li><a href="#" class="p-2"><span class="icon-linkedin"></span></a></li>--%>
    <%--            </ul>--%>
    <%--          </div>--%>
    <%--        </div>--%>
    <%--      </div> --%>
    <%--    </div>--%>
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
                                <li class="active"><a href="${pageContext.request.contextPath}/start.mem">Login</a></li>
                                <li><a href="${pageContext.request.contextPath}/member/signUp.mem">Join</a></li>
                            </c:if>

                            <c:if test="${loginInfo ne null && loginInfo.id ne 'admin' && loginInfo.vanList == 'N' }">
                                ${loginInfo.nickname}님 환영합니다.
                                <%--                <li class="active">--%>
                                <li><a href="${pageContext.request.contextPath}/member/myInfo.mem">MyInfo</a></li>
                                <li><a href="${pageContext.request.contextPath}/member/logout.mem">LogOut</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/board/write.board">Write</a></li>
                                <li class="has-children">
                                    <a href="/board.board">Category</a>
                                    <ul class="dropdown">
                                        <li><a href="/board/category.board?category=sisa">시사,이슈</a></li>
                                        <li><a href="/board/category.board?category=inmun">인문학,철학</a></li>
                                        <li><a href="/board/category.board?category=munhwa">문화,예술</a></li>
                                        <li><a href="/board/category.board?category=simli">심리,탐구</a></li>
                                        <li><a href="/board/category.board?category=IT">IT</a></li>
                                    </ul>
                                </li>
                                <li><a href="${pageContext.request.contextPath}/member/membergudok.mem">Follow</a></li>
                            </c:if>





                            <c:if test="${loginInfo.id == 'admin' }">
                                <li class="active"><a href="/">Home</a></li>
                                <li><a href="${pageContext.request.contextPath}/admin/memberList.admin">MemberList</a></li>
                                <li><a href="${pageContext.request.contextPath}/admin/vanmember.admin">BlockList</a></li>
                                <li><a href="${pageContext.request.contextPath}/member/logout.mem">LogOut</a></li>
                            </c:if>

                            <c:if test="${loginInfo.vanList == 'Y' }">
                                차단된 아이디입니다.
                                <li class="active"><a href="${pageContext.request.contextPath}/member/logout.mem">LogOut</a></li>
                            </c:if>


                        </ul>

                    </nav>
                </div>


                <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

            </div>

        </div>
</div>



    <style>
    .mb-3{
    text-align:center;
    float:auto;
    }
    
    .mb-3>a{
    font-size: 30px;
    }
    
    #example{
    text-align:center;
    margin-left : 10%;
    font-size : 15px;
    margin-bottom:15%;
    }
    
    .site-blocks-cover{
    z-index:-10;
    }
    
    
#write {
   
    margin-bottom: 150px;
    padding: 10px;
    width: 150px;
    border: 0;
    border-radius: 10px;
    box-shadow: 1px 5px 20px -5px rgba(0, 0, 0, 0.4);
    color: #56453c;
    background-color: #d1d6d4;
    cursor: pointer;
    text-align: center;
    letter-spacing: 1px;
    transition: 0.3s ease;
    font-size: 15px;
}
#write:hover {
  box-shadow: 1px 5px 25px -4px rgba(0, 0, 0, 0.6);
}

    
    </style>
    
    
    
    
    
	
    </head>
    
  <body>
  
 
          <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(/resources/tt.jpg);" data-aos="fade" data-stellar-background-ratio="0.5" style="margin-top:20%">
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
    
  
  
  <table id="example" class="display" style="width: 80%" >
		<thead>
			<tr style="font-weight : 20px">
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
		<br><br><br>

	</table>
	
	<script>
		$(document).ready(function() {
			$('#example').DataTable({
			
			});
		});

	</script>
	 <form action="/board/write.board" method="post">
	<br><br>
	<c:if test="${loginInfo != null }">
	<button id="write" style="float:right">글쓰기</button>
	</c:if>
</form>
</body>
    <br><br><br>
    
  
<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-5">
                        <h2 class="footer-heading mb-4">About Us</h2>
                        <p>글이 작품이 되는 공간, 글림. <br> 우리는 좋은 글이 가지는 힘을 믿습니다. <br>
                            좋은 글은 수많은 사람들에게 큰 영향을 미치고 시간이 지나서 다시 읽어도 가치가 살아있습니다.<br>
                            글림은 작가가 지속적으로 창작 활동을 펼칠 수 있는 환경을 만들고, 좋은 글을 통하여 세상에 더 많은 감동과 영감을 주고 싶습니다. </p>
                    </div>
                    <div class="col-md-3 ml-auto">
                        <h2 class="footer-heading mb-4">Features</h2>
                        <ul class="list-unstyled">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h2 class="footer-heading mb-4">Follow Us</h2>
                        <a href="https://www.facebook.com/" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                        <a href="https://twitter.com/?lang=ko" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                        <a href="https://www.instagram.com/?hl=ko" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                        <a href="https://kr.linkedin.com/" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
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
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | SKY.LEE corp
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>

        </div>
    </div>
</footer>


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




</html>