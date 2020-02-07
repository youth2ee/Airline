<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/mypage/ticketCheck.css" rel="stylesheet">
<link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,600,700' rel='stylesheet' type='text/css'>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>


<header></header>
<div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<select onchange="location.href=this.value">
<option value="./main">나의 Every Air</option>
<option value="./memberUpdate">회원정보수정</option>
<option value="./mileage">마일리지</option>
<option selected="selected" value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>


<button id="toggleButton">Toggle</button>

<ul class="timeline" id="timeline">
  <li class="li complete">
    <div class="timestamp">
      <span class="author">온라인 체크인</span>
      <span class="date">11/15/2014<span>
    </div>
    <div class="status">
      <h4> Shift Created </h4>
    </div>
  </li>
  <li class="li complete">
    <div class="timestamp">
      <span class="author">체크인 마감</span>
      <span class="date">11/15/2014<span>
    </div>
    <div class="status">
      <h4> Email Sent </h4>
    </div>
  </li>
  <li class="li complete">
    <div class="timestamp">
      <span class="author">탑승마감</span>
      <span class="date">11/15/2014<span>
    </div>
    <div class="status">
      <h4> SIC Approval </h4>
    </div>
  </li>
  <li class="li">
    <div class="timestamp">
      <span class="author">출발</span>
      <span class="date">TBD<span>
    </div>
    <div class="status">
      <h4> Shift Completed </h4>
    </div>
  </li>
    <li class="li">
    <div class="timestamp">
      <span class="author">도착</span>
      <span class="date">TBD<span>
    </div>
    <div class="status">
      <h4> Shift Completed </h4>
    </div>
  </li>
 </ul>      
	<div>
	<div class="bookingList">예매내역</div>
		<div class="ticketInfo" style="display: none">
			<div class="ticketText">
				<div class="bookingNum">
					<span class="bookingNum">S68U58</span>
				</div>
				<div class="depInfo"> 
					<p class="ticketInfoText1">GMP</p>
					<p class="ticketInfoText2">김포(Gimpo)</p>
					<p class="ticketInfoText3">19JAN20(일) 06:10</p>
					<p class="ticketInfoText3">OZ123A456</p>
				</div>
				<div class="arrInfo"> 
					<p class="ticketInfoText1">CJU</p>
					<p class="ticketInfoText2">제주(Jeju)</p>
					<p class="ticketInfoText3">19JAN20(일) 07:20</p>
					<p class="ticketInfoText3">OZ123A456</p>
				</div>  
				<div class="moreInfo"> 
					<p class="ticketInfoText1">GMP → CJU</p>
					<p class="ticketInfoText2">좌석 : D4</p>
					<p class="ticketInfoText3">비행시간 : 48분</p>
					<p class="ticketInfoText1">CJU → GMP</p>
					<p class="ticketInfoText2">좌석 : F1</p>
					<p class="ticketInfoText3">비행시간 : 48분</p>
				</div> 
				<div class="button_wrap">
					<a class="cancel">예매 취소</a>
				</div>
			</div>
		</div>
	</div>
	<div class="bookingInfo">
		<div class="bookingTable">
			<table>
				<tr class="tableTop">
					<td>선택</td>
					<td>출발일자</td>
					<td>출발지→도착지</td>
					<td>출발→도착시간</td>
					<td>편명</td>
					<td>좌석</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>2020-02-07 (금)</td>
					<td>김포 → 제주</td>
					<td>07:30 → 08:30</td>
					<td>OZ123</td>
					<td>C4</td>
				</tr>
			</table>
		</div>
	</div>
<script type="text/javascript">
var completes = document.querySelectorAll(".complete");
var toggleButton = document.getElementById("toggleButton");


function toggleComplete(){
  var lastComplete = completes[completes.length - 1];
  lastComplete.classList.toggle('complete');
}

toggleButton.onclick = toggleComplete;
</script>

</body>
</html>