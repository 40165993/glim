<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Glim</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>


<link
	href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700,900"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/magnific-popup.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-datepicker.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/aos.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<style>
.panel-heading {
	font-size: 50px;
	font-weight: bold;
	background-color: #3333336e !important;
    border-color: #3333336e !important;
}
.panel-primary {
    border-color: #3333336e !important;
}

.btn-danger {
  background-color: #0d0cb5 !important;
  border-color: #0d0cb5 !important; }

#commentsListContainer {
	width: 100%;
	height: 300px;
	float: left;
	overflow: auto;
}

.comments11 {
	width: 60%;
	height: 100%;
	word-break: break-all;
	white-space: pre-line;
}

.comments {
	width: 60%;
	float: left;
	word-break: break-all;
	white-space: pre-line;
}

.commentWriter {
	width: 20%;
	float: left;
}

.update {
	width: 10%;
	float: left;
}

.updateOk {
	width: 10%;
	float: right;
}

.delete {
	width: 10%;
	float: left;
}

#submit{
width: 200px;
    height: 40px;
    font-size: 15px;
}

img {
	width: 100%;
	height: 30%;
}

.abc {
	display: inline;
	width: 50%;
	font-size:15px;
}

.btns {
    margin-top: 50px;
    margin-bottom: 100px;
    margin-left: 20px;
    padding: 10px;
    width: 150px;
    border: 0;
    border-radius: 10px;
    box-shadow: 1px 5px 20px -5px rgba(0, 0, 0, 0.4);
    color: #8a8887;
    background-color: #e3e1de;
    cursor: pointer;
    text-align: center;
    letter-spacing: 1px;
    transition: 0.3s ease;
    float: right;
    font-size: 18px;
    font-weight: bold;
}




</style>
</head>
<body>

  <%@include file="header.jsp" %>
	



	<div class="site-blocks-cover inner-page-cover overlay"
		style="background-image: url(/resources/book2.jpg);"
		data-stellar-background-ratio="0.5">
		<div class="container">
			<div
				class="row align-items-center justify-content-center text-center">

				<div class="col-md-12" data-aos="fade-up" data-aos-delay="400">

					<div class="row justify-content-center mb-4">
						<div class="col-md-8 text-center">
							<h1 class="mb-3">${dto.title }</h1>
							<p class="lead mb-5">새로운 세상으로 가는 길</p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>




	<section class="site-section border-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ml-auto" style="font-size : 30px;">
					<p >${dto.text }</p>
				</div>
			</div>
<br><br><br>

			<form action="/board/update.board" method="post">
				<c:if test="${loginInfo != null  && loginInfo.nickname == dto.nickname }">
					<input type="hidden" name="seq" value=${dto.seq }>
					<input type="hidden" name="category" value="${dto.category }">
					<button class="btns" id=updateArticle >수정하기</button>
				</c:if>
			</form>


			<form action="/board/delete.board" method="post">
				<c:if test="${loginInfo != null  && loginInfo.nickname == dto.nickname }">
					<input type="hidden" name="seq" value=${dto.seq }>
					<button  class="btns" id="deletearticle">삭제하기</button>
				</c:if>
			</form>
			<button  class="btns" id="back">돌아가기</button>



		</div>
	</section>


	<section class="site-section testimonial-wrap">
		<div class="container">






			<!-- 댓글출력 -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-comment"></span> Comments
				</div>
				<div class="panel-body">
				
					<div id="commentsList">
					<c:forEach var="list" items="${list }">
						<b>${list.writer }</b>
						<br>
						<div class="abc" id="text_${list.commentsSeq}"
							style="contenteditable: false" style="font-size:20px">${list.text }</div>
						<c:if test="${loginInfo.nickname == list.writer }">
							<button type="button" id="modi_${list.commentsSeq}"
								class="update" onclick="modi('${list.commentsSeq}')"
								style="float: right">수정</button>
							<button type="button" id="updateOK_${list.commentsSeq}"
								class="updateOk" name="commentsSeq" style="display: none"
								onclick="update('${dto.seq}','${list.commentsSeq}')">수정완료</button>
							<button id="delete_${list.commentsSeq}" class="delete"
								style="float: right"
								onclick="deleteComments('${loginInfo.nickname}','${dto.seq}','${list.commentsSeq}')">삭제</button>
							<input type="hidden" value="${list.text }" name="text"
								id="textProc_${list.commentsSeq}">
							<input type="hidden" value="${dto.seq }" name="seq">
							<input type="hidden" value="${list.commentsSeq }"
								name="commentsSeq">
						</c:if>
						<hr>
					</c:forEach>
					</div>




					<hr style="font-size:20px">
					<b>New Comment</b><br /> <br>
					<c:choose>
						<c:when test="${loginInfo != null }">
							<form action="/board/writeComments.board">
								<input ng-model="Name"
									Style="width: 80%; display: inline-block; font-size:20px" class="form-control"
									placeholder="댓글을 입력해주세요" name="text" class="comments11" id="commentsA" />
								<input type="hidden" name="seq" value="${dto.seq }">
								<input type="hidden" name="loginUser" value="${loginInfo.nickname}">
								<button class="btn btn-danger" id="submit" style="float: right">Add
									Comment</button>
							</form>
						</c:when>
						<c:otherwise>
							<input ng-model="Name" Style="width: 40%; display: inline-block;"
								class="form-control" placeholder="댓글은 로그인 이후 작성 가능합니다."
								name="text" class="comments11" />

						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
