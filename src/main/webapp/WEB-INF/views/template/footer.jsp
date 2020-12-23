<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
	.footer_border{
		width:100%;
		height:155px;
		border-top: #E5E5E5 1px solid;
	}
	.footer_border p{
		font-size : 11px;
	}
	dl{
	float:right;
	border-left : 1px solid #dfdfdf;
	width: 180px;
	padding: 20px 0px;
	}
	dt{
	float:left;
	font-size: 12px;
	font-weight: bold;
	line-height: 28px;
	margin-left: 12px;
	}
	ul{
	text-align: left;
	padding-bottom: 30px;
	}
	li{
	font-size: 12px;
	font-weight: bold;
	}
	dd{
	cursor: pointer;
	}
	.bd{
	border-right-color:#D0D0D0;
	border-right-width:thin;
	border-right-style:solid;
	padding-right: 15px;
	}
	.bd1{
	color:#FE4F6C;
	}
	.bdd{
	padding-left: 15px;
	}
	.faceLink{
		background-image: url("../resources/images/main/facebookLink.png");
		width: 28px;
		height: 28px;
		float:left;
		margin-left: 12px;
	}
	.instaLink{
		background-image: url("../resources/images/main/instaLink.png");
		width: 28px;
		height: 28px;
		float:left;
		margin-left:12px;
	}
	.blogLink{
		background-image: url("../resources/images/main/naverblogLink.png");
		width: 28px;
		height: 28px;
		float:left;
		margin-left:12px;
	}
</style>
<script type="text/javascript">
$('.instaLink').click(function(){
	console.log("hi");
//	var url="https://www.instagram.com/seoulbike_/";
//	window.open(url);
});
</script>
</head>
<footer>
	<div class=footer_border>
		<div style="width: 79%; margin: 0 auto; padding-top: 30px;">
			<div style="width:620px; display: inline-block;">
				<ul>
					<li class="bd bd1"><a href="#">이용약관</a></li>
					<li class="bd bdd"><a href="#">개인정보처리방침</a></li>
					<li class="bd bdd"><a href="#">보험안내</a></li>
					<li class="bdd"><a href="#">도움주신 분</a></li>
				</ul>
	
				<p>서울특별시 중구 세종대로 110 서울특별시 대표자 서정협, Tel : 1599-0120 (사업자등록번호 : 104-83-00469) 우편번호 04524</p>		
				<p>COPYRIGHT ⓒ 2018 bikeseoul All RIGHTS RESERVED</p>
			</div>
			<dl>
				<dt>sns</dt>
				<a href="https://www.facebook.com/seoulbike"><dd class="faceLink" title="페이스북 링크"></dd></a>
				<dd class="instaLink" title="인스타그램 링크"></dd>
				<dd class="blogLink" title="블로그 링크"></dd>
			</dl>
		
		</div>
	</div>
</footer>

