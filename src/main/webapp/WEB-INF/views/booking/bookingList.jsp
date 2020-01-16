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

<c:if test="${bookingVO.kind == 1}">
편도
</c:if>
<c:if test="${bookingVO.kind == 2}">
왕복
</c:if>

<hr>

<h3>성인 : ${bookingVO.adults}명</h3>
<h3>아동 : ${bookingVO.children}명</h3>
<h5>출발 : ${bookingVO.depLoc}</h5>
<h5>도착 : ${bookingVO.arrLoc}</h5>

<hr>


<section> 

<div><h1> ${bookingVO.depLoc} -> ${bookingVO.arrLoc}  </h1></div>

<div> 
<c:forEach items="${Dlist}" var="days1" varStatus="status"> 
	<c:if test="${status.index != 5}">
	<div style="float: left; cursor: pointer; padding: 10px;" class="date1" > 
		<div class="d1">${days1.year}년</div>
		<div class="d2">${days1.month}월 ${days1.day}일</div>
	</div>
	</c:if>
	
	<c:if test="${status.index == 5}">
	<div style="float: left; cursor: pointer; padding: 10px;" class="date1 bact" > 
		<div class="d1 rd1">${days1.year}년</div>
		<div class="d2 rd2">${days1.month}월 ${days1.day}일</div>
	</div>
	</c:if>
</c:forEach>
</div>

<div style="height: 300px; overflow-y: scroll; clear: both;">
<table id="depT"> 
<tr>
	<td>편명</td> 
	<td>기종</td> 
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


<hr>

<c:if test="${bookingVO.kind == 2}">
<div><h1> ${bookingVO.arrLoc} -> ${bookingVO.depLoc} </h1></div>
<div> 
<c:forEach items="${Alist}" var="days2" varStatus="status2"> 
	<c:if test="${status2.index != 5}">
	<div style="float: left; cursor: pointer; padding: 10px;" class="date2" > 
		<div class="d11">${days2.year}년</div>
		<div class="d12">${days2.month}월 ${days2.day}일</div>
	</div>
	</c:if>
	
	<c:if test="${status2.index == 5}">
	<div style="float: left; cursor: pointer; padding: 10px;" class="date2 bact"> 
		<div class="d11 rd11">${days2.year}년</div>
		<div class="d12 rd12">${days2.month}월 ${days2.day}일</div>
	</div>
	</c:if>
</c:forEach>
</div>

<div style="height: 300px; overflow-y: scroll; clear: both;">
<table id="arrT"> 
<tr> 
	<td>편명</td> 
	<td>기종</td> 
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

<form action="./bookingWritePre" method="post">

<input type="hidden" name="dfnum" id="dfnumf">
<input type="hidden" name="afnum" id="afnumf">
<input type="hidden" name="adults" value="${bookingVO.adults}">
<input type="hidden" name="children" value="${bookingVO.children}">
<input type="hidden" name="kind" value="${bookingVO.kind}">

<button style = "cursor:pointer;"> 다음 </button>
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
			d1:d1,
			d2:d2,
			depLoc:'${bookingVO.depLoc}',
			arrLoc:'${bookingVO.arrLoc}',
			pos:1
			},
		type : "GET",
		url : "./dateSelect",
		success : function(data) {
			data = data.trim();

			if(data == null){
				$('#depT').html("");
				}
			
			$('#depT').html(data);
		}
	}); 

//

});



$('.date2').click(function(){
	$(this).addClass('bact');
	$(this).siblings().removeClass('bact');

	
	d11 = $(this).find('.d11').text().trim();
	d12 = $(this).find('.d12').text().trim();
	
	//다른 날짜를 선택할때
	$.ajax({
		data : {
			d1:d11,
			d2:d12,
			depLoc:'${bookingVO.depLoc}',
			arrLoc:'${bookingVO.arrLoc}',
			pos:2
			},
		type : "GET",
		url : "./dateSelect",
		success : function(data) {
			data = data.trim();
			 $('#arrT').html(data); 
		}
	}); 

//


	
});

var dfnum = $('.dfnum').val();
var afnum = $('.afnum').val();

$('#dfnumf').val(dfnum);
$('#afnumf').val(afnum);


$('body').on("click",'.dtrcheck',function(){
	dfnum = $(this).find('.dfnum').val();
	$(this).find('td').addClass('act');
	$(this).siblings().find('td').removeClass('act');
});

$('body').on("click",'.atrcheck',function(){
	afnum = $(this).find('.afnum').val();
	$(this).find('td').addClass('act');
	$(this).siblings().find('td').removeClass('act');
});




</script>

</body>
</html>