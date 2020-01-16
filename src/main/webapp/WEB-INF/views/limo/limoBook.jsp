<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/limo.css" rel="stylesheet">
</head>
<body>
<c:import url="../template/boot.jsp"></c:import>
<h1>리무진 예약</h1>
	<form action="./limoBook" method="post">
		<input type="date" name="limoDate">
		<input type="text" placeholder="id" name="id">
		<select name="depLoc" class="depLoc">
			<option value="인천공항" class="airLine">인천공항</option>
			<option value="김포공항" class="airLine">김포공항</option>
			<option value="양양공항" class="airLine">양양공항</option>
			<option value="청주공항" class="airLine">청주공항</option>
			<option value="대구공항" class="airLine">대구공항</option>
			<option value="무안공항" class="airLine">무안공항</option>
			<option value="여수공항" class="airLine">여수공항</option>
			<option value="김해공항" class="airLine">김해공항</option>
			<option value="울산공항" class="airLine">울산공항</option>
			<option value="제주공항" class="airLine">제주공항</option>
		</select>
		<span class="place">
		</span>
		<input type="text" placeholder="가격" name="limoPrice" class="price">
		<select name="limoTime" class="limoTime">
			<option value="06:00" class="time">06:00</option>
			<option value="09:00" class="time">09:00</option>
			<option value="12:00" class="time">12:00</option>
			<option value="15:00" class="time">15:00</option>
			<option value="18:00" class="time">18:00</option>
			<option value="21:00" class="time">21:00</option>
			<option value="24:00" class="time">24:00</option>
		</select>
		<input type="button" value="조회" id="search">
	</form>
	
<div class="limo_wrap" >
	<div class="limo_seat">
		<c:forEach begin="1" end="45" var="limo" varStatus="vo">
			<c:choose>
				<c:when test="${vo.current%4 eq 2 && vo.current lt 40}">
					<label class="limo" style="margin-right: 43px;">
						<input type="checkbox" name="seat" class="lim" value="${vo.current}" style="display: none; background-color: white;">		
					</label>
				</c:when>
				<c:otherwise>
					<label class="limo">
						<input type="checkbox" name="seat" class="lim" value="${vo.current}" style="display: none;">
					</label>
				</c:otherwise>
				
			</c:choose>
			<c:choose>
				<c:when test="${vo.current%4 eq 0 && vo.current lt 41}">
						<br>
				</c:when>
			</c:choose>
		</c:forEach>
	</div>
</div>
	
	
	
<script type="text/javascript">
	$(".depLoc").change(function(){
		var depLoc = $(this).val();
		$.ajax({
			type:'get',
			url:"./arrLoc",
			data:{
				"depLoc":depLoc
			},
			success : function(data){
				data = data.trim();
				$(".place").empty();
				$(".place").append(data);
			}
		})	
	});

	$("body").on("change", ".arrLoc", function(){
		var price = $(".arrLoc option:selected").attr('id');
		$(".price").val(price);
	});

	$("#search").click(function(){
		open("./limoSelect", "","width=500, height=700");
	})
	
	$(".limo").click(function(){
		var seat = $(this).children(".lim").val();
		alert(seat);

		if($(this).css("background-image", "url(../../images/limoPic/seatBefore.png)")){
			$(this).css("background-image", "url(../../images/limoPic/seatAfter.png)");
		}
	})
	
	
</script>

</body>
</html>

