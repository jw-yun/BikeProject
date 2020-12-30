<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<style type="text/css">
	*{
      margin: 0;
      padding: 0;
   }
   .table tr{
      width: auto;
      padding: 10px 0 8px 10px;
      vertical-align: middle;
      font-size: 13px;
          font-family: 돋움;
         color: #2e2e2e;
   }
   
   .agree{
      border: 1px solid #d7d5d5;
      background: #fbfafa;
      padding: 20px 20px 1px 20px;
      margin-bottom: 60px;
      font-size: 12px;
   
   }
   
   
   .leftrow{
      background-color: #fbfafa;
    
   }
   
   .group{
      border: 1px solid #d9d9d9;
   }
   
   .tab{
	   	width:80%;
		margin:0 auto;
    	margin-top: 50px;
   }
   
   .que{
      font-size: 12px; color=#202020;
       line-height: 0.2;
       
   }
   .result{
   	font-size: 11px;
   	
   }
   
       .btn:hover{
        background-color: #D4D8D9;
        color: white;
   }
   
   .btn{
     text-align: center;
     text-decoration: none;
     font-size: 12px;
     padding: 14px 18px;
     border-radius: 2px;
     letter-spacing: 0px;
   }
   
   .btn-join{
        border: none;
     background-color: #6e6e6e;
     color: white;
   }
   
   .btn-cancel{
        border: 1px solid #d4d8d9;
        background-color: white;
   }
   .authbtn{
     border: 1px solid #d4d8d9;
   	background-color: white;
   }
</style>
</head>
<body>
<c:import url="${pageContext.request.contextPath}/WEB-INF/views/template/header.jsp"></c:import>

<div class="tab">
   <p style="line-height: 0.2;"><b>이용약관동의</b><p style="text-align: right; font-size: 13px; color=#353535; line-height: 0.2; font-family: 돋움;"><input id="checkall" type="checkbox"> 전체 동의</p></p>
      <div class="agree">
   <p><textarea rows="5" style="width:100%" readonly="readonly">제1조 (목적)
본 약관은 서울특별시에서 도입‧운영하는 서울공공자전거 이용에 관한 조건 및 기타 필요한 사항을 규정하는 것을 목적으로 합니다.

제2조 (이용약관의 공지)
➀ 서울공공자전거 이용을 위한 회원가입 시(또는 약관시행일 이후 이용권 신규 구매 시), 이용자는 본약관의 내용을 이해하고 동의한 것으로 간주합니다.
➁ 서울공공자전거는 관련 법령에 위반되지 않는 범위내에서 본 약관을 개정할 수 있으며, 약관 변경 시 시행일로 최소 7일 이상의 고객 고지기간을 둡니다. 변경된 약관은 고지기간 중 공지한 시행일로부터 효력을 발생합니다.
➂ 이용자가 상기 고지기간 중 변경된 약관에 대한 명시적인 거절의 의사표시를 하지 않았을 때에는 본 약관 변경에 동의한 것으로 간주됩니다. 개정약관에 동의하지 않을 경우, 이용자는 약관제12조에 따라 회원가입을 해지(탈퇴)할 수있습니다.

제3조 (약관 외 준칙) 본 약관에 정의되지 않은 사항은 관계법령이 있는 경우 그 규정을 따르며, 그렇지 않은 경우 일반적인 관례에 따릅니다.


제4조 (용어의 정의) 본 약관에서 사용하는 용어는 아래와 같습니다.

1. 이용자 : 서울공공자전거 약관에 동의하며, 서울공공자전거의 회원, 정회원, 비(일일)회원으로 가입한 자

2. 회원 : 본 약관에 동의하여 서울공공자전거 회원으로 가입한자

3. 정회원 : 본 약관에 동의하여 서울공공자전거의 이용을 위한 회원에 가입하고 유료결제 수행 후, 서울공공자전거 이용권한을 획득한자

4. 비회원 : 비회원 이용권을 이용하는 이용자

