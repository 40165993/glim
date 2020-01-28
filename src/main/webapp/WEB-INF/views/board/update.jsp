<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<title>Insert title here</title>

<style>
img{
width:80%;
height:10%;
over-flow:hidden;
}

#write {
   margin-top: 80px;
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
<script>

$(function(){
	$("#writeform").on("submit", function(){
		$("#text").val($(".note-editable").html());
	})
})
</script>
</head>
<body>

 <%@include file="header.jsp" %>
 
					<div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3"
						style="position: relative; top: 3px;">
						<a href="#" class="site-menu-toggle js-menu-toggle text-black"><span
							class="icon-menu h3"></span></a>
					</div>
 

<div class="site-blocks-cover inner-page-cover overlay"
		style="background-image: url(/resources/real.jpg);" 			
		data-stellar-background-ratio="0.2" style="background : none"></div>
		
		<section class="site-section border-bottom">

		<div class="container">
			<div class="row">
				<div class="col-md-12 ml-auto">
		
		<form action="updateProc.board" method = "post" accept-charset="utf-8" id="writeform">	
	<br><br>
					<h3 class="mb-3">글 수정하기</h3>
<input type = "text" name = "title" placeholder="제목" value="${dto.title }">
<input type="hidden" name="seq" value="${dto.seq }">
<select name="category">
<option value="">카테고리선택</option>
 <option value="sisa">시사,이슈</option>
    <option value="inmun">인문학,철학</option>
    <option value="munhwa">문화,예술</option>
    <option value="simli">심리,탐구</option>
     <option value="IT">IT</option>
</select>
<textarea style="display:none" name="text" id="text" ></textarea>
<div id="summernote" >${dto.text }</div>
<button type="submit" style="float:right" id="write">수정완료</button> 
</form>
</div></div></div>
	</section>




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

    <script>
   
    	
 
    $('#summernote').summernote({
        placeholder: 'Hello bootstrap 4',
        tabsize: 2,
        height: 500,
        callbacks: {
        	 onImageUpload: function(files) {
        	   var data = new FormData();
        	   data.append("image" , files[0]);
        	   $.ajax({
        		   url : "/ajaxImage.board",
        		   data : data,
        		   type : "post",
        		   enctype : "multipart/form-data",
        		   processData : false,
        		   cache : false,
        		   contentType : false
        		   }).done(function(resp){
        			   var img = $("<img>");
        			   img.attr("src", resp);
        			   $("#summernote").summernote("insertNode",img[0]);
        		   }).fail(function(a,b,c){
        			   console.log(a);
        		   console.log(b);
        			   console.log(c); 
        		   })
        	   }
          }
      });
   

      
    </script>


</body>
</html>