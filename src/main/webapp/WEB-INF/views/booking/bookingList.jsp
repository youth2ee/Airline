<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/booking/bookingList.css" rel="stylesheet">
<link href="../resources/css/booking/slide.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<body>

<h1> Booking List </h1>

<header>
header
</header>

<div id="top">
<div id="topWrap">
<div id="top1">
<i class="fa fa-plane" style="font-size:40px;color:white; padding-top: 20px;"></i><br>
${bookingVO.depLoc} <i class='fas fa-angle-right' style='font-size:10px;'></i> ${bookingVO.arrLoc}
</div>

<div id="top2">
<i class="fa fa-plane" style="font-size:40px;color:white; padding-top: 20px;"></i><br>
${bookingVO.arrLoc} <i class='fas fa-angle-right' style='font-size:10px;'></i> ${bookingVO.depLoc}
</div>

<div id="top3">
<i class="material-icons" style="font-size:40px; color: white; padding-top: 20px;">person</i> 
<h5>성인 : ${bookingVO.adult}명</h5>
<h5>아동 : ${bookingVO.child}명</h5>
</div>

<div id="top4"> </div>
</div>
</div>

<div id="noti">
<div id="notiWrap">
<table>
<tr><td>항공권 운임은 잔여 좌석에 따라 실시간으로 달라질 수 있습니다.이후 예약상황 및 가격정책의 변경 등으로 인해 스케줄 및 운임의 변동이 있을 수 있습니다.</td></tr>
<tr><td>"오늘날짜넣기"기준, 유류할증료와 세금 및 제반요금 포함된 성인 1명 기준 운임입니다.</td></tr>
</table>
</div>
</div>


<section>
<div>
<div id="title">가는 여정</div>
<div id="tmsg">${bookingVO.depLoc} <i class='fas fa-angle-right' style='font-size:48px;'></i> ${bookingVO.arrLoc}</div>


<div id="dateLine"> 
<div style="margin: 0 auto;">
<c:forEach items="${Dlist}" var="days1" varStatus="status"> 
	<c:if test="${status.index != 5}">
	<div class="date1"> 
		<div class="d1">${days1.year}년</div>
		<div class="d2">${days1.month}월 ${days1.day}일</div>
	</div>
	</c:if>
	
	<c:if test="${status.index == 5}">
	<div class="date1 bact" > 
		<div class="d1 rd1">${days1.year}년</div>
		<div class="d2 rd2">${days1.month}월 ${days1.day}일</div>
	</div>
	</c:if>
</c:forEach>
</div>
</div>

<div id="depW">
<div style="margin: 0 auto;"> 
<table id="depT"> 
<tr id="deptitle">
	<td class="td3t" colspan="2">운항시간</td> 
	<!-- <td class="td4">도착시간</td> -->
	<!-- <td class="td5">운행거리</td>  -->
	<!-- <td class="td6">운행시간</td>  -->
	<td class="td2t">항공사</td> 
	<td class="td1t">편명</td> 
	<td class="td7t">가격</td>  
	<td class="td7t">예약좌석</td>
</tr>

<c:forEach items="${DairList}" var="dlist"> 
<tr class="dtrcheck">
	<td class="td3"><%-- ${dlist.depTime} <div>  </div> ${dlist.arrTime} --%>
		
	<div class="timeIWrap">
	<div class="tiLeft" style="padding-right: 10px;">${dlist.depTime}</div>
	
	<div style="float: left;">
		<div class="timTop"></div>
		<div>
			<div class="timmLeft"><i class="material-icons" style="padding-right: 10px; padding-left:10px; color: #d60815;" >flight_takeoff</i></div>
			 
			<div class="timmMid">
				<div class="timmM1"><i class='far fa-clock'></i> ${dlist.flightTime}분</div>
				<div class="timmM2">직항</div>
				<!-- <hr style="border: 0.5px solid #c1c1c1;"> -->
			</div> 
			
			<div class="timmRight"><i class="material-icons" style="padding-left: 10px; padding-right:10px;  color: #d60815;">flight_land</i></div>
		</div>
		<div class="timBottom"></div>
	</div>
	
	<div class="tiRight" style="padding-left: 10px;">${dlist.arrTime}</div>
	</div>
		
	</td>
 
	<td class="td2">
		<div style="float: left; padding-left: 30px;">
		<c:if test="${dlist.airlineNm == '대한 항공'}">
		<img alt="" src="../images/airline/1.jpg" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '아시아나항공'}">
		<img alt="" src="../images/airline/2.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '에어부산'}">
		<img alt="" src="../images/airline/3.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '에어서울'}">
		<img alt="" src="../images/airline/4.jpg" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '이스타항공'}">
		<img alt="" src="../images/airline/5.jpg" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '제주항공'}">
		<img alt="" src="../images/airline/6.gif" style="width: 115px;">
		</c:if>		
		<c:if test="${dlist.airlineNm == '진 에어'}">
		<img alt="" src="../images/airline/7.jpg" style="width: 115px;">
		</c:if>			
		<c:if test="${dlist.airlineNm == '코리아 익스프레스 에어'}">
		<img alt="" src="../images/airline/8.jpg" style="width: 115px;">
		</c:if>			
		<c:if test="${dlist.airlineNm == '티웨이항공'}">
		<img alt="" src="../images/airline/9.jpg" style="width: 115px;">
		</c:if>			
		<c:if test="${dlist.airlineNm == '플라이 강원'}">
		<img alt="" src="../images/airline/10.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '하이에어'}">
		<img alt="" src="../images/airline/11.jpg" style="width: 115px;">
		</c:if>	
		
		</div>
		<div style="float: left; padding-left: 10px;">${dlist.airlineNm}</div>
	</td> 
	<td class="td1">${dlist.vihicleId}<input type="hidden" value="${dlist.fnum}" class="dfnum"></td> 
	<%-- <td class="td4">${dlist.arrTime}</td>  --%>
	<%-- <td class="td5">${dlist.flightKm}KM</td> --%>
	<%-- <td class="td6">${dlist.flightTime}분</td>  --%>
	<td class="td7">${dlist.economyCharge}원</td>  
	<td class="td7">${195 - dlist.seatTotal}</td> 
