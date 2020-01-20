<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/limo.css" rel="stylesheet">
<style type="text/css">
.abcd{
 background-image: url("../images/limoPic/seatAfter.png") !important;

}

</style>
</head>
<body>
<c:import url="../template/boot.jsp"></c:import>
<h1>리무진 예약</h1>
	<form action="./limoBook" method="post">
		<input type="text" placeholder="id" name="id">
		<input type="date" name="limoDate" id="datepicker" class="limoDate">
		<select name="depLoc" class="depLoc">
			<option>출발지</option>
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
		<span class="place"></span>
		<span class="place2"></span>
		<input type="text" placeholder="가격" name="limoPrice" class="price">
		<select name="limoTime" class="limoTime">
			<option>출발시간</option>
			<option value="06:00" class="time">06:00</option>
			<option value="09:00" class="time">09:00</option>
			<option value="12:00" class="time">12:00</option>
			<option value="15:00" class="time">15:00</option>
			<option value="18:00" class="time">18:00</option>
			<option value="21:00" class="time">21:00</option>
			<option value="24:00" class="time">24:00</option>
		</select>
		<input type="text" name="seat" placeholder="좌석" id="seat" readonly="readonly" class="seat">
		<button type="button" class="btn btn-info btn-lg select">조회하기</button>
		<button type="button" class="btn btn-info btn-lg sel2" data-toggle="modal" data-target="#myModal" style="display: none;">조회하기</button>
		<button>예매하기</button>
	</form>
	
	<div class="container">

		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">리무진 버스 예매</h4>
		        </div>
		        <div class="modal-body">
			        <div class="modal_wrap">
						<div class="limo_wrap" >
							<div class="limo_seat">
								<c:forEach begin="1" end="45" var="limo" varStatus="vo">
									<c:choose>
										<c:when test="${vo.current%4 eq 2 && vo.current lt 40}">
											<label class="limo" title="${vo.index}" style="margin-right: 43px; cursor: pointer;">
												<input type="checkbox" name="seat" class="lim" id="${vo.current}" value="${vo.current}" style="display: none;">		
											</label>
										</c:when>
										<c:otherwise>
											<label class="limo" title="${vo.index}" style="cursor: pointer;">
												<input type="checkbox" name="seat" class="lim" id="${vo.current}" value="${vo.current}" style="display: none;">
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
						<div class="select_limoDate">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">예매일</div>
							<div class="select_limoDate_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_depLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발지</div>
							<div class="select_depLoc_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_arrLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">도착지</div>
							<div class="select_arrLoc_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_person">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">인원</div>
							<div class="select_person_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_price">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">이용가격</div>
							<div class="select_price_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_limoTime">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발시간</div>
							<div class="select_limoTime_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_seat">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">좌석</div>
							<div class="select_seat_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
					</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default complete">선택완료</button>
		          <button type="button" class="btn btn-default com2" data-dismiss="modal" style="display: none;">선택완료</button>
		          <button type="button" class="btn btn-default" data-dismiss="modal">창닫기</button>
		        </div>
		      </div>
		    </div>
		  </div>
</div>
	
