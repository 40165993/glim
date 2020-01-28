<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>
      if(${result} > 0){
         alert("로그인성공!");
         location.href="${pageContext.request.contextPath}/";
      }else{
         alert("아이디 혹은 비밀번호가 틀렸습니다.");
         location.href="${pageContext.request.contextPath}/start.mem";
      }
   </script>


</body>
</html>