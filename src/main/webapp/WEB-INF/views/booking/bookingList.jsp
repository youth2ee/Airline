<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVERY AIR / Booking</title>
</head>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/booking/bookingList.css" rel="stylesheet">
<link href="../resources/css/booking/slide.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<body>


<header>
<c:import url="../layout/header.jsp"></c:import>
</header>

<div id="top">
<div id="topWrap">
<div id="top1">
<i class="fa fa-plane" style="font-size:23px;color:white; padding-top: 27px;"></i><br>
<div style="padding-top: 20px; font-size: 20px;"> 
${bookingVO.depLoc} <i class='fas fa-angle-right' style='font-size:10px;'></i> ${bookingVO.arrLoc}
</div>

</div>

<div id="top2">
<i class="fa fa-plane" style="font-size:23px;color:white; padding-top: 27px;"></i><br>
<div style="padding-top: 20px; font-size: 20px;"> 
${bookingVO.arrLoc} <i class='fas fa-angle-right' style='font-size:10px;'></i> ${bookingVO.depLoc}
</div>
</div>

<div id="top3">
<i class="material-icons" style="font-size:31px; color: white; padding-top: 20px;">person</i> 
<div style="padding-top: 14px; font-size: 18px;">
성인 : ${bookingVO.adult}명<br>
아동 : ${bookingVO.child}명
</div>
</div>

<div id="top4"> </div>
</div>
</div>

<div id="noti">
<div id="notiWrap">
<table>
<tr><td class="tnoti" style="padding-bottom: 6px;">항공권 운임은 잔여 좌석에 따라 실시간으로 달라질 수 있습니다.이후 예약상황 및 가격정책의 변경 등으로 인해 스케줄 및 운임의 변동이 있을 수 있습니다.</td></tr>
<tr><td class="tnoti"><span style="color: #f44336;">${today}</span>기준, 유류할증료와 세금 및 제반요금 포함된 성인 1명 기준 운임입니다.</td></tr>
</table>
</div>
</div>


<section>
<div id="dep">
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
	<td class="td2t">항공사</td> 
	<td class="td1t">편명</td> 
	<td class="td7t">가격</td>  
	<td class="td7t">예약좌석</td>
</tr>

<c:forEach items="${DairList}" var="dlist"> 
<tr class="dtrcheck">
	<td class="td3">
		
	<div class="timeIWrap">
	<div class="tiLeft" style="padding-right: 10px;">${dlist.depTime}</div>
	
	<div style="float: left;">
		<div class="timTop"></div>
		<div>
			<div class="timmLeft"><i class="material-icons" style="padding-right: 10px; padding-left:10px; color: #d60815;" >flight_takeoff</i></div>
			 
			<div class="timmMid">
				<div class="timmM1"><i class='far fa-clock'></i> ${dlist.flightTime}분</div>
				<div class="timmM2">직항</div>
			</div> 
			
			<div class="timmRight"><i class="material-icons" style="padding-left: 10px; padding-right:10px;  color: #d60815;">flight_land</i></div>
		</div>
		<div class="timBottom"></div>
	</div>
	
	<div class="tiRight" style="padding-left: 10px;">${dlist.arrTime}</div>
	</div>
		
	</td>
 
	<td class="td2">
		<div style="float: left; padding-left: 30px;line-height: 73px;">
		<c:if test="${dlist.airlineNm == '대한 항공'}">
		<img alt="" src="../images/airline/1.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '아시아나항공'}">
		<img alt="" src="../images/airline/2.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '에어부산'}">
		<img alt="" src="../images/airline/3.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '에어서울'}">
		<img alt="" src="../images/airline/4.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '이스타항공'}">
		<img alt="" src="../images/airline/5.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '제주항공'}">
		<img alt="" src="../images/airline/6.png" style="width: 115px;">
		</c:if>		
		<c:if test="${dlist.airlineNm == '진 에어'}">
		<img alt="" src="../images/airline/7.png" style="width: 115px;">
		</c:if>			
		<c:if test="${dlist.airlineNm == '코리아 익스프레스 에어'}">
		<img alt="" src="../images/airline/8.png" style="width: 115px;">
		</c:if>			
		<c:if test="${dlist.airlineNm == '티웨이항공'}">
		<img alt="" src="../images/airline/9.png" style="width: 115px;">
		</c:if>			
		<c:if test="${dlist.airlineNm == '플라이 강원'}">
		<img alt="" src="../images/airline/10.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '하이에어'}">
		<img alt="" src="../images/airline/11.png" style="width: 115px;">
		</c:if>	
		
		</div>
		<div style="float: left; padding-left: 25px;line-height: 73px;">${dlist.airlineNm}</div>
	</td> 
	<td class="td1">${dlist.vihicleId}<input type="hidden" value="${dlist.fnum}" class="dfnum"></td> 
	<td class="td7">${dlist.economyCharge}원</td>  
	<td class="td7">${195 - dlist.seatTotal}</td> 