</tr>

<tr class="dhide"><td colspan="7">${dlist.fnum} ${dlist.flightKm}KM</td></tr>
</c:forEach>
</table>
</div>
</div>
</div>

<!--  -->

<hr>

<div> 
<c:if test="${bookingVO.kind == '왕복'}">
<div id="title">오는 여정</div>
<div id="tmsg">${bookingVO.arrLoc} <i class='fas fa-angle-right' style='font-size:48px;'></i> ${bookingVO.depLoc}</div>
<div id="dateLine"> 
<c:forEach items="${Alist}" var="days2" varStatus="status2"> 
	<c:if test="${status2.index != 5}">
	<div class="date2" > 
		<div class="d11">${days2.year}년</div>
		<div class="d12">${days2.month}월 ${days2.day}일</div>
	</div>
	</c:if>
	
	<c:if test="${status2.index == 5}">
	<div class="date2 bact"> 
		<div class="d11 rd11">${days2.year}년</div>
		<div class="d12 rd12">${days2.month}월 ${days2.day}일</div>
	</div>
	</c:if>
</c:forEach>
</div>

<div id="arrW">
<div>
<table id="arrT"> 
<tr id="arrtitle"> 
	<td class="td3t" colspan="2">운항시간</td> 
	<!-- <td class="td4">도착시간</td> -->
	<!-- <td class="td5">운행거리</td>  -->
	<!-- <td class="td6">운행시간</td>  -->
	<td class="td2t">항공사</td> 
	<td class="td1t">편명</td> 
	<td class="td7t">가격</td>  
	<td class="td7t">예약좌석</td>
</tr>

<c:forEach items="${AairList}" var="alist"> 
<tr class="atrcheck">
	<td class="td3"><%-- ${dlist.depTime} <div>  </div> ${dlist.arrTime} --%>
		
	<div class="timeIWrap">
	<div class="tiLeft" style="padding-right: 10px;">${alist.depTime}</div>
	
	<div style="float: left;">
		<div class="timTop"></div>
		<div>
			<div class="timmLeft"><i class="material-icons" style="padding-right: 10px; padding-left:10px; color: #d60815;" >flight_takeoff</i></div>
			 
			<div class="timmMid">
				<div class="timmM1"><i class='far fa-clock'></i> ${alist.flightTime}분</div>
				<div class="timmM2">직항</div>
				<!-- <hr style="border: 0.5px solid #c1c1c1;"> -->
			</div> 
			
			<div class="timmRight"><i class="material-icons" style="padding-left: 10px; padding-right:10px;  color: #d60815;">flight_land</i></div>
		</div>
		<div class="timBottom"></div>
	</div>
	
	<div class="tiRight" style="padding-left: 10px;">${alist.arrTime}</div>
	</div>
		
	</td>
 
	<td class="td2">
			<div style="float: left;  padding-left: 30px;">
		<c:if test="${alist.airlineNm == '대한 항공'}">
		<img alt="" src="../images/airline/1.jpg" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '아시아나항공'}">
		<img alt="" src="../images/airline/2.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '에어부산'}">
		<img alt="" src="../images/airline/3.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '에어서울'}">
		<img alt="" src="../images/airline/4.jpg" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '이스타항공'}">
		<img alt="" src="../images/airline/5.jpg" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '제주항공'}">
		<img alt="" src="../images/airline/6.gif" style="width: 115px;">
		</c:if>		
		<c:if test="${alist.airlineNm == '진 에어'}">
		<img alt="" src="../images/airline/7.jpg" style="width: 115px;">
		</c:if>			
		<c:if test="${alist.airlineNm == '코리아 익스프레스 에어'}">
		<img alt="" src="../images/airline/8.jpg" style="width: 115px;">
		</c:if>			
		<c:if test="${alist.airlineNm == '티웨이항공'}">
		<img alt="" src="../images/airline/9.jpg" style="width: 115px;">
		</c:if>			
		<c:if test="${alist.airlineNm == '플라이 강원'}">
		<img alt="" src="../images/airline/10.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '하이에어'}">
		<img alt="" src="../images/airline/11.jpg" style="width: 115px;">
		</c:if>	
		
		</div>
		<div style="float: left; padding-left: 10px;">${alist.airlineNm}</div>
	
	</td> 
	<td class="td1">${alist.vihicleId}<input type="hidden" value="${alist.fnum}" class="afnum"></td> 
	<%-- <td class="td4">${dlist.arrTime}</td>  --%>
	<%-- <td class="td5">${dlist.flightKm}KM</td> --%>
	<%-- <td class="td6">${dlist.flightTime}분</td>  --%>
	<td class="td7">${alist.economyCharge}원</td>  
	<td class="td7">${195 - alist.seatTotal}</td>  
