<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link href="../resources/css/booking/bookingList.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
<body>

<h1> Booking List </h1>

<header>
header 
</header>

<div id="top">
<div id="topWrap">
<div id="top1">1
<h5>출발 : ${bookingVO.depLoc}</h5>
<h5>도착 : ${bookingVO.arrLoc}</h5>
<c:if test="${bookingVO.kind == '편도'}">
편도
</c:if>
</div>

<div id="top2">2
<h5>출발 : ${bookingVO.arrLoc}</h5>
<h5>도착 : ${bookingVO.depLoc}</h5>
<c:if test="${bookingVO.kind == '왕복'}">
왕복
</c:if>
</div>

<div id="top3">3 
<h3>성인 : ${bookingVO.adult}명</h3>
<h3>아동 : ${bookingVO.child}명</h3>
</div>

<div id="top4">4 </div>
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
<div id="tmsg">${bookingVO.depLoc} -> ${bookingVO.arrLoc}</div>


<div id="dateLine"> 
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

<div style="height: 300px; overflow-y: scroll; clear: both;">
<table id="depT"> 
<tr>
	<td style="width: 80px;">편명</td> 
	<td style="width: 130px;">기종</td> 
	<td>출발시간</td> 
	<td>도착시간</td>
	<td>운행거리</td> 
	<td>운행시간</td> 
	<td>가격</td>  
</tr>

<c:forEach items="${DairList}" var="dlist"> 
<tr class="dtrcheck">
	<td>${dlist.vihicleId}<input type="hidden" value="${dlist.fnum}" class="dfnum"></td> 
	<td>${dlist.airlineNm}</td> 
	<td>${dlist.depTime}</td> 
	<td>${dlist.arrTime}</td> 
	<td>${dlist.flightKm}</td>
	<td>${dlist.flightTime}</td> 
	<td>${dlist.economyCharge}원</td>  
</tr>
</c:forEach>
</table>
</div>
</div>

<hr>

<div> 
<c:if test="${bookingVO.kind == '2'}">
<div id="title">오는 여정</div>
<div id="tmsg">${bookingVO.arrLoc} -> ${bookingVO.depLoc}</div>
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

<div style="height: 300px; overflow-y: scroll; clear: both;">
<table id="arrT"> 
<tr> 
	<td style="width: 80px;">편명</td> 
	<td style="width: 130px;">기종</td> 
	<td>출발시간</td> 
	<td>도착시간</td>
	<td>운행거리</td> 
	<td>운행시간</td> 
	<td>가격</td>  
</tr>

<c:forEach items="${AairList}" var="alist"> 
<tr class="atrcheck">
	<td>${alist.vihicleId}<input type="hidden" value="${alist.fnum}" class="afnum"></td> 
	<td>${alist.airlineNm}</td> 
	<td>${alist.depTime}</td> 
	<td>${alist.arrTime}</td> 
	<td>${alist.flightKm}</td>
	<td>${alist.flightTime}</td> 
	<td>${alist.economyCharge}원</td>  
</tr>
</c:forEach>
</table>
</div>
</c:if>
</div>

<form action="./bookingWritePre" method="post">

<input type="hidden" name="depFnum" id="dfnumf">
<c:if test="${bookingVO.kind == '왕복'}">
<input type="hidden" name="arrFnum" id="afnumf">
</c:if>
<input type="hidden" name="adult" value="${bookingVO.adult}">
<input type="hidden" name="child" value="${bookingVO.child}">
<input type="hidden" name="kind" value="${bookingVO.kind}">

<button style="cursor: pointer;">다음</button>

</form>

</section>

<script type="text/javascript">

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
	dfnum = $(this).find('.dfnum').val();
	$('#dfnumf').val(dfnum);
	$(this).find('td').addClass('act');
	$(this).siblings().find('td').removeClass('act');
});

$('body').on("click",'.atrcheck',function(){
	afnum = $(this).find('.afnum').val();
	$('#afnumf').val(afnum);
	$(this).find('td').addClass('act');
	$(this).siblings().find('td').removeClass('act');
});




</script>

</body>
</html>