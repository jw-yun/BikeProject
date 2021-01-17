<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
*{margin:0; padding:0; font-family: 'Cabin', sans-serif, 'Arial' ,'Nanum Gothic', sans-serif; list-style: none;}
	
	#section{
		width: 1300px;
		height: 900px;
		margin: 0 auto;
	}
	.menu{
		height: 40px;
		margin: 0 auto;
		padding: 0 0 40px 0;
	}
	.menu-name{
		width: 150px;
		height: 40px;
		margin: 40px auto;
		line-height: 40px;
		text-align: center;
		border : 1px solid black;
		font-size: 12px;
	}
	table{
		width: 1140px;
		height: 80px;
		margin: 50px auto 0;
		border-collapse: collapse;
	}
	tr{
		width: 150px;
		height: 15px;
		font-size: 11px;
		background-color: #fbfafa;
		border: 1px solid #e8e8e8; 
	}
	th{
		text-align: center;
	}
	.td{
		width: 1000px;
		height: 15px;
		font-size: 11px;
		background-color: white;
		border: 1px solid #e8e8e8; 
	}
	input{
		margin: 0 0 0 10px;
		height: 25px;
		border: 1px solid #e8e8e8; 
	}
	.title{
		width: 400px;
	}
	.form-group{
		width: 1140px;
		margin: 0 auto;
	}

	.button{
		width: 1140px;
		height: 50px;
		margin: 0 auto;
	}
	.button-b{
		width: 50px;
		height: 35px;
		font-size: 11px;
		float: right;
		margin: 13px 0 0 0;
		border: 1px solid #d4d8d9;
		text-align: center;
		line-height: 35px;
	}
	.button-b:hover{
		background-color: #d4d8d9;
		color: white;
	}
	.ch{
		margin: 13px 0 0 10px;
		background-color: #6e6e6e;
		color: white;	
	}
</style>
</head>
<body>
	<div id="section">
		<div class="menu">
			<div class="menu-name">공지사항</div>
		</div>
    <form id="frm" action="./noticeWrite" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<th>제목</th>
			<td class="td"><input class="title" type="text" id="title" name="title" required="required"></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td class="td"><input type="text" id="writer" name="writer" value="관리자" readonly="readonly" required="required"></td>
		</tr>
	</table>
	
 	<div class="form-group">
      	<textarea class="form-control" rows="15" id="contents" name="contents" style="resize:none; width: 100%"></textarea>
    </div>
    
		<div class="button">
			<input type="button" id="exit" class="button-b ch" value="취소">
			<button type="submit" class="button-b li">등록</button>
		</div>
	</form>
	 
	 
	</div>
	
</body>
</html>