<script type="text/javascript">

	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1;
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 
	today = yyyy+'-'+mm+'-'+dd;
	
	$("#datepicker").attr('min', today);

	$(".depLoc").change(function(){
		var depLoc = $(this).val();
		$(".person option:eq(0)").prop("selected", true);
		$(".limoTime option:eq(0)").prop("selected", true);
		$(".price").val("");
		$("#seat").val("");
		
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
		
	$('.select').click(function(){
		$(".lim").each(function(){
			$(this).prop("checked", false);
			$(this).parent().removeClass('abcd');
			count = 0;
			$(".select_seat_text").html("");
		});
		
		// 각각의 요소 선택안되고 있을 시 alert 창 띄우기
		if($(".limoDate").val() == ""){
			alert("날짜를 선택해주세요");
		}else if($(".depLoc option:eq(0)").prop("selected")){
			alert("출발지가 선택되지 않았습니다.");
		}else if($(".arrLoc option:eq(0)").prop("selected")){
			alert("도착지가 선택되지 않았습니다.")
		}else if($(".person option:eq(0)").prop("selected")){
			alert("인원을 선택해주세요");
		}else if($(".limoTime option:eq(0)").prop("selected")){
			alert("출발시간을 선택해주세요");
		}else{
			$(".sel2").click();
		}


		$.ajax({
			type:'get',
			url:"./disabled",
			async: false,
			data:{
				"depLoc":$(".depLoc").val(),
				"arrLoc":$(".arrLoc").val(),
				"limoDate":$(".limoDate").val(),
				"limoTime":$(".limoTime").val()
			},
			success : function(data){
				data = data.trim();
				$('.place2').html(data);
			}
		});

		// 모달창 열릴 때 값들 넘기기
		var limoDate_M = $(".limoDate").val();
		$(".select_limoDate_text").html(limoDate_M);
		var depLoc_M = $(".depLoc").val();
		$(".select_depLoc_text").html(depLoc_M);
		var arrLoc_M = $(".arrLoc").val();
		$(".select_arrLoc_text").html(arrLoc_M);
		var person_M = $(".person").val();
		$(".select_person_text").html(person_M+"명");
		var price_M = $(".price").val();
		$(".select_price_text").html(price_M+"원");
		var limoTime_M = $(".limoTime").val();
		$(".select_limoTime_text").html(limoTime_M);

		// 선택불가 좌석 
		 $(".dis").each(function(){
			var check = $(this).val();
			$("#"+check).attr('disabled', true);
			$("#"+check).parent().addClass("booked");
		}); 
	});

	// 모달창 인원수에 맞게 좌석 선택시 선택완료 진행
	$(".complete").click(function(){
		var seat = "";
		if(count < person){
			alert("인원수에 맞게 좌석을 선택해주세요");
		}else{
		$('.lim').each(function(){
			if($(this).is(":checked")){
				alert(this.value);
				seat = seat+this.value+'번';
			}
				$("#seat").val(seat);

				$(".com2").click();
			});
		}
	});
	
	var price = 0;
	$("body").on("change", ".arrLoc", function(){
		$(".person option:eq(0)").prop("selected", true);
		$(".limoTime option:eq(0)").prop("selected", true);
		$(".price").val("");
		$("#seat").val("");
		price = $(".arrLoc option:selected").attr('id');
		price = price*1;
	});

	var person = 0;
	$("body").on("change", ".person", function(){
		person = $(".person option:selected").val();
		person = person*1;
		var cal = price * person;
		$(".price").val(cal);
	})
	
	// 이용가능 좌석 빨간색 이미지로 바꾸기
	var count = 0;
	$(".lim").click(function(){
		var lim_M = $(this).val();
		if($(this).parent().hasClass('abcd')){
			$(this).parent().removeClass('abcd');
			// 모달 내 seat영역에 좌석번호 재 선택시 삭제
			$('#d'+lim_M).remove();
			count --;
		}else if(count < person){
			$(this).parent().addClass('abcd');
			// 모달 내 seat영역에 좌석번호 추가
			$(".select_seat_text").append('<span id="d'+lim_M+'" class='+lim_M+'>'+lim_M+'번'+'</span>');
			count ++;
		}else{
			alert("더 이상 선택할 수 없습니다.");
			$(this).prop("checked", false);
		}

	});



/* 	$(".limo").click(function(){
		var lim_M = $(this).children().val();
		if($(this).hasClass('abcd')){
			$(this).removeClass('abcd');
			// 모달 내 seat영역에 좌석번호 재 선택시 삭제
			$('#'+lim_M).remove();
// 			$('.select_seat_text').empty();
			count --;
		}else if(count < person){
			$(this).addClass('abcd');
			// 모달 내 seat영역에 좌석번호 추가
			$(".select_seat_text").append('<span id='+lim_M+'>'+lim_M+'번'+'</span>');
			count ++;
		}else{
			alert("더 이상 선택할 수 없습니다.");
			$(this).children().prop("checked", false);
		}

	}); */
	
	
</script>
</body>
</html>
