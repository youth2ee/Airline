<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="KO">
<head>

<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com/C/pc/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com//C/pc/css/layout.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com//C/pc/css/common.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com//C/pc/css/flyasiana.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com//C/pc/css/calendar.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com//C/pc/css/corp.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

.wrapper {
	width: 250px;
	height: 250px;
	background: #C2185B;
}

.wrapper div {
	position: absolute;
	background: #ffffff;
	border-radius: 50%;
	box-shadow: 7px 7px 10px 1px rgba(0, 0, 0, 0.5);
}

.circle1 {
	width: 80px;
	height: 80px;
	top: 80px;
	left: 80px;
	/* 추가된 부분 */
	animation: scale1 2s;
}

@
keyframes scale1 { 0% {
	transform: scale(0)
}

100%{
transform


:scale(1)


}
}
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 60px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	position: relative;
	background-color: #fefefe;
	margin: auto;
	padding: 0;
	border: 1px solid #888;
	width: 80%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.4s;
	animation-name: animatetop;
	animation-duration: 0.4s;
	width: 42%;
}

/* Add Animation */
@
-webkit-keyframes animatetop {
	from {top: -300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
@
keyframes animatetop {
	from {top: -300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}

/* The Close Button */
.close {
	color: white;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

.modal-header {
	padding: 5px 16px;
	background-color: #5cb85c;
	color: white;
}

.modal-body {
	padding: 2px 16px;
	margin-top: 20px;
	height: 550px;
}

.modal-footer {
	/*   padding: 2px 16px;
  background-color: #5cb85c;
  color: white; */
	padding: 15px 16px;
	background-color: #5cb85c;
	color: white;
	margin-bottom: 15px;
	text-align: right;
}

.modalInnerWrap {
	height: 100%;
}

.modalInnerLeft {
	width: 55%;
	height: 600px;
	background-color: red;
	float: left;
	height: 85%;
}

.modalInnerRight {
	width: 45%;
	height: 600px;
	background-color: #607D8B;
	float: left;
	height: 85%;
}

.modalInnerRightTop {
	height: 57%;
	background-color: cadetblue;
}

.modal-header2 {
	background-color: aquamarine;
	height: 95px;
}

.modalInnerBottom {
	background-color: chocolate;
	width: 45%;
	margin: 0 auto;
	display: inline-block;
	margin-left: 210px;
	height: 55px;
	margin-top: 15px;
}

.left1 {
	height: inherit;
}

.nameView {
	background-color: blueviolet;
	height: 50px;
}

.seatView {
	overflow-y: scroll;
	/* height: -webkit-fill-available; */
	height: 362px;
}

.seatView input {
	-webkit-appearance: checkbox;
	width: 10px;
	height: 10px;
	opacity: 1;
}

.seatWarning {
	height: 56px;
	background-color: burlywood;
}

.seat1 {
	background-color: beige;
	width: inherit;
	display: inline-table;
	margin-left: 17px;
	width: fit-content;
}

.seat2 {
	background-color: cornflowerblue;
	width: inherit;
	display: inline-table;
	margin-left: 50px;
	width: fit-content;
}

input[type="text"] {
	border: none;
	cursor: unset;
	font-size: 17px;
}

input:focus {
	outline: none;
}

input[type=checkbox] {
	display: none;
}

input[type=checkbox]:disabled {
	display: none;
}

.bookable {
	cursor: pointer;
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/bookableSeat.png') left/22px
		no-repeat;
	height: 30px;
}

.booking {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/bookingSeat.png') left/22px
		no-repeat;
	height: 30px;
}

.over {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/bookingSeat.png') left/22px
		no-repeat;
	height: 30px;
}

.bookend {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/bookedSeat.png') left/22px no-repeat;
	height: 30px;
}

.booked {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/bookedSeat.png') left/22px no-repeat;
	height: 30px;
}

.area {
	width: 15px;
	display: inline-block;
}

label {
	margin-left: 5px;
}

.depAir::before {
	content: "";
	width: 20px;
	height: 20px;
	background: url('../resources/newni/seatbgL.png') left/22px no-repeat;
}
.depAir::after {
	content: "";
	width: 20px;
	height: 20px;
	background: url('../resources/newni/seatbgL.png') left/22px no-repeat;
}
.depSeat {
	width: 250px;
	margin: 0 auto;
	background-color: chartreuse;
}

</style>
<title>체크인/좌석배정│아시아나항공</title>
<body>
<!-- util_wrap -->
	<div class="container" id="container">
		<h3>체크인</h3>

		<div class="title_wrap_type3">
			<h4>조회</h4>
		</div>
		<ul class="list_type3">
			<li>예약정보를 입력하시면 로그인 없이도 체크인/좌석배정이 가능합니다.</li>
			<li>팝업 차단 해제 후 이용해주시기 바랍니다.</li>
		</ul>
		<div class="search_box mar_to10">
		<form id="frm" action="./test" method="post">
			<div class="inner alC">
				<select id="numTypeSelect" style="width: 200px" title="종류별 번호">
					<option value="reservNo">예약번호</option>
					<option value="ticketNo">항공권번호</option>
				</select> <input type="text" id="input_reservNo" name="bookingNum" maxlength="8" placeholder="영문/숫자 조합 6자리 또는 숫자 8자리" title="번호 입력 예시 : 영문/숫자 조합 6자리 또는 숫자 8자리"
					style="width: 280px; text-transform: uppercase;">


				<div class="relative_calendar">
					<div class="calendar_wrap">
						<input type="text" id="departureDate1"
							class="datepicker input_cal" placeholder="탑승일 선택" title="탑승일"
							data-dateformat="y.mm.dd D" style="width: 158px;"
							data-type="single_checkin"> <a
							class="btn_airport type2 calendar_focus" id="calendar_focus1"><span
							class="hidden">탑승일 선택 달력보기</span></a>
					</div>

					<div class="calendar_layer">
						<h4 class="hidden">달력</h4>
						<div class="calendar_top">
							<select title="탑승연도 및 월" class="white"></select>
						</div>
						<div class="compareCalendar"></div>
						<a href="javascript:sharpNothig();" class="cal_status02">탑승일</a> <a
							href="javascript:sharpNothig();" class="cal_reset"><span
							class="hidden">달력 새로고침</span></a> <a href="javascript:sharpNothig();"
							class="btn_cal_close"><span class="hidden">닫기</span></a>
					</div>
				</div>
				<button type="button" id="btn_search" class="btn_M red">조회하기</button>
			</div>
			</form>
		</div>


		<div id="div_captcha" style="display: none;">

			<div id="g-recaptcha" class="g-recaptcha"
				style="display: inline-block;">
				<div style="width: 304px; height: 78px;">
					<div>
						<iframe
							src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LcyoDwUAAAAAG42mLWkJPNAs35QRLvnl2O0xOCJ&amp;co=aHR0cHM6Ly9mbHlhc2lhbmEuY29tOjQ0Mw..&amp;hl=ko&amp;v=A1Aard-wURuGsXRGA7JMOqVO&amp;size=normal&amp;cb=vf1g44civ4lq"
							width="304" height="78" role="presentation" name="a-sqpi35n32am6"
							frameborder="0" scrolling="no"
							sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe>
					</div>
					<textarea id="g-recaptcha-response" name="g-recaptcha-response"
						class="g-recaptcha-response"
						style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea>
				</div>
			</div>

		</div>

		<p class="col_brown">
			* 회원 로그인 후 예약을 조회할 수 있습니다.<a href="javascript:sharpNothig();"
				id="btnMoveLogin" class="btn_arrow">로그인</a>
		</p>
		<div class="title_wrap_type3">
			<h4>체크인 안내</h4>
		</div>

		<div class="line_row_wrap">
			<dl class="line_row">
				<dt>
					<span class="tit">체크인이란?</span>
				</dt>
				<dd>
					<p>체크인은 항공기 탑승을 위해 누구나 거쳐야 하는 필수 과정입니다.</p>
					<p class="col_black">원하는 좌석으로 미리 체크인하고, 탑승권까지 사전에 받으세요! 공항에서의
						대기시간을 줄일 수 있습니다.</p>
					<p>모든 준비를 마쳤다면, 공항에서는 짐만 부치시면 됩니다.</p>
				</dd>
			</dl>
			<dl class="line_row">
				<dt>
					<span class="tit">다양한 체크인 방법</span>
				</dt>
				<dd>
					<p>체크인은 집이나 사무실에서 또는 이동 중 모바일 기기에서도 언제든지 가능합니다.</p>
					<p class="col_black">어디서나 편리한 방법으로 체크인 하세요~</p>
				</dd>
				<dd class="full">
					<div class="icon_wrap type03 col3">
						<dl>
							<dt>
								<span class="icoset_m booking ico_ckin_01"></span>
								<p class="tit">온라인 체크인</p>
							</dt>
							<dd class="desc">탑승권도 쉽고 빠르게</dd>
							<dd>
								<button type="button" class="btn_XS white"
									id="btn_movePage_onlineCheckIn">자세히보기</button>
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="icoset_m booking ico_ckin_02"></span>
								<p class="tit">오토체크인</p>
							</dt>
							<dd class="desc">
								언제든지 신청만 해놓으면<br>출발 24시간 전에 자동으로!
							</dd>
							<dd>
								<button type="button" class="btn_XS white"
									id="btn_movePage_autoCheckIn">자세히보기</button>
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="icoset_m booking ico_ckin_03"></span>
								<p class="tit">키오스크</p>
							</dt>
							<dd class="desc">
								사전 체크인을 못했더라도,<br>공항에서도 빠르고 편리하게!
							</dd>
							<dd>
								<button type="button" class="btn_XS white"
									id="btn_movePage_keyOsk">자세히보기</button>
							</dd>
						</dl>
					</div>
				</dd>
			</dl>
		</div>

		<div class="title_wrap_type3">
			<h5>체크인/좌석배정 이용 가능 시간</h5>
		</div>
		<table class="table_list" id="tb_checkInTimeNotice">
			<caption>
				<strong>체크인/좌석배정 이용 가능 시간 표</strong>

				<p>서비스 구분,국제선,국내선,온라인 체크인,좌석배정/오토체크인 로 구성된 표입니다.</p>
			</caption>
			<colgroup>
				<col style="width: 33.3%" span="3">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">서비스 구분</th>
					<th scope="col">국제선</th>
					<th scope="col">국내선</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row" class="bg_gray">온라인 체크인</th>
					<td>출발 48시간 전 ~ 1시간 전</td>
					<td>출발 24시간 전 ~ 30분 전</td>
				</tr>
				<tr>
					<th scope="row" class="bg_gray">좌석배정/오토체크인</th>
					<td>출발 361일 전 ~ 48시간 전</td>
					<td>출발 30일 전 ~ 24시간 전</td>
				</tr>
			</tbody>
		</table>
		<p class="col_brown mar_to10">* * 단, 미주 노선의 온라인 체크인은 출발 24시간 전부터
			가능합니다.</p>



		<div class="gray_box">
			<h5>유의사항</h5>
			<ul class="list_type2">
				<li class="col_red">여권정보가 부정확하거나 유효하지 않을 경우 사전심사 결과에 따라 체크인 및
					탑승권 발급이 불가할 수 있습니다.</li>
				<li>모바일 탑승권이 허용되지 않는 일부 해외공항에서는 탑승권 전송이 제한됩니다.</li>
				<li><span class="col_black">이용 제한 대상</span>
					<ul>
						<li>체크인 : 부산 출발 국내선 및 일부 부정기편은 체크인이 제한됩니다.</li>
						<li>좌석배정 : 10인 이상 단체예약, 24개월 미만 소아 동반시 48시간 이전 좌석배정이 제한됩니다.
							(체크인은 가능)</li>
					</ul></li>
				<li>타사 항공기로 운항하는 공동운항편을 이용하실 경우 체크인 및 좌석배정 이용이 제한됩니다. (운항 항공사로
					문의)</li>
				<li>이미 좌석배정 및 체크인을 마치신 경우에도 입력 정보 확인 및 변경이 가능합니다.</li>
				<li>온라인 체크인에 대해 더 궁금한 점이 있으신가요?<a id="btnOnlineCheckInfo"
					href="javascript:sharpNothig();" class="btn_arrow">온라인 체크인 안내</a></li>

			</ul>
		</div>

	</div>
	<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>좌석선택</h2>
    </div>
    <div class="modal-header2">
      <h2>김포 -> 제주</h2>
    </div>
    <div class="modal-body">
		<div class="modalInnerWrap">
			<div class="modalInnerLeft">
				<div class="left1">
					<div class="nameView">이름</div>
						<div class="seatView">
						<div class="depAir">
				<div class="depSeat">
					<div class="seat1">
						<c:forEach begin="1" end="31" var="i">
						 <c:forEach begin="1" end="3" var="j">
						<c:choose>
						 		<c:when test="${j eq 1}">
						 			<c:set var="c" value="A"/>
						 		</c:when>
						 		<c:when test="${j eq 2}">
						 			<c:set var="c" value="B"/>
						 		</c:when>
						 		<c:otherwise>
						 			<c:set var="c" value="C"/>
						 		</c:otherwise>
						 	</c:choose>
							<label for="${depFNum}${c}${i}" class="bookable" title="${c}${i}"><input type="checkbox" id="${depFNum}${c}${i}" class="seat" title="${c}${i}"></label>
						  </c:forEach>
						  <br>
						</c:forEach>
						</div>
						<div class="seat2">
						<c:forEach begin="1" end="32" var="i">
						 <c:forEach begin="1" end="3" var="j">
						 <c:choose>
						 		<c:when test="${j eq 1}">
						 			<c:set var="c" value="D"/>
						 		</c:when>
						 		<c:when test="${j eq 2}">
						 			<c:set var="c" value="E"/>
						 		</c:when>
						 		<c:otherwise>
						 			<c:set var="c" value="F"/>
						 		</c:otherwise>
						 	</c:choose>
							 <label for="${depFNum}${c}${i}" class="bookable" title="${c}${i}"><input type="checkbox" id="${depFNum}${c}${i}" class="seat" title="${c}${i}"></label>
						  </c:forEach>
						  <br>
						</c:forEach>
					</div>
				 </div>
				</div>
						</div>
						<div class="seatWarning"> 좌석지정 유의사항 안내</div>
					</div>
			</div>
			<div class="modalInnerRight">
				<div class="modalInnerRightTop">
					<div class="seatInfo">
						<div class="seatInfo_bookSeat"><img alt="" src="../resources/newni/bookableSeat.png"> 선택가능 좌석 </div>
						<div class="seatInfo_bookingSeat"><img alt="" src="../resources/newni/bookingSeat.png"> 선택한 좌석 </div>
						<div class="seatInfo_bookedSeat"><img alt="" src="../resources/newni/bookedSeat.png"> 선택불가 좌석 </div>
						<div>이부분 전체 수정</div>
					</div>
				</div>
				<div class="modalInnerRightDown">
					<table>
						<tr>
							<td>예매번호</td>
							<td><input type="text" id="bookingNum" value="${tripData.bookingNum}" name="bookingNum" readonly="readonly"></td>	
						</tr>  
						<tr>
							<td>인원 수</td>
							<td><input type="text" id="people" value="${people}" name="people" readonly="readonly" style="width:10px">명</td>
						</tr> 
						<tr>
							<td>가는편 좌석</td>
							<td><input type="text" id="depSeat" name="depSeat" readonly="readonly"></td>
						</tr>
						<c:if test="${kind eq 1}">
						<tr>
							<td>오는편 좌석</td> 
							<td><input type="text" id="arrSeat" name="arrSeat" readonly="readonly"></td>
						</tr></c:if>
					</table>
				</div>
			</div>
			<div class="modalInnerBottom">
			 	오는편 좌석 선택
			</div>
		</div>
    </div>
    <div class="modal-footer">
      <h3>KRW</h3>
    </div>
  </div>

</div>
	<script type="text/javascript">

	
	// Get the modal
	var modal = document.getElementById("myModal");

	// Get the button that opens the modal
	var btn = document.getElementById("btn_search");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	  modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
	
	$("#btn_search").change(function(){	
		if($("#chk1").is(":checked")){
			$("#text1").attr('name','123');
		}
		else{
			$("#text1").removeAttr('name');
		}
	});
		
		var depChecks=[]; // 가는 비행기의 좌석에 체크된 항목을 담을 배열
		var arrChecks=[]; // 오는 비행기의 좌석에 체크된 항목을 담을 배열
		
		$(function() { // 구매가능한 좌석만 호버 
			$('.bookable').mouseover(function() {
				$(this).addClass('over');
			});
			$('.bookable').mouseout(function() {
				$(this).removeClass('over');
			});
		});
		
		$("input:checkbox").click(function(){
			// alert($(this).attr('id'));
			// alert($(this).attr('class'));
			if ($(this).prop('checked')) {
				$(this).parent().closest('label').addClass('booking');
				$(this).parent().closest('label').removeClass('bookable');
			}
			else{
				//alert($(this).attr('id')+" 좌석을 취소");
				$(this).parent().closest('label').addClass('bookable');
				$(this).parent().closest('label').removeClass('booking');
			}
			// 가는 편 좌석을 모두 선택시 체크박스 제어
			if($(".depAir input:checkbox:checked").length == $("#people").val()){
				$(".depAir input:checkbox").not(":checked").attr('disabled', true);
				$(".depAir input:checkbox").not(":checked").parent().closest('label').removeClass('bookable');
				$(".depAir input:checkbox").not(":checked").parent().closest('label').addClass('bookend');
			}
			else if($(".depAir input:checkbox:checked").length < $("#people").val()){
				// 이미 예매 되어있는 좌석을 제외한 나머지 좌석의 disabled을 해제
				$(".depAir input:checkbox").not(".booked input:checkbox").attr('disabled', false); 
				$(".depAir input:checkbox").not(":checked").addClass('bookable');
				$(".depAir input:checkbox").not(":checked").parent().closest('label').removeClass('bookend');
				$(".depAir input:checkbox").not(":checked").parent().closest('label').addClass('bookable');
			} 
			// 오는 편 좌석을 모두 선택시 체크박스 제어
			if($(".arrAir input:checkbox:checked").length == $("#people").val()){
				$(".arrAir input:checkbox").not(":checked").attr('disabled', true);
				$(".arrAir input:checkbox").not(":checked").parent().closest('label').removeClass('bookable');
				$(".arrAir input:checkbox").not(":checked").parent().closest('label').addClass('bookend');
			}
			else if($(".arrAir input:checkbox:checked").length < $("#people").val()){
				$(".arrAir input:checkbox").not(".booked input:checkbox").attr('disabled', false);
				$(".arrAir input:checkbox").not(":checked").addClass('bookable');
				$(".arrAir input:checkbox").not(":checked").parent().closest('label').removeClass('bookend');
				$(".arrAir input:checkbox").not(":checked").parent().closest('label').addClass('bookable');
			} 
			if($(this).closest("div").parent().attr("class") == "depSeat"){
				if($(this).is(":checked")) {
					// 좌석 선택시 배열에 넣음 
					depChecks.push($(this).attr('title'));
				} else if ($(this).not(":checked")) {
					// 좌석 선택 해제시 해제한 값을 찾아서 배열에서 삭제
					depChecks.splice(depChecks.indexOf($(this).attr('title')),1);	
				}
				<c:forEach items='depChecks' var='depCheck'>
					$("#depSeat").val(${depCheck}); // 선택한 좌석을 파라미터로 넘기기 위해 input에 담아줌
				</c:forEach>
				
			}

			if($(this).closest("div").parent().attr("class") == "arrSeat"){
				if($(this).is(":checked")) {
					arrChecks.push($(this).attr('title'));
				} else if ($(this).not(":checked")) {
					arrChecks.splice(arrChecks.indexOf($(this).attr('title')),1);	
				}
				<c:forEach items='arrChecks' var='arrCheck'>
					$("#arrSeat").val(${arrCheck});
				</c:forEach>
			}
			
		});

		<c:forEach items='${booked}' var='book'> // 예매 되어있는 좌석 가져오기
			console.log(${book.fnum});
			$("input:checkbox[id=${book.fnum}${book.seatName}]").attr('disabled', true); // 이미 예매 되어있는 좌석을 선택불가로 바꿈
			$("input:checkbox[id=${book.fnum}${book.seatName}]").parent().closest('label').addClass('booked'); // 색상도 바꿔줌
			$("input:checkbox[id=${book.fnum}${book.seatName}]").parent().closest('label').removeClass('bookable'); // 색상도 바꿔줌
		</c:forEach>
		
		$("#btn").click(function(){
			if($(".arrAir").length != 0) { // 왕복
				if($("#people").val() == $(".depAir input:checkbox:checked").length && $("#people").val() == $(".arrAir input:checkbox:checked").length)
					$("#frm").submit();
				else if($("#people").val() != $(".depAir input:checkbox:checked").length)
					alert('가는편 비행기의 좌석을 확인');
				else if($("#people").val() != $(".arrAir input:checkbox:checked").length)
					alert('오는편 비행기의 좌석을 확인');
			}
			else if($(".arrAir").length == 0) { // 편도
				if($("#people").val() == $(".depAir input:checkbox:checked").length)
					$("#frm").submit();
				else
					alert('가는편 비행기의 좌석을 확인');
			}
		});
		$("#btn_search").click(function(){
			$("#frm").submit();
		});
	</script>
			
</body>
</html>
