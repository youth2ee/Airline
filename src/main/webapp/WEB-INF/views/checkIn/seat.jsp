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
</style>
</head>
<body>
	<form action="" id="frm">
		<input type="text" id="kidCount" value="2"> <input type="text"> <input type="text">
	</form>
	<div class="airport">
		<div class="seat1">
			<c:forEach begin="1" end="3" var="i">
			 <c:forEach begin="1" end="31" var="j">
				<label for="seat${(i-1) * 31 + j}" class="bookable"><input type="checkbox" id="seat${(i-1) * 31 + j}"  class="seat"></label>
			  </c:forEach>
			  <br>
			</c:forEach>
			</div>
			<div class="seat2">
			<c:forEach begin="1" end="3" var="i">
			 <c:forEach begin="1" end="32" var="j">
				 <label for="seat${(i-1) * 32 + j + 93}" class="bookable"><input type="checkbox" id="seat${(i-1) * 32 + j + 93}" class="seat"></label>
			  </c:forEach>
			  <br>
			</c:forEach>
		 </div>
	</div>
<script type="text/javascript">
	$("input:checkbox").click(function(){
		// alert($(this).attr('id'));
		// alert($(this).attr('class'));
		if ($(this).prop('checked')) {
			$(this).parent().closest('label').addClass('booking');
			$(this).parent().closest('label').removeClass('bookable');
		}
		else{
			alert($(this).attr('id')+" 좌석을 취소");
			$(this).parent().closest('label').addClass('bookable');
			$(this).parent().closest('label').removeClass('booking');
		}
		// alert($("input:checkbox:checked").length); // 체크된 좌석 개수
		if($("input:checkbox:checked").length == $("#kidCount").val()){
			$("input:checkbox").not(":checked").attr('disabled', true);
			$("input:checkbox").not(":checked").parent().closest('label').removeClass('bookable');
			$("input:checkbox").not(":checked").parent().closest('label').addClass('bookend');
		}
		else if($("input:checkbox:checked").length < $("#kidCount").val()){
			$("input:checkbox").attr('disabled', false);
			$("input:checkbox").not(":checked").addClass('bookable');
			$("input:checkbox").not(":checked").parent().closest('label').removeClass('bookend');
			$("input:checkbox").not(":checked").parent().closest('label').addClass('bookable');
		}
	});
	$(function() { // 구매가능한 좌석만 호버
		$('.bookable').mouseover(function() {
			$(this).addClass('over');
		});
		$('.bookable').mouseout(function() {
			$(this).removeClass('over');
		});
	});
</script>
</body>
</html>