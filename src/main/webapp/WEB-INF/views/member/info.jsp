<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>
   *{
      box-sizing:border-box;
   }
            
   .infoBox{
      border:1px solid black;
      width:500px;
      border-radius:10px;
      margin:auto;
   }
   #titleName{
      text-align:center;
   }
   .infoBox label{
      text-align:right;
      width:100px;
      display:inline-block;
      margin-right:5px
   }
            
   .sr{
      text-align:center;
   }
</style>
</head>
<body>


<div class="infoBox">
      <h3 id="titleName">회원정보</h3>
      <label for="id">아이디 :</label>
      <input type="text" id="id" name="id" size="20" value="${result.id}" readonly>
      <br>


      <label for="name">이름 :</label>
      <input type="text" id="name" name="name" size="20" value="${result.name}" readonly>
      <br>

      <label for="nickname">닉네임 :</label>
      <input type="text" id="nickname" name="nickname" size="20" value="${result.nickname}" readonly>
      <br>
      
      <label for="birth">생일 :</label>
      <input type="text" id="birth" name="birth" size="20" value="${result.birth}" readonly>
      <br>
      
      <label for="gender">성별 :</label>
      <input type="text" id="gender" name="gender" size="20" value="${result.gender}" readonly>
      <br>
      

      <label for="phone">전화번호 :</label>
      <input type="text" id="phone" name="phone" size="20" value="${result.phone}" readonly>
      <br>
      
      <label for="phone">구독중인 작가</label>
      <c:forEach var="list" items="${list}">
       <div>${list.gudok}</div><br>
       </c:forEach>
      <br>
      
      <div style="text-align:center">
      <button id="toHome">To Home</button>
      <button id="modify">To modify</button>
   </div>
   
</div>

<script>
      $("#toHome").on("click", function(){
         location.href="${pageContext.request.contextPath}/";
      });
      $("#modify").on("click",function(){
         location.href="${pageContext.request.contextPath}/member/myModify.mem"
      })
   </script>


</body>
</html>