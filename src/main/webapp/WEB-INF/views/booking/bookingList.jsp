<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link href="../resources/css/bookingList.css" rel="stylesheet">

<body>

<h1> Booking List </h1>

<div>
<div> 출발지 -> 도착지 </div>

<div> 
	<div style="float: left;"> 1.13 </div> <div style="float: left;"> 1.14 </div> <div style="float: left;"> 1.15 </div>
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

 <tr style = "cursor:pointer;" onClick = " location.href='./bookinWrite' " onMouseOver = " indow.status = './bookinWrite' " onMouseOut = " window.status = '' " >
	<td>OZ8981</td> 
	<td>B767</td> 
	<td>17:25</td> 
	<td>18:35</td> 
	<td>1시간 10분</td> 
	<td>60000원</td>  
</tr>

</table>





<div> 도착지 -> 출발지 </div>
<div> 
	<div style="float: left;"> 1.13 </div> <div style="float: left;"> 1.14 </div> <div style="float: left;"> 1.15 </div>
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


 <tr style = "cursor:pointer;" onClick = " location.href='./bookinWrite' " onMouseOver = " indow.status = './bookinWrite' " onMouseOut = " window.status = '' " >
	<td>OZ8981</td> 
	<td>B767</td> 
	<td>17:25</td> 
	<td>18:35</td> 
	<td>1시간 10분</td> 
	<td>60000원</td>  
</tr>

</table>


</div>

</body>
</html>