</tr>

<!-- 나중에 이부분 td를 dateList layout에 수정해야 한다. -->
<tr class="dhide"><td colspan="7" style="vertical-align: middle;">


<div style="width: 770px;margin: 0 auto;font-weight: bold; padding-left: 26px;">
	
	<div style="float: left; line-height: 34px; margin-right:40px;">
		<div style="clear: both;">
			<div style="float: left;">출발시간 :&nbsp</div> <div class="deptd" style="float: left;">${dlist.depPlandTime}</div>
		</div>
	</div>
	
	<div style="float: left; line-height: 34px; margin-right: 37px;">
		<div style="clear: both;">
			<div style="float: left;">도착시간 :&nbsp</div> <div class="arrtd" style="float: left;">${dlist.arrPlandTime}</div>
		</div>
	</div>
	
	<div style="float: left; line-height: 34px;">
		<div style="clear: both;">
			<div style="float: left;">이동거리 :&nbsp</div> <div class="km" style="float: left;">${dlist.flightKm}KM</div>
		</div>
	</div>
</div>


</td></tr>
</c:forEach>
</table>
</div>
</div>
</div>

<!--  -->

<hr>

<div id="arr"> 
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
	<td class="td2t">항공사</td> 
	<td class="td1t">편명</td> 
	<td class="td7t">가격</td>  
	<td class="td7t">예약좌석</td>
</tr>

<c:forEach items="${AairList}" var="alist"> 
<tr class="atrcheck">
	<td class="td3">
		
	<div class="timeIWrap">
	<div class="tiLeft" style="padding-right: 10px;">${alist.depTime}</div>
	
	<div style="float: left;">
		<div class="timTop"></div>
		<div>
			<div class="timmLeft"><i class="material-icons" style="padding-right: 10px; padding-left:10px; color: #d60815;" >flight_takeoff</i></div>
			 
			<div class="timmMid">
				<div class="timmM1"><i class='far fa-clock'></i> ${alist.flightTime}분</div>
				<div class="timmM2">직항</div>
			</div> 
			
			<div class="timmRight"><i class="material-icons" style="padding-left: 10px; padding-right:10px;  color: #d60815;">flight_land</i></div>
		</div>
		<div class="timBottom"></div>
	</div>
	
	<div class="tiRight" style="padding-left: 10px;">${alist.arrTime}</div>
	</div>
		
	</td>
 
	<td class="td2">
			<div style="float: left;  padding-left: 30px; line-height: 73px;">
		<c:if test="${alist.airlineNm == '대한 항공'}">
		<img alt="" src="../images/airline/1.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '아시아나항공'}">
		<img alt="" src="../images/airline/2.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '에어부산'}">
		<img alt="" src="../images/airline/3.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '에어서울'}">
		<img alt="" src="../images/airline/4.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '이스타항공'}">
		<img alt="" src="../images/airline/5.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '제주항공'}">
		<img alt="" src="../images/airline/6.png" style="width: 115px;">
		</c:if>		
		<c:if test="${alist.airlineNm == '진 에어'}">
		<img alt="" src="../images/airline/7.png" style="width: 115px;">
		</c:if>			
		<c:if test="${alist.airlineNm == '코리아 익스프레스 에어'}">
		<img alt="" src="../images/airline/8.png" style="width: 115px;">
		</c:if>			
		<c:if test="${alist.airlineNm == '티웨이항공'}">
		<img alt="" src="../images/airline/9.png" style="width: 115px;">
		</c:if>			
		<c:if test="${alist.airlineNm == '플라이 강원'}">
		<img alt="" src="../images/airline/10.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '하이에어'}">
		<img alt="" src="../images/airline/11.png" style="width: 115px;">
		</c:if>	
		
		</div>
		<div style="float: left; padding-left: 25px; line-height: 73px;">${alist.airlineNm}</div>
	
	</td> 
	<td class="td1">${alist.vihicleId}<input type="hidden" value="${alist.fnum}" class="afnum"></td> 
	<td class="td7">${alist.economyCharge}원</td>  
	<td class="td7">${195 - alist.seatTotal}</td>  
