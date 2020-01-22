<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modification Check</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
   <script>
      if(${result} > 0){
         alert("정보 수정 완료!");
         location.href="${pageContext.request.contextPath}/index.mem";
      }else{
         alert("정보 수정 실패!");
         location.href="${pageContext.request.contextPath}/member/myModify.mem";
      }
   </script>
</body>
</html>