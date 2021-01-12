<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet" type="text/css" >
<link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css">
</head>

 <!-- Header -->
<header>
	<div id="header_wrap" style="height: 130px; width :100%">
		<div style="border-bottom: 1px solid #E5E5E5">
			<div id="header" style="height: 50px; width :79%">
				<div class="top top1">
					<ul class="">
						<li class="li_lang"><a href="#" class="li_text">ENGLISH</a></li>
						<li class="li_lang"><a href="#" class="li_text">中國語</a></li>
						<li class="li_lang"><a href="#" class="li_text">日本語</a></li>
						<li class="li_lang"><a href="#" class="li_text">한국어</a></li>
					</ul>
				</div>
				
				<div class="top top2">
					<ul style="text-align: right;">
						<c:if test="${member.auth eq 1}">
							<li class="log_menu"><a href="#" class="li_text log">관리자모드</a></li>
						</c:if>
						<c:choose>
							<c:when test="${not empty member}">
								<li class="log_menu">${member.name}님</li>
								<li class="log_menu"><a href="${pageContext.request.contextPath}/member/memberLogout" class="li_text">로그아웃</a></li>
								<li class="log_menu"><a href="#" class="li_text">마이페이지</a></li>						
							</c:when>
							<c:otherwise>
								<li class="log_menu"><a href="${pageContext.request.contextPath}/member/memberLogin" class="li_text log">로그인</a></li>
								<li class="log_menu"><a href="${pageContext.request.contextPath}/member/memberJoinCheck" class="li_text log">회원가입</a></li>
							</c:otherwise>
						</c:choose>
						<li class="log_menu"><a href="#" class="li_text">알림</a></li>
						<li class="log_menu"><a href="#" class="li_text">이용안내</a></li>

				
					</ul>
				</div>
			</div>	
		</div>
		
		
		<div id="header_2" style="height: 75px; width :79%">
			<a href="${pageContext.request.contextPath}/"><img id="logo_img" alt="" src="${pageContext.request.contextPath}/resources/images/main/logo.png"></a>
		
			<div id="header_menu">
			
				<ul style="text-align: right;">
					<li class="head_menu"><a href="#" class="li_text limenu">사업소개</a></li>
					<li class="head_menu"><a href="#" class="li_text limenu">대여소조회</a></li>
					<li class="head_menu"><a href="#" class="li_text limenu">이용권 구매</a></li>
					<li class="head_menu"><a href="#" class="li_text limenu">문의/FAQ</a></li>
					<li class="head_menu"><a href="${pageContext.request.contextPath}/notice/noticeList" class="li_text limenu">공지사항</a></li>
					<li class="head_menu"><a href="#" class="li_text limenu">안전수칙</a></li>
				</ul>
			</div>
		</div>
	</div>    
</header>
<hr style="border:solid 1px #77ECCA">
   
   
   