</tr>

<!-- layout dateList에 추가해야된다. -->
<tr class="ahide"><td colspan="7" style="vertical-align: middle;">

<div style="width: 770px;margin: 0 auto;font-weight: bold; padding-left: 26px;">
	
	<div style="float: left; line-height: 34px; margin-right:40px;">
		<div style="clear: both;">
			<div style="float: left;">출발시간 :&nbsp</div> <div class="deptd" style="float: left;">${alist.depPlandTime}</div>
		</div>
	</div>
	
	<div style="float: left; line-height: 34px; margin-right: 37px;">
		<div style="clear: both;">
			<div style="float: left;">도착시간 :&nbsp</div> <div class="arrtd" style="float: left;">${alist.arrPlandTime}</div>
		</div>
	</div>
	
	<div style="float: left; line-height: 34px;">
		<div style="clear: both;">
			<div style="float: left;">이동거리 :&nbsp</div> <div class="km" style="float: left;">${alist.flightKm}KM</div>
		</div>
	</div>
</div>




</td></tr>
</c:forEach>
</table>
</div>
</div>
</c:if>
</div>

<form action="${pageContext.request.contextPath}/booking/bookingWritePre" method="post" id="frm">

<input type="hidden" name="depFnum" id="dfnumf" value="0">
<c:if test="${bookingVO.kind eq '왕복'}">
<input type="hidden" name="arrFnum" id="afnumf" value="0">
</c:if>
<input type="hidden" name="adult" value="${bookingVO.adult}">
<input type="hidden" name="child" value="${bookingVO.child}">
<input type="hidden" name="kind" value="${bookingVO.kind}">

<hr>

<div style="text-align: right;">
<input type="button" id="btn" value="다음">
</div>
</form>


<div class="gray_box" id="rev_dom_notice">
			<h5>유의사항</h5>
			<ul class="list_type2">
				<li><span style="color: #f44336;">${today}</span> (한국시간) 기준, 유류할증료와 세금 및 제반요금 포함된 성인 1인 운임이며, 운임은 수시로 변경될 수 있습니다.</li>
				<li>고객님의 예약 시간은 정기 스케쥴 변경, 정기 정비 작업 등으로 인하여 전 노선에 시간 변동 및 운항/비운항이 예고 없이 발생할 수 있음을 양지하여 주시기 바랍니다.</li>
				<li>예약 가능석은 실시간으로 변동되며, 결제 및 발권이 완료되어야 좌석이 확약됩니다.</li>
				<li>항공권 구매 전 공동 운항에 대한 안내 사항을 확인하시기 바랍니다.</li>
				<li>항공권 운임에 따라 운임 규정이 상이하므로 반드시 운임 규정을 확인하시고 구매하시기 바랍니다.</li>
				<li>각 운임의 표기된 할인율은 고시 편의상 소수점 이하 반올림한 값임을 알려드립니다.</li>
			</ul>
		</div>


