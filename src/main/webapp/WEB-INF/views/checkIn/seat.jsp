<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/reset.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>좌석 선택</title>
<style type="text/css">
.airport {
	/* background: url("../resources/newni/airplaneSeat.png"); */
	height: 1000px;
	background-repeat: none;
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
	background: url('../resources/newni/bookableSeat.png') left/22px no-repeat;
	height: 30px;
}

.booking {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/bookingSeat.png') left/22px no-repeat;
	height: 30px;
}

.over {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/bookingSeat.png') left/22px no-repeat;
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

.depAir {
	/*background: url(../resources/newni/airplaneSeat.png);*/
	height: 700px;
	background-size: 1200px;
	background-repeat: no-repeat;
}

.arrAir {
	/*background: url(../resources/newni/airplaneSeat.png);*/
	height: 700px;
	background-size: 1200px;
	background-repeat: no-repeat;
	/*   transform: rotate(0deg);
	-moz-transform: scaleX(-1);
	-o-transform: scaleX(-1);
	-webkit-transform: scaleX(-1);
	transform: scaleX(-1);
	filter: FlipH;
	-ms-filter: "FlipH"; */
}

.depSeat {
	position: absolute;
	margin-left: 250px;
	margin-top: 180px;
}

.seat1 {
	margin-bottom: 50px;
}

.sidenav {
	width: 400px;
	height: 500px;
	position: fixed;
	z-index: 1;
	top: 20px;
	left: 10px;
	background: #FFF;
	overflow-x: hidden;
	border: solid 6px #c30d23;
	margin-left: 1400px;
	box-sizing: border-box;
	margin-top: 120px;
}

#btn {
	height: 50px;
    border-radius: 4px;
    background-color: #c30d23;
    border: none;
    color: #FFFFFF;
    font-size: 18px;
    width: 100%;
    transition: all 0.5s;
    cursor: pointer;
    margin: 5px;
    margin-top: 114px;
}

#btn span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

#btn span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

#btn:hover span {
	padding-right: 25px;
}

#btn:hover span:after {
	opacity: 1;
	right: 0;
}

input[type="text"] {
	border: none;
	cursor: unset;
	font-size: 17px;
}

input:focus {
	outline: none;
}

.seatInfo {
	height: 100px;
	width: 100%;
	border: 2px solid #e6acac;
	border-radius: 5px;
	margin-bottom: 30px;
	padding-top: 5px;
	padding-left: 5px;
	box-sizing: border-box;
}

.seatInfo img {
	height: 20px;
}

.navText {
	padding: 19px 30px 19px;
	border-bottom: 1px solid #999;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	color: #010101;
	font-size: 22px;
	letter-spacing: -2px;
}

.navBody {
	padding: 15px;
	letter-spacing: -2px;
	font-size: 17px;
}
p {
  margin-bottom: 10px;
}
td{
	padding:2px;
}
</style>
</head>
<c:import url="../layout/header.jsp" />
<body>
<form action="./seat" id="frm" method="post">
<div class="sidenav">
	<div class="navText">좌석 선택</div>
	<div class="navBody">
		<div class="seatInfo">
			<div class="seatInfo_bookSeat"><img alt="" src="../resources/newni/bookableSeat.png"> 선택가능 좌석 </div>
			<div class="seatInfo_bookingSeat"><img alt="" src="../resources/newni/bookingSeat.png"> 선택한 좌석 </div>
			<div class="seatInfo_bookedSeat"><img alt="" src="../resources/newni/bookedSeat.png"> 선택불가 좌석 </div>
			<div>이부분 전체 수정</div>
		</div>
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
		<p><button type="button" id="btn"><span>선택 완료</span></button></p>
	</div>
