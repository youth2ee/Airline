<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<c:import url="../template/boot.jsp" />
<body>
<input type="date" name="startDate" value="${param.startDate}" id="startDate">
<input type="date" name="endDate" value="${param.endDate}" id="endDate">
<c:forEach items="${list}" var="vo">
<input type="text" value="${vo.areaNum}" class="check"><br>
</c:forEach>

<c:forEach begin="1" end="100" varStatus="vo">

<label for="${vo.current}">
${vo.current}
<input type="radio" name="areaNum" value="${vo.current}" id="${vo.current}">

</label>

</c:forEach>
<br>
요금 : <input type="text" id="rate">
<script type="text/javascript">

	var startDate = $("#startDate").val(); //2017-12-10
	var startDateArr = startDate.split('-');
 
	var endDate = $( "#endDate" ).val(); //2017-12-09
	var endDateArr = endDate.split('-');
         
	var startDateCompare = new Date(startDateArr[0], parseInt(startDateArr[1])-1, startDateArr[2]);
	var endDateCompare = new Date(endDateArr[0], parseInt(endDateArr[1])-1, endDateArr[2]);

	var day = endDateCompare - startDateCompare;
	var cday = 24*60*60*1000;
	day = day/cday;
	var rate = day * 10000;
	
	$("#rate").val(rate);

	window.onload = function(){

		$(".check").each(function(){
			var check = $(this).val();
			$("#"+check).attr('disabled',true);

		});
		
		
	}
	
</script>
</body>
</html>