<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<style>

*{
font-size: : 200px;
 box-sizing: border-box;
  margin: 0px; 
  text-align : center;
}

body, html {
	margin: 0;
	padding: 0;
	height: 100%;
}


.bgimg {
	
	border: 0;
	padding: 0;
	background-image: url('/resources/wood.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}


#fieldset{
display: flex;
width:100%;
    height: 100vh;
    justify-content: center; /*가로에서 가운데에 요소(자식요소)를 배치하겠다*/
    align-items: center; /* 세로에서 가운데에 요소를 배치하겠다 */
 
}

#loginform{
  position: absolute;
    top: 45%;  left: 50%;
     border-radius: 10%;
    width: 300px; height: 300px;
    margin-left: -150px;
    margin-top : -80px;
    background-color : #faf8f7;

}

#id, #pw{
width : 200px;
height:30px;
text-hieght:100%;
top: -10%;
}

#login, #signUp{
border-radius: 10%;
background-color: #6db83d;
color: #faf8f7;

}

#buttons{
position:relative;
width:100%;
heignt:30%;
 border-radius: 10%;
background-color : #faf8f7;
}
</style>
</head>
<body>
<div class="bgimg col-12">
   <c:choose>

      <c:when test="${loginInfo==null }">
      <div id="filedset">
         <form action="${pageContext.request.contextPath}/member/login.mem"
            method="post" id=frm>
            <div id="loginform">
            <br>
            <h1>Login</h1><br>
            <input type=text id=id name=id placeholder="아이디를 입력하세요."><br><br>
            <input type="password" id=pw name=pw placeholder="패스워드를 입력하세요."><br><br><br>
            <div id="buttons">
            <button id=login>Login</button>
            <button type="button" id="signUp">signUp</button>
         </div>
         </div>
         </form>
       </div>

         <script type="text/javascript">
   $("#login").on("click",function(){
      $("frm").submit();
   })
      $("#signUp").on("click",function(){
      location.href="${pageContext.request.contextPath}/member/signUp.mem";
   })
   
   </script>

      </c:when>

      <c:otherwise>

${loginInfo }님 환영합니다.
         <button id=logout type="button">로그아웃</button>
         <button id="memberList" type=button>회원목록</button>
         <button id="myPage" type=button>마이페이지</button>
         <button id="myModify" type=button>정보수정</button>
         <button id="board" type=button>게시판</button>

      </c:otherwise>

   </c:choose>
</div>
   <script>

$("#memberList").on("click",function(){
   location.href = "${pageContext.request.contextPath}/member/memberList.mem"
});
$("#myPage").on("click",function(){
   location.href = "${pageContext.request.contextPath}/member/myPage.mem"
});
$("#logout").on("click",function(){
   location.href = "${pageContext.request.contextPath}/member/logout.mem"
   });
$("#myModify").on("click",function(){
   location.href = "${pageContext.request.contextPath}/member/myModify.mem"
})
$("#board").on("click",function(){
   location.href="${pageContext.request.contextPath}/board/board.bo"
})


</script>


</body>
</html>