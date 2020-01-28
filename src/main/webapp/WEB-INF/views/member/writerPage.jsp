<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

*{box-sizing: border-box;
border: 1px solid black;}
#category{width:20%;}
#title{width:60%;}
#views{width:10%;}
#category, #title, #views{
float:left;
}

</style>
</head>
<body>
  <%@include file="header.jsp" %>

<div class="container">
<div id="writerInfo">작가소개
<div id="writerInfo1">${dto.writerInfo } </div></div>

<form action="/board/gudok.board">
<div id="gudokDiv">
<c:if test="${gudok < 1 }">
<input type="hidden" value="${dto.nickname }" name="nickname">
<button id="gudokBtn">구독하기</button>
</c:if>
</form>

<form action="/board/cancleGudok.board">
<c:if test="${gudok >0}">
<input type="hidden" value="${dto.nickname }" name="nickname">
<button id="clncleBtn">구독취소</button>
</c:if>
</form>
</div>


<div id="writeList">작품목록<br>
<c:forEach var="writeList" items="${writeList }">
<div id="category">${writeList.category }</div>
<div id="title"><a href="${pageContext.request.contextPath}/board/detail.board?seq=${writeList.seq}">${writeList.title }</a></div>
<div id="views">${writeList.views }</div>
</c:forEach>


</div>
</div>

</body>
</html>