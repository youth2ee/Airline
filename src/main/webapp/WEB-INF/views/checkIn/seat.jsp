<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.airport { 
	/* background: url("../resources/newni/airplaneSeat.png"); */
	height: 1000px;
	background-repeat: none;
}

.seat1 input[type=checkbox] {
	display: none;
}

.seat1 input[type=checkbox]+label {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/e.png') left/22px no-repeat;
}

.seat2 input[type=checkbox]:checked+label {
	background-image: url('../resources/newni/e.png');
}

.seat2 input[type=checkbox] {
	display: none;
}

.seat2 input[type=checkbox]+label {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('../resources/newni/e2.png') left/22px no-repeat;
}

.seat2 input[type=checkbox]:checked+label {
	background-image: url('../resources/newni/e2.png');
}
</style>
</head>
<body>
	<div class="airport">
		<div class="seat1">
			<c:forEach begin="1" end="3">
			 <c:forEach begin="1" end="31">
				<input type="checkbox" id="box1"><label for="box1">.</label>
			  </c:forEach>
			  <br>
			</c:forEach>
			</div>
			<div class="seat2">
			<c:forEach begin="1" end="3">
			 <c:forEach begin="1" end="32">
			 <input type="checkbox" id="box2"><label for="box2">.</label>
				<input type="checkbox">
			  </c:forEach>
			  <br>
			</c:forEach>
		 </div>
	</div>
</body>
</html>