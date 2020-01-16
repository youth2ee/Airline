<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link href="../resources/css/bookingList.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
<body>

<h1> Booking List </h1>

${bookingVO.kind}
${bookingVO.depLoc}


<div>

<div> ${bookingVO.depLoc} -> ${bookingVO.arrLoc} </div>

<div> 

<c:forEach items="${Dlist}" var="days1" varStatus="status"> 

	<c:if test="${status.index != 5}">
	<div style="float: left; cursor: pointer; background-color: yellow; padding: 10px;" class="date1" > 
		<div class="d1">${days1.year}년</div>
		<div class="d2">${days1.month}월 ${days1.day}일</div>
	</div>
	</c:if>
	
	<c:if test="${status.index == 5}">
	<div style="float: left; cursor: pointer; background-color: red; padding: 10px;" class="date1" > 
		<div class="d1">${days1.year}년</div>
		<div class="d2">${days1.month}월 ${days1.day}일</div>
	</div>
	</c:if>
	 
</c:forEach>
	
</div>


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
<%--  <tr style = "cursor:pointer;" onClick = " location.href='./bookingWrite?fnum=${dlist.fnum}&adults=${bookingVO.adults}&children=${bookingVO.children}' "> --%>
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


<c:if test="${bookingVO.kind == 2}">
<div> ${bookingVO.arrLoc} -> ${bookingVO.depLoc} </div>
<div> 
<c:forEach items="${Alist}" var="days2" varStatus="status2"> 

	<c:if test="${status2.index != 5}">
	<div style="float: left; cursor: pointer; background-color: yellow; padding: 10px;" class="date2" > 
		<div class="d11">${days2.year}년</div>
		<div class="d12">${days2.month}월 ${days2.day}일</div>
	</div>
	</c:if>
	
	<c:if test="${status2.index == 5}">
	<div style="float: left; cursor: pointer; background-color: red; padding: 10px;" class="date2" > 
		<div class="d11">${days2.year}년</div>
		<div class="d12">${days2.month}월 ${days2.day}일</div>
	</div>
	</c:if>
	 
</c:forEach>
	
</div>

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
<%--  <tr style = "cursor:pointer;" onClick = " location.href='./bookingWrite?fnum=${alist.fnum}&adults=${bookingVO.adults}&children=${bookingVO.children}' "> --%>
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

</c:if>



<button style = "cursor:pointer;" id="btn"> 다음 </button>



</div>

<script type="text/javascript">
$('.date1').click(function(){
	var d1 = $(this).find('.d1').text().trim();
	var d2 = $(this).find('.d2').text().trim();
	
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
	var d11 = $(this).find('.d11').text().trim();
	var d12 = $(this).find('.d12').text().trim();
	
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
$('.dtrcheck').on("click", function(){
	dfnum = $(this).find('.dfnum').val();
	$(this).find('td').css('color', 'red');
});

$('.atrcheck').on("click", function(){
	afnum = $(this).find('.afnum').val();
	$(this).find('td').css('color', 'red');
});





$('#btn').click(function(){
	location.href='./bookingWrite?dfnum='+dfnum+'&afnum='+afnum+'&adults=${bookingVO.adults}&children=${bookingVO.children}&kind=${bookingVO.kind}';
});






</script>

</body>
</html>