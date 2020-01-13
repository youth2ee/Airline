<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
</head>
<body>

	<h1>bookingMain</h1>


	<form id="frm" action="bookingMain">
		<div class="kind-radio">
			<p>편도</p>
			<input type="radio" name="kind" value="1" checked="checked">
			<p>왕복</p>
			<input type="radio" name="kind" value="2" id="round">
		</div>


		<select name="depLoc" id="depLoc">
			<option value="부산">부산</option>
			<option value="서울">서울</option>
			<option value="김포">김포</option>
		</select> 
		
		
		<select name="arrLoc" id="arrLoc">		
			<option value="제주">제주</option>
			<option value="김해">김해</option>
			<option value="인천">인천</option>
		</select> 
		
		<input type="date" id="goDate">
		
		 <input type="date" id="backDate">

	

		<button id="a">aa</button>


	</form>

	<button id="b">bb</button>

	<script type="text/javascript">

var depLoc = $("#depLoc option:selected").val();

$('#b').click(function(){
		alert(depLoc);
});

$("#arrDate").hide();

$('input:radio[name=kind]').click(function(){
	if($('input:radio[id=round]').is(":checked")){
			$("#arrDate").show();

		}else{
				$("#arrDate").hide();			

		}
});



</script>






	<div>
		<!-- 검색창 -->
		<form id="frm">
			<select name="kind">

				<option id="depLoc" value="depLoc">출발지</option>
				<option id="arrLoc" value="arrLoc">도착지</option>
				<option id="airDate" value="airDate">출발날짜</option>
				<option id="depTime" value="depTime">출발시간</option>

			</select> <input type="text" name="search" id="test">

			<button id="btn" onclick="btn_click();">Search</button>

		</form>
	</div>


	<script type="text/javascript">

	
		
</script>



</body>
</html>