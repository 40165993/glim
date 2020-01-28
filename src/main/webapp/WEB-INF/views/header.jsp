
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="utf-8">

<head>
    <title>Glim &mdash; </title>
    <meta charset="utf-8">
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

</head>
<body>

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

</header>