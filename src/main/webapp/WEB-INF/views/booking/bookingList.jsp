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
		<div>${days1.year}년</div>
		<div>${days1.month}월 ${days1.day}일</div>
	</div>
	</c:if>
	
	<c:if test="${status.index == 5}">
	<div style="float: left; cursor: pointer; background-color: red; padding: 10px;" class="date1" > 
		<div>${days1.year}년</div>
		<div>${days1.month}월 ${days1.day}일</div>
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
	<td>운행시간</td> 
	<td>가격</td>  
</tr>

<c:forEach items="${DairList}" var="dlist"> 
 <tr style = "cursor:pointer;" onClick = " location.href='./bookingWrite?fnum=${dlist.fnum}' ">
	<td>${dlist.vihicleId}</td> 
	<td>${dlist.airlineNm}</td> 
	<td>${dlist.depTime}</td> 
	<td>${dlist.arrTime}</td> 
	<td>1시간 10분</td> 
	<td>${dlist.economyCharge}원</td>  
</tr>
</c:forEach>



 <tr style = "cursor:pointer;" onClick = " location.href='./bookingWrite' ">
	<td>OZ8981</td> 
	<td>B767</td> 
	<td>17:25</td> 
	<td>18:35</td> 
	<td>1시간 10분</td> 
	<td>60000원</td>  
</tr>

</table>


<c:if test="${bookingVO.kind == 2}">
<div> ${bookingVO.arrLoc} -> ${bookingVO.depLoc} </div>
<div> 
<c:forEach items="${Alist}" var="days2" varStatus="status2"> 

	<c:if test="${status2.index != 5}">
	<div style="float: left; cursor: pointer; background-color: yellow; padding: 10px;" class="date2" > 
		<div>${days2.year}년</div>
		<div>${days2.month}월 ${days2.day}일</div>
	</div>
	</c:if>
	
	<c:if test="${status2.index == 5}">
	<div style="float: left; cursor: pointer; background-color: red; padding: 10px;" class="date2" > 
		<div>${days2.year}년</div>
		<div>${days2.month}월 ${days2.day}일</div>
	</div>
	</c:if>
	 
</c:forEach>
	
</div>

<table id="arrT"> 
<tr> 
	<td><a href="#">편명</a></td> 
	<td>기종</td> 
	<td>출발시간</td> 
	<td>도착시간</td> 
	<td>운행시간</td> 
	<td>가격</td> 
</tr>


 <tr style = "cursor:pointer;" onClick = " location.href='./bookingWrite' ">
	<td>OZ8981</td> 
	<td>B767</td> 
	<td>17:25</td> 
	<td>18:35</td> 
	<td>1시간 10분</td> 
	<td>60000원</td>  
</tr>

</table>

</c:if>







</div>

<script type="text/javascript">
$('.date1').click(function(){
	alert("hi1");
});

$('.date2').click(function(){
	alert("hi2");
});


</script>

</body>
</html>