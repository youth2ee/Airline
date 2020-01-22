<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/e2.png') left/22px no-repeat;
	height: 20px;
}
.booking {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/e.png') left/22px no-repeat;
	height: 20px;
}
.over {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/e.png') left/22px no-repeat;
	height: 20px;
}
.bookend {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/e3.png') left/22px no-repeat;
	height: 20px;
}
.booked {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/e3.png') left/22px no-repeat;
	height: 20px;
}
.ttt{
width: 15px;
display: inline-block;
}
</style>
</head>
<body>
	<form action="./seat" id="frm" method="post">
		<input type="text" id="people" value="${people}"> <!-- 파라미터로 넘겨 받을 값 (현재는 랜덤 값)-->
		<input type="text" id="depSeat">
		<input type="text" id="fNum" value="${fNum}" name="fNum">
		<input type="text" id="depFNum" value="${depFNum}" name="depFNum">
		<input type="text" id="bookingNum" value="${bookingNum}" name="bookingNum">
		<div class="airport">
			<div class="depAir">
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
					 			<div class="ttt">A</div>
					 		</c:when>
					 		<c:when test="${(i-1) * 31 + j eq 32}">
					 			<div class="ttt">B</div>
					 		</c:when>
					 		<c:when test="${(i-1) * 31 + j eq 63}">
					 			<div class="ttt">C</div>
					 		</c:when>
					 	</c:choose>
						<label for="${depFNum}${c}${j}" class="bookable" title="${c}${j}"><input type="checkbox" id="${depSeat}${c}${j}" class="seat" title="${c}${j}"></label>
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
					 			<div class="ttt">D</div>
					 		</c:when>
					 		<c:when test="${(i-1) * 32 + j eq 33}">
					 			<div class="ttt">E</div>
					 		</c:when>
					 		<c:when test="${(i-1) * 32 + j eq 65}">
					 			<div class="ttt">F</div>
					 		</c:when>
					 	</c:choose>
						 <label for="${depFNum}${c}${j}" class="bookable" title="${c}${j}"><input type="checkbox" id="${depFNum}${c}${j}" class="seat" title="${c}${j}"></label>
					  </c:forEach>
					  <br>
					</c:forEach>
				 </div>
				 </div>
				<div class="arrAir">
					<c:if test="${kind eq 1}"> <!-- 왕복일 경우 항목 두개 표시 -->
					<input type="text" id="arrFNum" value="${arrFNum}" name="arrFNum">
					<input type="text" id="arrSeat" name="arrSeat">
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
						 			<div class="ttt">A</div>
						 		</c:when>
						 		<c:when test="${(i-1) * 31 + j eq 32}">
						 			<div class="ttt">B</div>
						 		</c:when>
						 		<c:when test="${(i-1) * 31 + j eq 63}">
						 			<div class="ttt">C</div>
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
						 			<div class="ttt">D</div>
						 		</c:when>
						 		<c:when test="${(i-1) * 32 + j eq 33}">
						 			<div class="ttt">E</div>
						 		</c:when>
						 		<c:when test="${(i-1) * 32 + j eq 65}">
						 			<div class="ttt">F</div>
						 		</c:when>
						 	</c:choose>
							 <label for="${arrFNum}${c}${j}" class="bookable" title="${c}${j}"><input type="checkbox" id="${arrFNum}${c}${j}" class="seat" ></label>
						  </c:forEach>
						  <br>
						</c:forEach>
						</div>
				</c:if>
			</div>
		</div>
	</form>
	<button type="button" id="btn">선택 완료</button>
<script type="text/javascript">
	// ============= 인원수 랜덤 (테스트 용) =============
	// var generateRandom = function (min, max) {
	// var ranNum = Math.floor(Math.random()*(max-min+1)) + min;
	//  return ranNum;
	// }
	// $("#people").val(generateRandom(1,10));
	// ===========================================
	
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
		// alert($("input:checkbox:checked").length); // 체크된 좌석 개수
		if($("input:checkbox:checked").length == $("#people").val()){
			$("input:checkbox").not(":checked").attr('disabled', true);
			$("input:checkbox").not(":checked").parent().closest('label').removeClass('bookable');
			$("input:checkbox").not(":checked").parent().closest('label').addClass('bookend');
		}
		else if($("input:checkbox:checked").length < $("#people").val()){
			$("input:checkbox").attr('disabled', false);
			$("input:checkbox").not(":checked").addClass('bookable');
			$("input:checkbox").not(":checked").parent().closest('label').removeClass('bookend');
			$("input:checkbox").not(":checked").parent().closest('label').addClass('bookable');
		}

		if($(this).closest("div").parent().attr("class") == "depAir"){
			var depChecks=[]; // 가는 비행기의 좌석에 체크된 항목을 담을 배열
			 $('input:checkbox:checked').each(function(){
				 depChecks.push($(this).attr('title'));
				 alert($(this).attr('title'));
			});
			<c:forEach items='depChecks' var='depCheck'>
				$("#depSeat").val(${depCheck}); // 선택한 좌석을 파라미터로 넘기기 위해 input에 담아줌
			</c:forEach>
		}

	
		if($(this).closest("div").parent().attr("class") == "arrAir"){
			var arrChecks=[]; // 오는 비행기의 좌석에 체크된 항목을 담을 배열
			 $('input:checkbox:checked').each(function(){
				 arrChecks.push($(this).attr('title'));
				 alert($(this).attr('title'));
			});
			<c:forEach items='arrChecks' var='arrCheck'>
				$("#arrSeat").val(${arrCheck}); // 선택한 좌석을 파라미터로 넘기기 위해 input에 담아줌
			</c:forEach>
		}
		
	});

	<c:forEach items='${booked}' var='book'> // 예매 되어있는 좌석 가져오기
		$("input:checkbox[id=${book.seatName}]").attr('disabled', true); // 이미 예매 되어있는 좌석을 선택불가로 바꿈
		$("input:checkbox[id=${book.seatName}]").parent().closest('label').addClass('booked'); // 색상도 바꿔줌
	</c:forEach>
		
	$("#btn").click(function(){
		$("#frm").submit();
	});
</script>
</body>
</html>