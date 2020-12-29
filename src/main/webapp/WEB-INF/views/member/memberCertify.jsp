<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<head>
	<style type="text/css">
		.content{
			height:400px;
			margin-bottom: 40px;
		}
		.sub_title{
			font-size: 24px;
			width:1100;
			margin: 0 auto;
		}
		.join_info{
			padding : 20px 40px;
			background-color:#EFEFEF; 
			width: 1030px;
			height: 50px;
			margin: 0 auto;
			margin-bottom: 50px;
			
		}
		.join_h3{
			text-align: center;
		}
		.joinText{
		padding : 50px 0px 30px;
		}
		.join_span{
			color : #666666;
			font-size:12px; 
		}
		.join_btn{
		border:1px #056531 solid;
		margin: 0px auto 0px 15%;
	    color: #fff;
	    background-color: #056531;
	    border-radius: 3px;
	    text-align: center;
	    width: 310px;
	    height:80px;
	    float: left;
		}
		.join_btn a{
			width: 50%;
		    height: 50px;
		    line-height: 40px;
		    font-size: 16px;
		    color: #fff;
		    font-weight: bold;
		    box-sizing: border-box;
		}
	</style>	

	
</head>
<body>
<c:import url="${pageContext.request.contextPath}/WEB-INF/views/template/header.jsp"></c:import>
<div class="container">
	<div class="content">
		<div class="sub_title">
			<h3 class="joinText">회원가입</h3>
		</div>
		<div class="join_info">
			<h3 class="join_h3">[회원가입 안내]</h3>
			<span class="join_span">● 서울자전거 따릉이는 만14세 이상(일반회원), 만 13세로 구분하여 회원가입이 가능합니다.</span><br>
			<span class="join_span">● 위의 사항에 동의할 경우에만 아래의 가입하기 버튼을 눌러 진행하여 주기 바랍니다.</span>
		</div>
	<button class="join_btn" title="13"><a>만 13세 이하<br>회원가입</a></button>
	<button class="join_btn" title="14"><a>만 14세 이상<br>회원가입</a></button>
	</div>
</div>

<c:import url="${pageContext.request.contextPath}/WEB-INF/views/template/footer.jsp"></c:import>

<script type="text/javascript">
	$('.join_btn').click(function(){
		if($(this).attr("title")==13){
			alert("만 13세 이하는 이용할 수 없습니다.")
			location.href="../";
		}else{
			location.href="";
			}
	});

</script>

</body>