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
	<div class="bookingInfo">
		<div class="bookingTable">
			<!-- <table>
				<tr class="tableTop">
					<td class="td1">선택</td>
					<td class="td2">출발일자</td>
					<td class="td3">출발지 → 도착지</td>
					<td class="td4">출발 → 도착시간</td>
					<td class="td5">편명</td>
					<td class="td6">좌석</td>
					<td class="td7">운임</td>
					<td class="td8">탑승번호</td>
					<td class="td9">탑승자명</td>
				</tr>
				<tr class="tableContents">
					<td><input type="checkbox"></td>
					<td>2020-02-07 (금)</td>
					<td>김포 → 제주</td>
					<td>07:30 → 08:30</td>
					<td>OZ123</td>
					<td>C4</td>
					<td>30000</td>
					<td>OZ123A564</td>
					<td>YOO ZA</td>
				</tr>
				<tr class="tableContents">
					<td><input type="checkbox"></td>
					<td>2020-02-07 (금)</td>
					<td>김포 → 제주</td>
					<td>07:30 → 08:30</td>
					<td>OZ123</td>
					<td>D4</td>
					<td>30000</td>
					<td>OZ123A456</td>
					<td>LEE GAYOUNG</td>
				</tr>
			</table> -->
			<div>
				<c:forEach items="${bookList}" var="book" varStatus="i">
					<p class="bookList"><span id="bookingNum">${book.bookingNum}</span> <span>${book.resDate}</span><span>${book.depAirportNm}</span><span>${book.arrAirportNm}</span></p>
				</c:forEach>
			</div>
			<div class="ajax" style="display: none;">
				
			</div>
			<div class="test"></div>
		</div>
	</div>
<script type="text/javascript">
var completes = document.querySelectorAll(".complete");
var toggleButton = document.getElementById("toggleButton");
	$(".bookList").click(function(){
			$.get("./bookingMore?bookingNum=" + $(this).find('#bookingNum').text(),function(data) {
				$(".ajax").html(data);
				var count = $(".ajax").find(".count").text();
				var rowItem = '<table class="open"><tr class="tableTop"><td class="td1">선택</td><td class="td2">출발일자</td><td class="td3">출발지 → 도착지</td><td class="td4">출발 → 도착시간</td><td class="td5">편명</td><td class="td6">좌석</td><td class="td7">운임</td><td class="td8">탑승번호</td><td class="td9">탑승자명</td></tr>';
				for(var i = 1; i <= count ; i++){
					var depPlandTime = $(".ajax").find(".depPlandTime"+i).text();
					var depPlandTime2 = depPlandTime.substring(0,4) + "-" + depPlandTime.substring(4,6) + "-" + depPlandTime.substring(6,8);
					var depPlandTime3 = depPlandTime.substring(8,10) + ":" + depPlandTime.substring(10,12);
					var arrPlandTime = $(".ajax").find(".arrPlandTime"+i).text();
					var arrPlandTime2 = arrPlandTime.substring(8,10) + ":" + arrPlandTime.substring(10,12);
					var seatName = $(".ajax").find(".seatName"+i).text();
					var flightBnum = $(".ajax").find(".flightBNum"+i).text();
					var totalPrice = $(".ajax").find(".totalPrice"+i).text();
					if(seatName == "")
						seatName = "X";
					if (flightBnum == "")
						flightBnum = "X";
					if(totalPrice == "0")
						totalPrice = "운임정보없음";
					rowItem += '<tr class="tableContents">';
					rowItem += '<td><input type="checkbox"></td>';
					rowItem += '<td>'+depPlandTime2+'</td>';
					rowItem += '<td>'+$(".ajax").find(".depAirportNm"+i).text()+" → "+$(".ajax").find(".arrAirportNm"+i).text()+'</td>';
					rowItem += '<td>'+depPlandTime3+" → "+arrPlandTime2+'</td>';
					rowItem += '<td>'+$(".ajax").find(".vihicleId"+i).text()+'</td>';
					rowItem += '<td>'+seatName+'</td>';
					rowItem += '<td>'+totalPrice+'</td>';
					rowItem += '<td>'+flightBnum+'</td>';
					rowItem += '<td>'+$(".ajax").find(".name"+i).text()+'</td>';
				
				}
				rowItem += '</table>';
				$(".bookingTable").append(rowItem);
				if($(".ajax").find(".isCheckIn").text() != 0)
					alert('체크인 함');
			});
	});

function toggleComplete(){
  var lastComplete = completes[completes.length - 1];
  lastComplete.classList.toggle('complete');
}

toggleButton.onclick = toggleComplete;
</script>

</body>
</html>