</body>



</section>


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

<script>
	$(document).ready(function() {

		function modi(seq) {
			var modi = "#modi_" + seq;
			var updateOk = "#updateOK_" + seq;
			var text = "#text_" + seq;

			$(modi).css("display", "none");
			$(updateOk).css("display", "inline");
			$(updateOk).css("float", "right");
			$(text).attr("contenteditable", "true");
		}
	});

	var modi = function(seq) {
		console.log(seq);
		var modiseq = "#modi_" + seq;
		var updateOk = "#updateOK_" + seq;
		var text = "#text_" + seq;
		var deletec = "#delete_" + seq;

		$(modiseq).css("display", "none");
		$(updateOk).css("display", "inline");
		$(text).attr("contenteditable", "true");
		$(deletec).css("display", "none");
	}

	var update = function(seq, comSeq) {

		$("#textProc_" + comSeq).val($("#text_" + comSeq).text());
		var modiseq = "#modi_" + comSeq;
		var updateOk = "#updateOK_" + comSeq;
		var deletec = "#delete_" + comSeq;
		var text = "#text_" + comSeq;

		$.ajax({
			url : "/board/updateComments.board",
			data : {
				text : $("#textProc_" + comSeq).val(),
				commentsSeq : comSeq,
				boardSeq : seq
			},
			method : "get"
		}).done(function(data) {
			console.log("success");
		}).fail(function() {
			console.log("fail");
		});

		$(modiseq).css("display", "inline");
		$(updateOk).css("display", "none");
		$(text).attr("contenteditable", "false");
		$(deletec).css("display", "inline");
	}

	/*
	var deleteComments = function(seq, comSeq){
	 var seq = seq;
	 var commentsSeq = comSeq;
	 $.ajax({
	        url : "/board/deleteComments.board",
	        data : {
	           commentsSeq : comSeq,
	           seq : seq
	        },
	        method : "get"
	     }).done(function(data) {
	   	  console.log(data)
	        console.log("success");
	        
	     }).fail(function() {
	        console.log("fail");
	     });
	}
	 */
	 
	 

	function deleteComments(loginUser, seq, comSeq) {		
		var loginUser = loginUser;
		var seq = seq; 
		console.log("delcomments스트립트인입" + seq + comSeq + loginUser);
		$.ajax({
			type : 'post',
			url : "/../board/delComments",			
			headers : {
				"Content-Type" : "application/json"
			},
			dataType : 'json',
			data : JSON.stringify({
		           commentsSeq : comSeq,
		           seq : seq
		        }),
			success : function(response) {				
				var html="";
				if(response.length>0){
					console.log(response);
					console.log("길이는"+response.length);
					console.log("첫번째 댓글쓴이는 "+response[0].writer);
					
					for(var i=0; i<response.length; i++){
						html +='<b>'+response[i].writer+'</b>'
							+'<br>'
							+'<div class="abc" id="text_'+response[i].commentsSeq
							+'"style="contenteditable: false">'+response[i].text+'</div>';
						if(loginUser==response[i].writer){
							html+= 	'<button type="button" id="modi_'+response[i].commentsSeq+'"'
								+ 'class="update" onclick="modi('+response[i].commentsSeq+')"'
								+ 'style="float: right">수정</button>'
								+ '<button type="button" id="updateOK_'+response[i].commentsSeq+'"'
								+ 'class="updateOk" name="commentsSeq" style="display: none"'
								+ 'onclick="update(\''+seq+'\',\''+response[i].commentsSeq+'\')">수정완료</button>'
								+ '<button id="delete_'+response[i].commentsSeq+'" class="delete"'
								+ 'style="float: right"'
								+ 'onclick="deleteComments(\''+loginUser+'\',\''+seq+'\',\''+response[i].commentsSeq+'\');">삭제</button>'
								+ '<input type="hidden" value="'+response[i].text+'" name="text"'
								+ 'id="textProc_'+response[i].commentsSeq+'">'
								+ '<input type="hidden" value="'+seq+'" name="seq">'
								+ '<input type="hidden" value="'+response[i].commentsSeq+'"'
								+ 'name="commentsSeq">';
						}
						html += '<hr>';							
					}
									
				}else{
					html+= '<hr>';
				}
				$("#commentsList").empty();
                $("#commentsList").append(html);	
												
				
			},
			error : function(jqXHR) {
				console.log(jqXHR.responseText);
			}
		})
	}	 

	$("#back").on("click", function() {
		location.href = "${pageContext.request.contextPath}/board.board";
	})
	
	$("#submit").on("click", function(){
		var text = $('#commentsA').val();
		if(text==""){
			alert("내용을 입력해주세요.");
		}
	})
	
	
	/*
	$("#submit").on("click", function(){
		console.log("일단클릭은됐음");
		var datas = $("#insertForm").serialize(); 
		console.log(datas);
		console.log()
		
		$.ajax({
			type : 'post',
			url : "/board/writeComments.board",			
			headers : {
				"Content-Type" : "application/json"
			},
			dataType : 'json',
			data : JSON.stringify({
		          boardSeq : seq,
		           text : text,
		           writer :writer
		        })				
			})
			
		})
*/
	
</script>

</body>
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


</html>