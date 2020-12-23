<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link href="./resources/css/common.css" rel="stylesheet" type="text/css" >
<style type="text/css">
	#main_choice{
		background: #EFEFEF;
		width: 100%;
		height: 125px;
	}
	.mainTap{
	font-size: 24px;
	font-weight: normal;
	color: #333333;
	padding-top:30px;
	padding-left: 95px;
	
	}
	.mt1 a{
		background: url("../resources/images/main/mainTab_1.gif") center no-repeat;
		display: block;
		cursor:pointer;
		width:265px;
		height: 65px;
		line-height: 65px;
		text-align: center;
	}	
	.mt2 a{
		background: url("../resources/images/main/mainTab_2.gif") center no-repeat;
		display: block;
		cursor:pointer;
		width:265px;
		height: 65px;
		line-height: 65px;
		text-align: center;
	}	
	.mt3 a{
		background: url("../resources/images/main/mainTab_3.gif") ;
		display: block;
		cursor:pointer;
		width:265px;
		height: 65px;
		line-height: 65px;
		text-align: center;
	}	
	.mt4 a{
		background: url("../resources/images/main/mainTab_4.gif");
		display: block;
		cursor:pointer;
		width:265px;
		height: 65px;
		line-height: 65px;
		text-align: center;
	}	



</style>
</head>


<body>
	<c:import url="./template/header.jsp"></c:import>
	<hr style="border:solid 1px #77ECCA">
	<img alt="" src="${pageContext.request.contextPath}/resources/images/main/main_img.png" style="width: 100%">
	<div id="main_choice">
		<ul>
	 		<li class="mainTap mt1"><a href="#">대여방법</a></li>
			<li class="mainTap mt2"><a href="#">반납방법</a></li>
			<li class="mainTap mt3"><a href="#">대여소현황</a></li>
			<li class="mainTap mt4"><a href="#">대여하기</a></li>
		</ul>
	</div>


</body>


</html>