</tr>

<tr class="ahide"><td colspan="7">${alist.fnum}</td></tr>
</c:forEach>
</table>
</div>
</div>
</c:if>
</div>

<form action="./bookingWritePre" method="post">

<input type="hidden" name="depFnum" id="dfnumf">
<c:if test="${bookingVO.kind eq '왕복'}">
<input type="hidden" name="arrFnum" id="afnumf">
</c:if>
<input type="hidden" name="adult" value="${bookingVO.adult}">
<input type="hidden" name="child" value="${bookingVO.child}">
<input type="hidden" name="kind" value="${bookingVO.kind}">

<hr>

<div style="text-align: right;">
<button id="btn">다음</button>
</div>
</form>

</section>



<script type="text/javascript">

//
var d1 = $('.rd1').text();
var d2 = $('.rd2').text();

var d11 = $('.rd11').text();
var d12 = $('.rd12').text();

$('.date1').click(function(){
	$(this).addClass('bact');
	$(this).siblings().removeClass('bact');
	
	d1 = $(this).find('.d1').text().trim();
	d2 = $(this).find('.d2').text().trim();
	
	//다른 날짜를 선택할때
	$.ajax({
		data : {
			year:d1,
			month:d2,
			depLoc:'${bookingVO.depLoc}',
			arrLoc:'${bookingVO.arrLoc}',
			kind:'편도'
			},
		type : "GET",
		url : "./dateSelect",
		success : function(data) {
			data = data.trim();
/* 
			if(data == null){
				$('#depT').html("");
				}
			 */
			$('#depT').html(data);
		}
	}); 
});

$('.date2').click(function(){
	$(this).addClass('bact');
	$(this).siblings().removeClass('bact');

	d11 = $(this).find('.d11').text().trim();
	d12 = $(this).find('.d12').text().trim();
	
	//다른 날짜를 선택할때
	$.ajax({
		data : {
			year:d11,
			month:d12,
			depLoc:'${bookingVO.arrLoc}',
			arrLoc:'${bookingVO.depLoc}',
			kind:'왕복'
			},
		type : "GET",
		url : "./dateSelect",
		success : function(data) {
			data = data.trim();
			 $('#arrT').html(data); 
		}
	}); 
});

var dfnum = "";
var afnum = "";

$('body').on("click",'.dtrcheck',function(){
	$('.dhide').css("display", "none");   

	dfnum = $(this).find('.td1').find('.dfnum').val();
	
	$('#dfnumf').val(dfnum);
	$(this).find('td').addClass('act');
	$(this).siblings().find('td').removeClass('act');

    if($(this).next('.dhide').css("display") == "none"){   
    	$(this).next('.dhide').css("display", "table-row");   
    } else {  
    	$(this).next('.dhide').css("display", "none");   
    }  

});



$('body').on("click",'.atrcheck',function(){
	$('.ahide').css("display", "none");   
	
	afnum = $(this).find('.td1').find('.afnum').val();
	
	$('#afnumf').val(afnum);
	$(this).find('td').addClass('act');
	$(this).siblings().find('td').removeClass('act');

    if($(this).next('.ahide').css("display") == "none"){   
    	$(this).next('.ahide').css("display", "table-row");   
    } else {  
    	$(this).next('.ahide').css("display", "none");   
    }  
});




</script>

</body>
</html>