5. 비밀번호 : 서울공공자전거의 시스템 상에 등록된 개인정보를 보호하기 위해 설정된 개인이 정의한 영문, 숫자 및 특수기호 조합

6. 대여비밀번호 : 대여 시 이용자 확인을 위해 설정하는 비밀번호

7. 따릉이 : 서울공공자전거 대여소에 거치되어 회원 및 비회원이 대여할 수 있는 자전거

8. 대여소: 무인으로 자전거를 대여 및 반납할 수 있도록 하는 시설

9. 거치대: 대여소 내의 반자동 잠금식 자전거 주차시설

10. 대여 : 서울공공자전거 대여소에서 자전거를 선택 후, 서울공공자전거에서 지정한 방법에 따라 잠금장치를 해제한 후, 자전거 단말기에서 “대여되었습니다.” 라는 음성안내가 된 경우

11. 반납 : 서울공공자전거 대여소에 자전거를 거치 후, 서울공공자전거에서 지정한 방법에 따라 잠금장치를 잠금한 후, 자전거 단말기에서 “반납되었습니다.” 라는 음성안내 및 안내메시지(SMS등)가 수신된 경우

12. 스마트폰 : 이용자가 앱 프로그램을 이용하여 정보를 수용하고, 제공받고자 하는 서비스를 이용할 수 있도록 하는 개인용 휴대전화기

13. 서울공공자전거 앱 : 서울공공자전거 회원가입 및 기본요금 결제, 서비스 이용 등이 가능한 앱

14. 서비스 이용 : 이용자가 서울공공자전거 대여소에서 자전거를 대여하여 이용하고, 이를 반납하는 일련의 행위

15. 기본요금 : 정기권 또는 1일권 구매 시 지정된 요금

16. 기본이용시간 : 기본요금 이외의 별도 이용료를 납부하지 않고, 이용권별 지정된 이용시간

17. 최대 초과 대여시간 : 1시간권의 경우 총 4시간, 2시간권의 경우 총 6시간으로 초과될시 분실 및 도난으로 간주할 수 있는 제한 시간

18. 추가요금 : 기본이용시간이 초과된 경우 지불하게 되는 서울공공자전거에서 지정한 요금

19. 환승 마일리지 : 정기권 구매를 한 이용자에 한하여 <버스‧지하철> ⇒ <따릉이>, <따릉이> ⇒ <버스‧지하철>로 30분 이내에 환승할 경우에 적립되는 마일리지 (단, 환승마일리지는 서울공공자전거에서 공지하는 이용권에 한해 제공됩니다.)

20. 종일 이용권 : 외국인 이용자가 서울공공자전거 대여소에서 자전거를 대여하여 중간 반납없이 최대 24시간동안 이용할수 있는 이용권

