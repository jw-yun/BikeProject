<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../resources/css/common.css">
	<style type="text/css">
   *{
		margin: 0;
		padding: 0;
		font-family: "맑은 고딕", "Nanum Gothic", Verdana, Dotum, AppleGothic, sans-serif;
		text-decoration: none;
   }
   
   #subject{
   		cursor: pointer;
   }
   
   .search_container{
      width: 1140px;
      height: 80px;
      margin: 0 auto;
   }
   .search-form{
      width:25%;
      height: 60px;
      margin: 0 auto;
   }
   select{
      float: left;
      height: 22px;
      margin: 0 3px 0 0;
      font-size: 11px;
      border: 1px solid #d5d5d5;
      
   }
   #search_input{
      float:left;
      height: 22px;
      width: 150px;
      border: 1px solid #d5d5d5;
      font-size: 11px;
   }
   
   .search-button{
   	  float:left;
      width: 49px;
      height: 22px;
      background-color: white;
      border: 1px solid #d5d5d5;
   }
   
   .notice_title {
   	text-align: center;
   }
   
   #notice{
		border: 1px solid #000;
   		padding: 10px 50px;
   		margin: 50px auto 50px;
   		letter-spacing: 1px;
   		display: inline-block;
   }
	
	table{
		border: 1px solid #e8e8e8;
		border-top:2px solid black;
		color: #353535;
		font-size: 11px;
		padding: 10px 0;
		line-height: 14
		0%;
	}

	.ttable{
		margin: 0 auto;
		border-left: none;
		border-right: none;
		
	}
	
	.table td{
	text-align:center;
	height: 30px;
	}
	.td_title{
		width:90%;
		border-bottom:1px solid black;
	}
	#index {
		width:75%;
		height:30px;
		letter-spacing: 0.5px;
		padding: 12px 0 10px;
		font-weight: normal;
		text-align: center;
	}
	.bot_line{
		border-bottom: gray 1px solid;
	}
	
	.subject{
		text-decoration: none;
		cursor: pointer;
		color: #555555;
	}
	
	.page{
		padding: 80px 0 0;
		text-align: center;
		margin-bottom: 25px;
	}
	
	.page a{
		color: #313131;
		text-decoration: none;
	}
	
	.btn_write a {
	float: right;
    margin: 0 0px 4px 1px;
    clear: both;
    background: #fff;
    border: 1px solid #d4d8d9;
    color: #757575;
    font-family: '맑은 고딕','돋움' sans-serif;
    letter-spacing: 0px;
    padding: 15px;
    text-align: right;
    font-size: 11px;
    border-radius: 2px;
    font-weight: normal;
}

</style>
	
</head>
<body>
	<c:import url="${pageContext.request.contextPath}/WEB-INF/views/template/header.jsp"></c:import>

<div class="container">
<div class="notie_title">
  <span id="notice" ><font color="333333">공지사항</font></span>
</div>
     <div class="row">
        <div class="col-sm-8">
           <form id="searchForm" action="./noticeList">
              <input type="hidden" name="curPage" id="curPage">
             <%--  <input type="hidden" id="${member.auth}" class="admin"> --%>
           </form>
        </div>
     </div>
  
  <table class="table ttable" style="width: 1140px;">
     <tr id="index">
        <td class="td_title">제목</td>
        <td class="td_title">날짜</td> 
     </tr>
     
     <c:forEach items="${notice}" var="vo">
      <tr class="bot_line">
 <!--      	<c:set var="num" value="${pager.totalCount - ((pager.curPage-1) * 20) - vs.index}"/>  -->
        
        <td width="860px"><a  title="${vo.title}" class="subject">${vo.title}</a></td>
		
        <td style="text-align: center;" width="100px">${vo.regDate}</td>
      </tr>
    </c:forEach>
  
  </table>

<div>
<c:if test="${member.auth eq 1}">
	<span class="btn_write">
	<a href="./#" >글쓰기</a>
	</span>
</c:if>
</div>
 
  <div class="page" >
   <c:if test="${pager.before}">
      <a href="./noticeList?curPage=${pager.startNum-1}&search=${pager.search}"><</a>
      </c:if>
     <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
        <a href="./noticeList?curPage=${i}&search=${pager.search}" id="${i}">${i}</a>
     </c:forEach>
     <c:if test="${pager.after}">
     	<a href="./noticeList?curPage=${pager.lastNum+1}&search=${pager.search}">></a>
     </c:if>
  </div>

<form>
	<div class="search_container">
         <div class="search-form">
				<input id="search_input" type="text" name="search">
                <button type="submit" class="search-button">검색</button>
         </div>
	</div>
</form>
</div>
	
	<c:import url="${pageContext.request.contextPath}/WEB-INF/views/template/footer.jsp"></c:import>


<script type="text/javascript">
	$("#"+${pager.curPage}).css("color","red");
	var search='${pager.search}';
	$("#search_input").val(search);
</script>

</body>

</html>