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
<form action="./resInsert" method="post">
<input type="date" name="startDate" value="${param.startDate}" id="startDate">
<input type="date" name="endDate" value="${param.endDate}" id="endDate">
<c:forEach items="${list}" var="vo">
<input type="text" value="${vo.areaNum}" class="check"><br>
</c:forEach>

<c:forEach begin="1" end="100" varStatus="vo">

<label for="${vo.current}">
${vo.current}
<c:choose>

	<c:when test="${vo.current%10 eq 5}">
		<input type="radio" name="areaNum" value="${vo.current}" id="${vo.current}" style=" margin-right: 40px;">
	</c:when>
	
	<c:otherwise>
		<input type="radio" name="areaNum" value="${vo.current}" id="${vo.current}" >
	</c:otherwise>
	
</c:choose>
</label>

<c:if test="${vo.current eq 20||vo.current eq 60}">
<br>
<br>
<br>
</c:if>
<c:if test="${vo.current eq 40||vo.current eq 80}">
<br>
</c:if>

</c:forEach>
<br>
예상요금 : <input type="text" id="rate" name="rate"><br>
차량번호 : <input type="text" id="carNum" name="carNum"><br>
차량종류 : <input type="text" id="carKind" name="carKind"><br>

<button>예약하기</button>
</form>
<script type="text/javascript">

	var startDate = $("#startDate").val(); //2017-12-10
	var startDateArr = startDate.split('-');
 
	var endDate = $( "#endDate" ).val(); //2017-12-09
	var endDateArr = endDate.split('-');
         
	var startDateCompare = new Date(startDateArr[0], parseInt(startDateArr[1])-1, startDateArr[2]);
	var endDateCompare = new Date(endDateArr[0], parseInt(endDateArr[1])-1, endDateArr[2]);

	var day = endDateCompare - startDateCompare;
	var cday = 24*60*60*1000;
	day = day/cday+1;
	var rate = day * 40000;
	
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