</div>
	
		<input type="text" id="depFNum" value="${depFNum}" name="depFNum">
		<div class="airport">
			<div class="depAir">
				<div class="depSeat">
					<div class="seat1">
						<c:forEach begin="1" end="3" var="i">
						 <c:forEach begin="1" end="31" var="j">
						 	<c:choose>
						 		<c:when test="${i eq 1}">
						 			<c:set var="c" value="A"/>
						 		</c:when>
						 		<c:when test="${i eq 2}">
						 			<c:set var="c" value="B"/>
						 		</c:when>
						 		<c:otherwise>
						 			<c:set var="c" value="C"/>
						 		</c:otherwise>
						 	</c:choose>
						 	<c:choose>
						 		<c:when test="${(i-1) * 31 + j eq 1}">
						 			<div class="area">A</div>
						 		</c:when>
						 		<c:when test="${(i-1) * 31 + j eq 32}">
						 			<div class="area">B</div>
						 		</c:when>
						 		<c:when test="${(i-1) * 31 + j eq 63}">
						 			<div class="area">C</div>
						 		</c:when>
						 	</c:choose>
							<label for="${depFNum}${c}${j}" class="bookable" title="${c}${j}"><input type="checkbox" id="${depFNum}${c}${j}" class="seat" title="${c}${j}"></label>
						  </c:forEach>
						  <br>
						</c:forEach>
						</div>
						<div class="seat2">
						<c:forEach begin="1" end="3" var="i">
						 <c:forEach begin="1" end="32" var="j">
						 <c:choose>
						 		<c:when test="${i eq 1}">
						 			<c:set var="c" value="D"/>
						 		</c:when>
						 		<c:when test="${i eq 2}">
						 			<c:set var="c" value="E"/>
						 		</c:when>
						 		<c:otherwise>
						 			<c:set var="c" value="F"/>
						 		</c:otherwise>
						 	</c:choose>
						 	<c:choose>
						 		<c:when test="${(i-1) * 32 + j eq 1}">
						 			<div class="area">D</div>
						 		</c:when>
						 		<c:when test="${(i-1) * 32 + j eq 33}">
						 			<div class="area">E</div>
						 		</c:when>
						 		<c:when test="${(i-1) * 32 + j eq 65}">
						 			<div class="area">F</div>
						 		</c:when>
						 	</c:choose>
							 <label for="${depFNum}${c}${j}" class="bookable" title="${c}${j}"><input type="checkbox" id="${depFNum}${c}${j}" class="seat" title="${c}${j}"></label>
						  </c:forEach>
						  <br>
						</c:forEach>
					</div>
				 </div>
				</div>
					<c:if test="${kind eq 1}"> <!-- 왕복일 경우 항목 두개 표시 -->
				<div class="arrAir">
					<input type="text" id="arrFNum" value="${arrFNum}" name="arrFNum">
					<div class="arrSeat">
						<div class="seat1">
							<c:forEach begin="1" end="3" var="i">
							 <c:forEach begin="1" end="31" var="j">
							 	<c:choose>
							 		<c:when test="${i eq 1}">
							 			<c:set var="c" value="A"/>
							 		</c:when>
							 		<c:when test="${i eq 2}">
							 			<c:set var="c" value="B"/>
							 		</c:when>
							 		<c:otherwise>
							 			<c:set var="c" value="C"/>
							 		</c:otherwise>
							 	</c:choose>
							 	<c:choose>
							 		<c:when test="${(i-1) * 31 + j eq 1}">
							 			<div class="area">A</div>
							 		</c:when>
							 		<c:when test="${(i-1) * 31 + j eq 32}">
							 			<div class="area">B</div>
							 		</c:when>
							 		<c:when test="${(i-1) * 31 + j eq 63}">
							 			<div class="area">C</div>
							 		</c:when>
							 	</c:choose>
								<label for="${arrFNum}${c}${j}" class="bookable" title="${c}${j}"><input type="checkbox" id="${arrFNum}${c}${j}" class="seat" title="${c}${j}"></label>
							  </c:forEach>
							  <br>
							</c:forEach>
							</div>
							<div class="seat2">
							<c:forEach begin="1" end="3" var="i">
							 <c:forEach begin="1" end="32" var="j">
							 <c:choose>
							 		<c:when test="${i eq 1}">
							 			<c:set var="c" value="D"/>
							 		</c:when>
							 		<c:when test="${i eq 2}">
							 			<c:set var="c" value="E"/>
							 		</c:when>
							 		<c:otherwise>
							 			<c:set var="c" value="F"/>
							 		</c:otherwise>
							 	</c:choose>
							 	<c:choose>
							 		<c:when test="${(i-1) * 32 + j eq 1}">
							 			<div class="area">D</div>
							 		</c:when>
							 		<c:when test="${(i-1) * 32 + j eq 33}">
							 			<div class="area">E</div>
							 		</c:when>
							 		<c:when test="${(i-1) * 32 + j eq 65}">
							 			<div class="area">F</div>
							 		</c:when>
							 	</c:choose>
								 <label for="${arrFNum}${c}${j}" class="bookable" title="${c}${j}"><input type="checkbox" id="${arrFNum}${c}${j}" class="seat" title="${c}${j}" ></label>
							  </c:forEach>
							  <br>
							</c:forEach>
							</div>
						</div>
				</div>
				</c:if>
		</div>
	</form>
<script type="text/javascript">
	// ============= 인원수 랜덤 (테스트 용) =============
	// var generateRandom = function (min, max) {
	// var ranNum = Math.floor(Math.random()*(max-min+1)) + min;
	//  return ranNum;
	// }
	// $("#people").val(generateRandom(1,10));
	// ===========================================
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
</script>
</body>
</html>