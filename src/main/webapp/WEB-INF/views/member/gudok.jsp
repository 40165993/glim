<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp" %>
<style>

.mb-3{
    text-align:center;
    float:auto;
    }
    
    .mb-3>p{
    
     text-align:center;
    }
     .mb-3>p>a{
     font-size: 20px;
     }
    
</style>

<body>


	


	<div class="site-blocks-cover inner-page-cover overlay"
		style="background-image: url(/resources/book3.jpg);" 
		data-stellar-background-ratio="0.5">
		<div class="container">
			<div
				class="row align-items-center justify-content-center text-center">

				<div class="col-md-12" data-aos="fade-up" data-aos-delay="400">

					<div class="row justify-content-center mb-4">
						<div class="col-md-8 text-center">
							<h1>새로운 세상으로의 인도자</h1>
							<p class="lead mb-5">지금 확인해보세요.</p>
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
					<h3 class="mb-3">구독중인작가
					<c:forEach var="list" items="${list }">
					<p><a href="${pageContext.request.contextPath}/board/writer.board?nickname=${list.gudok}">${list.gudok}</a></p>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>


	<section class="site-section testimonial-wrap">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-8 text-center">
					<h2 class="text-black h1 site-section-heading text-center"></h2>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<div class="testimonial">

						<blockquote class="mb-5">
							<p>&ldquo;어떤 주제에 대한 지식을 정리하기 위해서는 먼저 책을 읽고 관련분야의 전문가를 만나고 생각을 충분히 하는 과정이 필요하다. 여기에 한 가지를 더한다면 그것은 바로 글쓰기다.&rdquo;</p>
						</blockquote>

						<figure
							class="mb-4 d-flex align-items-center justify-content-center">
							<div>
								<img src="/resources/book.jpg" alt="Image"
									class="w-50 img-fluid mb-3">
							</div>
							<p>작가 공병호</p>
						</figure>
					</div>
				</div>
			</div>
		</div>

	</section>


	<%@include file="../footer.jsp" %>
