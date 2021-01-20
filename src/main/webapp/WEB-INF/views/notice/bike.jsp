<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <style type="text/css">
        table {
            border: 1px solid;
            border-collapse: collapse;
        }

        td,
        th {
            padding: 10px;
            border: 1px solid;
        }
    </style>
<script>
function q1() {
    $('#names-q1').empty();
    $.ajax({
        type: "GET",
        url:"http://openapi.seoul.go.kr:8088/6d4d776b466c656533356a4b4b5872/json/bikeList/1/1000",
        data:{},
        success: function(response){
            let bike = response["rentBikeStatus"]["row"];
            for (var e in bike){
                let bike_station = bike[e]['stationName'];
                let bike_rack= bike[e]['rackTotCnt'];
                let bike_parking= bike[e]['parkingBikeTotCnt'];
                let temp_html = `<tr>
                                    <td>${bike_station}</td>
                                    <td>${bike_rack}</td>
                                    <td>${bike_parking}</td>
                                </tr>`
                $('#names-q1').append(temp_html);
            }
        }
   })
}
</script>





</head>
<body>
	<div>
		<h2>자전거 실시간 현황</h2>
	</div>
	<div>
		<h3>ctrl+F로 원하는 대여소를 검색하세요</h3>
	</div>
	<button id="btn1" onclick="q1()">업데이트</button>
	<div>
		 <table>
		 <thead>
			 	<tr>
			 		<td style="width:400px">거치대 위치</td>
			 		<td>거치대 수</td>
			 		<td>현재 거치된 따릉이 수</td>
			 	</tr>
		 	</thead>
		 	<tbody id="names-q1">
		 	
		 	</tbody>
		 </table>
	</div>
	
</body>
</html>