21. 법인용 단체권 : 법인에서 구매하여 회원 또는 비회원에게 선물하기 등을 통해 지급할 수 있는 이용권」</textarea></p>
   <p class="que">이용약관에 동의하십니까? <input type="checkbox" class="ch" id="must1"> 동의함</p>
   </div>
   
   <div class="agree">
     <p><b>개인정보 수집 및 이용 동의</b></p>
   <p><textarea rows="5" style="width:100%" readonly="readonly" >[서울자전거 따릉이](‘www.bikeseoul.com')는 기본적인 회원 서비스 제공을 위한 필수정보와 정보주체 각각의 기호와 필요에 맞는 서비스를 제공하기 위한 선택정보로 구분하여 다음의 정보를 수집하고 있습니다.
가입정보에 대한 선택정보를 입력하지 않은 경우에도 서비스 이용에는 제한이 없습니다.

필수 : 휴대번호, 아이디, 비밀번호, 전자메일주소, 생년, 성별

(단 실명인증이 필요한 서비스에서는 실명인증을 하지 않을시 서비스 이용에 제한이 있을 수 있습니다)</textarea></p>
   <p class="que">이용약관에 동의하십니까? <input type="checkbox" class="ch" id="must2"> 동의함</p>
   </div>
   
   <div class="agree">
   <p><b>개인정보 제3차 제공 동의</b></p>
   <p><textarea rows="5" style="width:100%" readonly="readonly">아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수 있습니다.

위탁받는 자(수탁업체) : ㈜스냅컴퍼니(알림전송수탁업체 : ㈜엠티에스컴퍼니)
- 위탁업무의 내용 : 고객 개인정보(이름, 아이디, 휴대전화번호)를 통해 신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 및 참여기회</textarea></p>
   <p class="que">이용약관에 동의하십니까? <input type="checkbox" class="ch" id="must3"> 동의함</p>
   </div>
   
   <div class="agree">
   <p><b>위치기반 서비스 이용약관에 동의</b></p>
   <p><textarea rows="5" style="width:100%" readonly="readonly">위치기반 서비스 이용약관

제 1장 총칙
제 1조 목적 : 본 약관은 회원(서울자전거 약관에 동의한 자를 말합니다. 이하 “회원”이라고 합니다.)이 서울시특별시(이하 “서울시”라고 합니다.)가 제공하는 서울자전거 위치기반서비스(이하 “서비스”라고 합니다)를 이용함에 있어 서울시와 회원의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.

제 2조 이용약관의 효력 및 변경

①본 약관은 서비스를 신청한 고객 또는 개인위치정보주체가 본 약관에 동의하고 서울시가 정한 소정의 절차에 따라 서비스의 이용자로 등록함으로써 효력이 발생합니다.

②서울시가 온라인에서 본 약관의 "동의하기" 버튼을 클릭하였을 경우 본 약관의 내용을 모두 읽고 이를 충분히 이해하였으며, 그 적용에 동의한 것으로 봅니다.

③서울시가 위치정보의 보호 및 이용 등에 관한 법률, 콘텐츠산업 진흥법, 전자상거래 등에서의 소비자보호에 관한 법률, 소비자기본법 약관의 규제에 관한 법률 등 관련법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.

④서울시가 약관을 개정할 경우에는 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그 적용일자 10일 전부터 적용일 이후 상당한 기간 동안 공지만을 하고, 개정 내용이 회원에게 불리한 경우에는 그 적용일자 30일 전부터 적용일 이후 상당한 기간 동안 각각 이를 서비스 홈페이지에 게시하거나 회원에게 전자적 형태(전자우편, SMS 등)로 약관 개정 사실을 발송하여 고지합니다.

⑤서울시가 전항에 따라 회원에게 통지하면서 공지 또는 공지∙고지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 이용약관에 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 이용계약을 해지할 수 있습니다.

제 3조 관계법령의 적용 : 본 약관은 신의성실의 원칙에 따라 공정하게 적용하며, 본 약관에 명시되지 아니한 사항에 대하여는 관계법령 또는 상관례에 따릅니다.

	</textarea></p>
   <p class="que">이용약관에 동의하십니까? <input type="checkbox" class="ch"  id="must4"> 동의함</p>
   </div>
   
	<div style="text-align: center; margin-bottom: 30px;" >   
		<input type="button" value="다음" class="btn btn-join" id="next">  
		<input type="button" value="회원가입취소" class="btn btn-cancel" id="cancel">
	</div>
</div>


<c:import url="${pageContext.request.contextPath}/WEB-INF/views/template/footer.jsp"></c:import>

<script type="text/javascript">

var checkall = document.getElementById("checkall");
var ch = document.getElementsByClassName("ch");

//전체동의
checkall.addEventListener('click', function() {
   for(var i=0;i<ch.length;i++){
      ch[i].checked = checkall.checked;
   }
});

//
   for(var i=0;i<ch.length;i++) {
      ch[i].addEventListener('click', function() {
         //-----------------------------------------
         var result = true;
         for(var j=0; j<ch.length; j++) {
            if(!ch[j].checked) {
               result = false;
            }
         }
         
         checkall.checked=result;
      });
   }

$("#next").click(function(){
	if(checkall.checked){
		location.href="";
	}else{
		alert("서비스이용 약관에 동의해주세요")
	}
});

$("#cancel").click(function(){
	location.href="../";
});

</script>
</body>