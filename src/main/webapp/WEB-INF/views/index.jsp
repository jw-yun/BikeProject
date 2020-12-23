<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link href="./resources/css/common.css" rel="stylesheet" type="text/css" >
<link href="./resources/css/index.css" rel="stylesheet" type="text/css">

</head>


<body>
	<c:import url="./template/header.jsp"></c:import>
	<hr style="border:solid 1px #77ECCA">
	<img alt="" src="${pageContext.request.contextPath}/resources/images/main/main_img.png" style="width: 100%">
	<div id="main_choice">
		<ul style="width: 95%; margin : 0 auto; padding-left: 130px;" >
	 		<li class="mainTap mt1"><a href="#">대여방법</a></li>
			<li class="mainTap mt2"><a href="#">반납방법</a></li>
			<li class="mainTap mt3"><a href="#">대여소현황</a></li>
			<li class="mainTap mt4"><a href="#">대여하기</a></li>
		</ul>
	</div>
	<div>
		<div style="height: 40px">
		</div>
		<img src="${pageContext.request.contextPath}/resources/images/main/main_seoul.png" style="width: 630px; height: 202px; display:block; margin: 0 auto;">
		<div style="height: 40px">
		</div>
	</div>

	<div>
		<ul>
			<li class="bn bn_1">
				<div class="text tbn_1">
					<p>건강한 자전거 도시</p>
					<span style="color: #CCCCCC;">자전거 이용의 생활화를 통한 시민건강 증진 실현</span>
				</div>
			</li>
			<li class="bn bn_2"></li>
			<li class="bn bn_3"></li>
			<li class="bn bn_4">
				<div class="text tbn_4">
					<p>깨끗한 자전거의 도시</p>
					<span style="color: #CCCCCC;">자전거 교통수단 분담률을 향상시켜 CO2 발생 감소실현</span>
				</div>
			</li>
			<li class="bn bn_5">
				<div class="text tbn_1">
					<p>녹색 성장 선도 도시</p>
					<span style="color: #CCCCCC;">국가 비전인 "저탄소 녹색성장" 실현</span>
				</div>
			</li>
			<li class="bn bn_6"></li>
		</ul>
	</div>

	<div id="main_info">
		<h2>대여소 안내</h2>
		<ul>
			<li class="rounded"></li>
		</ul>
	
	</div>
	<div>
		<h2>대여소 구성요소</h2>
	</div>


</body>
<c:import url="./template/footer.jsp"></c:import>

<script type="text/javascript">

</script>
</html>

