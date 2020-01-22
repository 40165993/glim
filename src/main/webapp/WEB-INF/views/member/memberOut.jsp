<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Withdrawal Check</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
   <script>
      if(${result} > 0){
         alert("회원 탈퇴 완료!");
      }
      else{
         alert("회원 탈퇴 실패!");
      }
      location.href="${pageContext.request.contextPath}/Main";
   </script>
</body>
</html>