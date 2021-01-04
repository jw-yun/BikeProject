<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<!-- jQuery library -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<link rel="stylesheet"href="../resources/css/member/memberJoin.css">
</head>
<body>
<c:import url="${pageContext.request.contextPath}/WEB-INF/views/template/header.jsp"></c:import>

<section style="margin-top: 100px; margin-bottom: 100px;">
<div class="container">
  
<form action="./memberJoin" method="post" id="frm">
   <h5 style="line-height: 0.2; margin-left: 300px"><b>기본정보</b></h5>
   <p style="text-align: right; font-size: 13px; color=#353535; marginline-height: 0.2; font-family: 돋움; margin-right: 300px" ><img src="../resources/images/main/ico_required.png"> 필수입력사항</p>
   <table border="1" class="table" bordercolor ="#e8e8e8" >
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;아이디 <img src="../resources/images/main/ico_required.png"></td>
         <td><input type="text" class="inputTypeText" id="id" name="id"> (영문소문자/숫자, 4~16자)
              <div id="idResult" class="result"></div>
           </td>
      </tr>
      
      <tr id="#idResult"></tr>
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;비밀번호 <img src="../resources/images/main/ico_required.png"></td>
         <td><input type="password" class="inputTypeText" id="pw" name="pw"> (영문 대/소문자/숫자 중 3가지 이상 조합, 8자~16자)
             <div id="pwResult" class="result"></div>
            </td>
      </tr>
      
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;비밀번호 확인 <img src="../resources/images/main/ico_required.png"></td>
         <td><input type="password" class="inputTypeText" id="pw2" name="pw2">
              <div id="pw2Result" class="result"></div>
            </td>
      </tr>
      <tr class="group">
      	<td class="leftrow">&nbsp;&nbsp;성별 <img src="../resources/images/main/ico_required.png"></td>
      	<td>남 <input type="radio" class="radio" name="sex" value="남" checked="checked">  여 <input type="radio" class="radio" name="sex" value="여"></td>
	  </tr>
      <tr class="group">
         <td class="leftrow">&nbsp;&nbsp;이름 <img src="../resources/images/main/ico_required.png"></td>
         <td><input type="text" class="inputTypeText empty should" id="name" name="name"></td>
      </tr>
      
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;휴대전화 <img src="../resources/images/main/ico_required.png"></td>
         <td><input type="text" class="inputTypeText empty should" id="phone" name="phone"></td>
      </tr>
      
      
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;이메일 <img src="../resources/images/main/ico_required.png"></td>
         <td><input type="email"  class="inputTypeText empty should" id="email" name="email">
         		
         		<button id="mailSend" class="authbtn" type="button">인증번호받기</button>
         </td>
      </tr>
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;인증번호 <img src="../resources/images/main/ico_required.png"></td>
         <td><input type="text"  class="inputTypeText empty should" id="emailCheck" name="emailCheck">
         		
         		<button id="mailConfirm" class="authbtn" type="button">인증번호확인</button>
         </td>
      </tr>
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;주소 <img src="../resources/images/main/ico_required.png"></td>
         <td>
            <input class="form-control should" placeholder="우편번호" name="addr1" id="addr1" type="text">
              <button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                               
         	<br>
            <input class="form-control should" placeholder="도로명 주소" name="addr2" id="addr2" type="text"/>
			<br>
            <input class="form-control should" placeholder="상세주소" name="addr3" id="addr3" type="text"  />
         </td>
      </tr>
   </table>
   <div style="text-align: center;" >   
		<input type="button" value="회원가입" class="btn btn-join" id="join">  
		<input type="button" value="회원가입취소" class="btn btn-cancel" id="cancel">
	</div>
   
</form>
</div>
</section>

<c:import url="${pageContext.request.contextPath}/WEB-INF/views/template/footer.jsp"></c:import>
<script type="text/javascript" src="../resources/js/member/memberJoin.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="../resources/js/address/address.js"></script>

</body>