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
	.login_header img{
		width: 222px;
		height: 55px
	}
	#login_form{
		padding-top: 100px;
		margin: 0 auto;
	}
	#login_form td{
	}
	#login_btn{
		width: 270px;
		height: 43px;
		background-color: #056531;
	    text-align: center;
		color: white;
		font-weight: bold;
		font-size: 14px;
		border-radius: 3px;
		cursor: pointer;

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
			<table>
				<tr>
					<td>
						<input type="text" name="id" placeholder="아이디">
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" name="pw" placeholder="비밀번호" required="required">
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox">아이디 기억하기
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="로그인" id="login_btn">
					</td>
				</tr>
				<tr>
					<td>
						<ui>
							<li><a>회원가입</a></li>
							<li><a>아이디 찾기</a></li>
							<li><a>비밀번호 찾기</a></li>
							
						</ui>

					
					
					</td>
				</tr>
			</table>
	
	
		</div>
	
	</form>
</div> 
