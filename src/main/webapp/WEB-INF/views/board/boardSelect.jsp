<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="../resources/css/board/boardSelect.css">
	<link rel="stylesheet" href="../resources/css/asiana/reset.css">
</head>
<body>
<div class="location_bar">
	<div class="inner">
		<a href="#" class="home"></a>
		<select onchange="if(this.value) location.href=(this.value);" id="location_select">
			<option>공지사항</option>
			<option>고객의말씀</option>
			<option></option>
		</select>	
	</div>
</div>



</body>
</html>