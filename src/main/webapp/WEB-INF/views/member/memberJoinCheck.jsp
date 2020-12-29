<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>

<style type="text/css">
	.checkImg{
		width: 220px;
		height: 52px;
	}
	h3{
	text-align: center;
	}
	.imgBox{
		margin: 70px 0px;
	}
	.join_btn{
		margin: 0 auto;
	}
	.join_ul{
		text-align: center;
		width: 270px;
		height: 256px;
	}
	.join_general{
		background-color: #056531;
		
	}
	.join_general a{
		color:#FFFFFF;
		background: url("../resources/images/main/ic_join.png") left 14px center no-repeat;
		text-align: center;
		line-height: 43px;
	    text-align: center;
	    display: inline-block;
	    cursor: pointer;
	    width: 270px;
	    height: 43px;
	    font-weight: bold;
	    font-size: 12px;
	    border-radius: 3px;
	}	
</style>
</head>

<div>
	<div class="imgBox">
		<h3><img class="checkImg" alt="" src="${pageContext.request.contextPath}/resources/images/main/logo.png"></h3>
	</div>
	<div class="join_btn">
		<ul class="join_ul">
			<li class="join_general">
				<a href="">일반회원으로 가입</a>
			</li>
			<li><img src="${pageContext.request.contextPath}/resources/images/main/join_line.jpg"></li>
			
		
		</ul>
	</div>
	
</div>

<c:import url="../template/footer.jsp"></c:import>

