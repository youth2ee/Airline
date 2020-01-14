<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp" />
</head>
<body>
<form action="./parkCheck" method="get">
<input type="date" name="startDate" id="startDate">
<input type="date" name="endDate" id="endDate">
<button>조회하기</button>
</form>
<script type="text/javascript">

window.onload = function(){
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 

	today = yyyy+'-'+mm+'-'+dd;

	$("#startDate").attr('min', today);
	$("#endDate").attr('min', today);
}


</script>
</body>
</html>