</section>



<script type="text/javascript">

$('.far fa-clock').css('color','black');

//
var d1 = $('.rd1').text();
var d2 = $('.rd2').text();

var d11 = $('.rd11').text();
var d12 = $('.rd12').text();

var depSelectDate = d1+d2;
depSelectDate = depSelectDate.replace('년','').replace('월','').replace('일','').replace(' ','').trim();

	$('.date2').each(function(index, item) {
				var rdate = $(this).find('.d11').text().trim().replace('년', '') + $(this).find('.d12').text().trim().replace('월', '').replace('일', '').replace(' ', '');

				if (Number(depSelectDate) > Number(rdate)) {
					$(this).addClass('plus2');
				}

			});


	
	$('.date1').click(function() {
		
		$(this).addClass('bact');
		$(this).siblings().removeClass('bact');

		$('body').removeClass('cact');

		d1 = $(this).find('.d1').text().trim();
		d2 = $(this).find('.d2').text().trim();

		//다른 날짜를 선택할때
		$.ajax({
			data : {
				year : d1,
				month : d2,
				depLoc : '${bookingVO.depLoc}',
				arrLoc : '${bookingVO.arrLoc}',
				kind : '편도'
			},
			type : "GET",
			url : "./booking/dateSelect",
			success : function(data) {
				data = data.trim();
				/* 
				 if(data == null){
				 $('#depT').html("");
				 }
				 */
				$('#depT').html(data);
				var depSelectDate = d1+d2;
				depSelectDate = depSelectDate.replace('년','').replace('월','').replace('일','').replace(' ','').trim();

					$('.date2').each(function(index, item) {

						if ($(this).hasClass('plus2')){
							$(this).removeClass('plus2');
						} 
						
								var rdate = $(this).find('.d11').text().trim().replace('년', '') + $(this).find('.d12').text().trim().replace('월', '').replace('일', '').replace(' ', '');

								if (Number(depSelectDate) > Number(rdate)) {
									$(this).addClass('plus2');
								}

								if (Number(depSelectDate) < Number(rdate)) {
									$(this).addClass('plus3');
									$(this).removeClass('plus3');
									$(this).removeClass('plus');

									if(index == 0) {

										$(this).addClass('bact');
										$(this).siblings().removeClass('bact');

										$(this).removeClass('plus3');
										
										d11 = $(this).find('.d11').text();
										d12 = $(this).find('.d12').text();
										
										$.ajax({
											data : {
												year : d11,
												month : d12,
												depLoc : '${bookingVO.arrLoc}',
												arrLoc : '${bookingVO.depLoc}',
												kind : '왕복'
											},
											type : "GET",
											url : "./booking/dateSelect",
											success : function(data) {
												data = data.trim();
												$('#arrT').html(data);

											}
										}); 

									}


								}

								
								if(Number(depSelectDate) == Number(rdate)){
									$(this).addClass('plus');
									$(this).removeClass('plus3');
									
									$(this).addClass('bact');
									$(this).siblings().removeClass('bact');

									d11 = $(this).find('.d11').text();
									d12 = $(this).find('.d12').text();
									
									$.ajax({
										data : {
											year : d11,
											month : d12,
											depLoc : '${bookingVO.arrLoc}',
											arrLoc : '${bookingVO.depLoc}',
											kind : '왕복'
										},
										type : "GET",
										url : "./booking/dateSelect",
										success : function(data) {
											data = data.trim();
											$('#arrT').html(data);

										}
									}); 
								}
							});
			}
		});
	});

	$('.date2').click(function() {

		if($(this).siblings().hasClass('plus')){
			$(this).siblings().removeClass('plus');
		} 
		
		if ($(this).hasClass('plus2')){
			$(this).removeClass('plus2');
		}  

		if ($(this).hasClass('plus3')){
			$(this).removeClass('plus3');
		} 

		if ($(this).hasClass('bact')){
			$(this).removeClass('bact');
		} 

		$(this).siblings().removeClass('bact');
		$(this).addClass('bact');

		$(this).addClass('onec');
		$('body').removeClass('cact');

		d11 = $(this).find('.d11').text().trim();
		d12 = $(this).find('.d12').text().trim();

		//다른 날짜를 선택할때
		$.ajax({
			data : {
				year : d11,
				month : d12,
				depLoc : '${bookingVO.arrLoc}',
				arrLoc : '${bookingVO.depLoc}',
				kind : '왕복'
			},
			type : "GET",
			url : "./booking/dateSelect",
			success : function(data) {
				data = data.trim();
				$('#arrT').html(data);

				var depdate1 = $('.bact').find('.d1').text().replace('년','').trim();
				var depdate2 = $('.bact').find('.d2').text().replace('월','').replace('일','').replace(' ','').trim();
				var deptime = $('.act').find('.tiRight').text().replace(':','');

				var depM = depdate1+depdate2+deptime;

				var arrdate1 = $('.bact').find('.d11').text().replace('년','').trim();
				var arrdate2 = $('.bact').find('.d12').text().replace('월','').replace('일','').replace(' ','').trim();

				var arrM = arrdate1+arrdate2;
				
				
				$('#arrT').find('.atrcheck').each(function(){
					
						var arrtime = $(this).find('.tiLeft').text().replace(':','').trim();
						var atotal = arrM + arrtime;
						
						if(Number(depM) > Number(atotal)){
							$(this).addClass('cact');
							$(this).find('td').addClass('block');
							$(this).find('td').find('i').css('color','#e4dbdb');
							$(this).find('td').find('img').addClass('grayt');
						}
						
				});

			}
		});
	});

	var dfnum = "";
	var afnum = "";

	$('body').on("click", '.dtrcheck', function() {


		var km = $(this).next('.dhide').find('.km').text();
		
		var deptd = $(this).next('.dhide').find('.deptd').text();
		var n = deptd.indexOf("년");
		if(n == -1){
			var ddy = deptd.substring(0,4);
			var ddm = deptd.substring(4,6);
			var ddd = deptd.substring(6,8);
			var ddh = deptd.substring(8,10);
			var ddmi = deptd.substring(10);
		    var dnew = ddy+'년 '+ddm+'월 '+ddd+'일 '+ddh+'시 '+ddmi+'분 ';
		    $(this).next('.dhide').find('.deptd').text(dnew);
			var arrtd = $(this).next('.dhide').find('.arrtd').text();
			var ady = arrtd.substring(0,4);
			var adm = arrtd.substring(4,6);
			var add = arrtd.substring(6,8);
			var adh = arrtd.substring(8,10);
			var admi = arrtd.substring(10);
		    var anew = ady+'년 '+adm+'월 '+add+'일 '+adh+'시 '+admi+'분 ';
		    $(this).next('.dhide').find('.arrtd').text(anew);
		    
		}
	
		
		$('.dhide').css("display", "none");
		$('.ahide').css("display", "none");
		$('body').removeClass('cact');
		$('.atrcheck').siblings().find('td').removeClass('act');
		dfnum = $(this).find('.td1').find('.dfnum').val();
		$('#dfnumf').val(dfnum);
		$(this).find('td').addClass('act');
		$(this).siblings().find('td').removeClass('act');
		if ($(this).next('.dhide').css("display") == "none") {
			$(this).next('.dhide').css("display", "table-row");
		} else {
			$(this).next('.dhide').css("display", "none");
		}

		var depdate1 = $(this).closest('#depW').siblings('#dateLine').find('.bact').find('.d1').text().replace('년','').trim();
		var depdate2 = $(this).closest('#depW').siblings('#dateLine').find('.bact').find('.d2').text().replace('월','').replace('일','').replace(' ','').trim();
		var deptime = $(this).find('.tiRight').text().replace(':','');

		var depM = depdate1+depdate2+deptime;
		

		var arrdate1 = $(this).closest('#dep').siblings('#arr').find('#arrW').siblings('#dateLine').find('.bact').find('.d11').text().replace('년','').trim();
		var arrdate2 = $(this).closest('#dep').siblings('#arr').find('#arrW').siblings('#dateLine').find('.bact').find('.d12').text().replace('월','').replace('일','').replace(' ','').trim();

		var arrM = arrdate1+arrdate2;
		
		
		$('#arrT').find('.atrcheck').each(function(){
			$(this).find('td').removeClass('block');
			$(this).find('td').find('.material-icons').css('color','#d60815');
			$(this).find('td').find('img').removeClass('grayt');
			
				var arrtime = $(this).find('.tiLeft').text().replace(':','').trim();
				var atotal = arrM + arrtime;
				
				if(Number(depM) > Number(atotal)){
					$(this).addClass('cact');
					$(this).find('td').addClass('block');
					$(this).find('td').find('i').css('color','#e4dbdb');
					$(this).find('td').find('img').addClass('grayt');

				}
				
		});


	});

	$('body').on("click", '.atrcheck', function() {
		var km = $(this).next('.ahide').find('.km').text();
		
		var deptd = $(this).next('.ahide').find('.deptd').text();
		var n = deptd.indexOf("년");
		if(n == -1){
			var ddy = deptd.substring(0,4);
			var ddm = deptd.substring(4,6);
			var ddd = deptd.substring(6,8);
			var ddh = deptd.substring(8,10);
			var ddmi = deptd.substring(10);
		    var dnew = ddy+'년 '+ddm+'월 '+ddd+'일 '+ddh+'시 '+ddmi+'분 ';
		    $(this).next('.ahide').find('.deptd').text(dnew);
			
			var arrtd = $(this).next('.ahide').find('.arrtd').text();
			var ady = arrtd.substring(0,4);
			var adm = arrtd.substring(4,6);
			var add = arrtd.substring(6,8);
			var adh = arrtd.substring(8,10);
			var admi = arrtd.substring(10);
		    var anew = ady+'년 '+adm+'월 '+add+'일 '+adh+'시 '+admi+'분 ';
		    $(this).next('.ahide').find('.arrtd').text(anew);
		    
		}
		
		$('body').removeClass('cact');
		
		$('.ahide').css("display", "none");
		afnum = $(this).find('.td1').find('.afnum').val();
 		if ($(this).next('.ahide').css("display") == "none") {
			$(this).next('.ahide').css("display", "table-row");
			
		} else if($(this).next('.ahide').css("display") == "table-row"){
			$(this).next('.ahide').css("display", "none");
			alert("dd");
			
		} 
		
		$('#afnumf').val(afnum);
		$(this).find('td').addClass('act');
		$(this).siblings().find('td').removeClass('act');
	});



	$('body').on('click', '.cact', function(){
		$('.ahide').css("display", "none");
		$('.atrcheck').siblings().find('td').removeClass('act');
		alert('출발하는 편의 도착시간 이후의 비행편을 선택해주세요.');
	}); 


	$('#btn').click(function(){

		if('${bookingVO.kind}' == '편도'){
			if($('#dfnumf').val() != 0){
				$('#frm').submit();
			} else {
				alert('편도 항공편을 선택해주세요.');
			}
		}

		if('${bookingVO.kind}' == '왕복'){
			if($('#dfnumf').val() != 0 && $('#afnumf').val() != 0){
				$('#frm').submit();
			}else {
				alert('왕복 항공편을 모두 선택해주세요.');
			}
		}

	});
	
</script>

</body>
</html>