<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<select name="arrLoc" class="arrLoc arrLoc${sec}">
<!-- 		<option title="11111">도착지</option> -->
		<c:forEach items="${list}" var="location">
			<option value="${location.arrLoc}" id="${location.price}" title="${location.price}">${location.arrLoc}</option>	
		</c:forEach>	
	</select>
	<select name="person" class="person person${sec}">
		<option>인원선택(대인)</option>
		<option value="0">0</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
	</select>
	<select class="child child${sec}">
		<option>인원(소인)</option>
		<option value="0">0</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
	</select>

</body>
</html>
