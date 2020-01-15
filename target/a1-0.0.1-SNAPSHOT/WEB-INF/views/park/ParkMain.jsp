<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp" />
</head>
<body>
주차장 메인

<c:forEach items="${list}" var="vo">
영문명 : ${vo.aprEng}<br>
한글명 : ${vo.aprKor}<br>
주차장명 : ${vo.parkingName}<br>
주차공간 : ${vo.parkingFullSpace}<br>
조회일 : ${vo.parkingGetdate}<br>
조회시간 : ${vo.parkingGettime}<br>
입고차량 수 : ${vo.parkingIincnt}<br>
출고차량 수 : ${vo.parkingIoutcnt}<br>
현재 차량 수 : ${vo.parkingIstay}<br>
잔여 주차공간 : ${vo.parkingFullSpace - vo.parkingIstay}<br>
이용률 : <fmt:formatNumber value="${vo.parkingIstay/vo.parkingFullSpace * 100}" pattern="0.00"/>%<br>
======================<br>
</c:forEach>

<button onclick="location.href='ParkRes'">주차예약</button>

<script type="text/javascript">
	window.onload = function(){

		/* $.ajax({
			type:"GET",
			url: "http://openapi.airport.kr/openapi/service/StatusOfParking/getTrackingParking?serviceKey=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D&pageNo=1&numOfRows=15",
			dataType:'jsonp',
			success:function(data){
				console.log(data);
				alert(data);
			}
		}); */

		/* $.get("https://openapi.airport.kr/openapi/service/StatusOfParking/getTrackingParking?serviceKey=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D&pageNo=1&numOfRows=15",function(data){
			console.log(data);
		}); */


	}

</script>
</body>
</html>