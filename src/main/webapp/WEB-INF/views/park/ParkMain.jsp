<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVERY AIR / Parking</title>
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

<table width="615" border="0" cellpadding="1" cellspacing="1" bgcolor="#eaecee"> 
 <tbody>
  <tr align="center" bgcolor="#F2F2F2"> 
   <td width="123" height="24" bgcolor="#f6f6f6"><strong>날씨</strong></td> 
   <td width="123" bgcolor="#f6f6f6"><strong>기온</strong></td> 
   <td width="123" bgcolor="#f6f6f6"><strong>풍속</strong></td> 
   <td width="123" bgcolor="#f6f6f6"><strong>풍향</strong></td> 
   <td width="123" bgcolor="#f6f6f6"><strong>시정</strong></td> 
  </tr> 
  <tr align="center" bgcolor="#FFFFFF"> 
   <td height="43"><font color="#124d79"> <img src="https://www.weatheri.co.kr/images/icon_2013_01/02.png" width="70" alt=""> </font></td> 
   <td>3℃</td> 
   <td>6 (Knot)</td> 
   <td>북</td> 
   <td>9999(m)</td> 
  </tr> 
 </tbody>
</table>



체크박스 :<input type="checkbox">
<br>
<label>체크박스 :<input type="checkbox"></label>

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
		var request = require('request'),
	    	cheerio = require('cheerio');

		var url = "http://openapi.airport.kr/openapi/service/StatusOfParking/getTrackingParking?serviceKey=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D";
	 

		request(url, function (err, res, html) {
	    	if (!err) {
	        var $ = cheerio.load(html);
	   		}
	   		console.log(res);
		});

	}

</script>
</body>
</html>