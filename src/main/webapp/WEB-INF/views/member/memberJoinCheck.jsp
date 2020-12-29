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
		margin-top: 70px;
	}
	
</style>
</head>

<div>
	<div class="imgBox">
		<h3><img class="checkImg" alt="" src="${pageContext.request.contextPath}/resources/images/main/logo.png"></h3>
	</div>
</div>

<c:import url="../template/footer.jsp"></c:import>

