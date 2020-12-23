<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<style type="text/css">
#header{
	margin : 0 auto;
	padding-bottom: 5px;
}
#header_2{
	margin : 0 auto;
}
.top{
	height: 50px; width :20%
}
.top1{
	float: left;
}
.top2{
	float: right;
}
ul{
	padding: 0px;
	text-align: center;
}
li{
	list-style: none;
	display: inline-block;
}
.li_text{
	font-size: 12px;
}
.li_lang{
	float:left;
	padding-top:17px;
	padding-right: 10px;
}
.log{
	font-weight: bold;
}
#logo_img{
	padding-top:15px;
	width:160px;
	height:40px;
}
.log_menu{
	padding-left: 3px;
	padding-top:17px;
}
#header_menu{
	width:760px;
	height:55px;
	float:right;
}
.head_menu{
	padding-left: 50px;
	padding-top: 25px;
}
.limenu{
	font-size: 16px;
	font-weight: bold;
	
}


</style>
</head>

 <!-- Header -->
<header>
	<div id="header_wrap" style="height: 130px; width :100%">
		<div id="header" style="height: 50px; width :79%">
			<div class="top top1">
				<ul>
					<li class="li_lang"><a href="#" class="li_text">ENGLISH</a></li>
					<li class="li_lang"><a href="#" class="li_text">中國語</a></li>
					<li class="li_lang"><a href="#" class="li_text">日本語</a></li>
					<li class="li_lang"><a href="#" class="li_text">한국어</a></li>
				</ul>
			</div>
			
			<div class="top top2">
				<ul style="text-align: right;">
					<li class="log_menu"><a href="#" class="li_text log">로그인</a></li>
					<li class="log_menu"><a href="#" class="li_text log">회원가입</a></li>
					<li class="log_menu"><a href="#" class="li_text">알림</a></li>
					<li class="log_menu"><a href="#" class="li_text">이용안내</a></li>
				</ul>
			</div>
			
					
		</div>
		<hr style="margin: 0px;">
		
		
		<div id="header_2" style="height: 75px; width :79%">
			<a href="${pageContext.request.contextPath}/"><img id="logo_img" alt="" src="${pageContext.request.contextPath}/resources/images/main/logo.png"></a>
		
			<div id="header_menu">
			
				<ul style="text-align: right;">
					<li class="head_menu"><a href="#" class="li_text limenu">사업소개</a></li>
					<li class="head_menu"><a href="#" class="li_text limenu">대여소조회</a></li>
					<li class="head_menu"><a href="#" class="li_text limenu">이용권 구매</a></li>
					<li class="head_menu"><a href="#" class="li_text limenu">문의/FAQ</a></li>
					<li class="head_menu"><a href="#" class="li_text limenu">공지사항</a></li>
					<li class="head_menu"><a href="#" class="li_text limenu">안전수칙</a></li>
				</ul>
			</div>
		</div>
	</div>    
</header>
   
   
   