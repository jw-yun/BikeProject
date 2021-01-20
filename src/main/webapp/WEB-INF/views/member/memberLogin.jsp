<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<style type="text/css">
	ul{
	
	}
	.container{
		margin-top: 70px;
	}
	.login_header h3{
		text-align: center;
	}
	
	.login_header img{
		width: 222px;
		height: 55px;
	}
	#login_form{
		padding-top: 100px;	
		margin: 0 auto;
		
	}
	#login_form td{
	}
	#login_btn{
		width: 300px;
		height: 43px;
		background-color: #056531;
	    text-align: center;
		color: white;
		font-weight: bold;
		font-size: 14px;
		border-radius: 3px;
		cursor: pointer;

	}
	.login_form td{
		width: 320px;
		height: 30px;
	}
	.plog{
		margin : 0 auto;
	}
	.log{
		width: 300px;
		height: 30px;
		padding : 0 10px;
	}
	.log{
	 	padding-bottom: 20px;
	}
	.logCheck{
		font-size: 12px;
	}
	.logId input{
		width:300px;
	 	height :30px;
	 	padding-left: 10px;
	 	font-size: 14px;
		border-style: none;
		border-bottom: black 1px solid;
	}
	.logPw input{
		width:300px;
	 	height :30px;
	 	padding-left: 10px;
		font-size: 14px;	
		border-style: none;
		border-bottom: black 1px solid;
	}
	.login_ul{
		text-align: center;
		margin-top: 15px;
	}
	.login_ul li{
		display: inline-block;
	}
	.login_li{
		padding-right: 5px;
	}
	.login_ul li a{
		font-size: 12px;
		font-weight: bold;
		
	}
	.login_line {
		padding-top: 15px;;
	}
	.login_line img{
		widows: 270px;
		margin: 0 auto;
	}
	
</style>
<link rel="stylesheet" href="../resources/css/common.css">
</head>

<div class="container">
	<div class="login_header">
		<h3><img alt="" src="../resources/images/main/logo.png"></h3>
	</div>
	<form action="./memberLogin" method="post">
		<div id="login_form">
			<div class="log plog logId">
				<input type="text" class ="login_input" name="id" placeholder="아이디">
			</div>
			<div class="log plog logPw">
				<input type="password" class ="login_input" name="pw" placeholder="비밀번호" required="required">
			</div>
			<div class="log plog logCheck">
				<input type="checkbox">아이디 기억하기
			</div>
			<div class="log plog logBtn">
				<input type="submit" value="로그인" id="login_btn">
			</div>
		</div>
	</form>
	<ul class="login_ul">		
		<li class="login_li"><a href="./memberCertify">회원가입 ▶</a></li>
		<li class="login_li"><a href="#">아이디 찾기 ▶</a></li>
		<li><a href="#">비밀번호 찾기 ▶</a></li>
	</ul>
	<div class="login_line">
		<img alt="" src="${pageContext.request.contextPath}/resources/images/join/join_line.jpg">
	</div>
<div id="kakao_id_login" style="text-align: center"> <a href="${kakao_url}"> 
카카오</a>
</div>



</div> 

