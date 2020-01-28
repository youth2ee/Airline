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
<!------------ 공항에서 도시로 이동할 경우  ------------>
	<h1>리무진 예약</h1>
	<div class="containers contain">
	  <button type="button" class="btn btn-info">공항 -> 도시</button>
	  <button type="button" class="btn btn-info">도시 -> 공항</button>
	  <button class="btn btn-info add">추가</button>
	  <button class="btn btn-danger del">삭제</button>
	  <button class="btn btn-warning gobooks">예매하기</button>
  		<div class="frm_wrap">
		   <form action="./limoBook"  method="post" class="frm">
		    	<input type="checkbox" value="frm_wrap" class="checkbox" style="display: inline-block;">
				<input type="text" placeholder="id" name="id">
				<input type="date" name="limoDate" class="limoDate datepicker">
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
				<span class="price1"></span>
				<span class="price2"></span>
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
				<input type="text" name="seat" placeholder="좌석" readonly="readonly" class="seat">
				<button type="button" class="btn btn-info btn-lg select">조회하기</button>
				<button type="button" class="btn btn-info btn-lg sel" data-toggle="modal" data-target="#myModal" style="display: none;">조회하기</button>
				<button type="button" class="books" style="display: none;">예매하기</button>
				
				<div class="containers" style="display: none;">
				  	<div class="frm_wrap2">
					    <div class="here">
					    	<input type="checkbox" value="frm_wrap2" class="checkbox" style="display: inline-block;">
							<input type="text" placeholder="id" name="id">
							<input type="date" name="limoDate" class="limoDate2 datepicker2">
							<select name="depLoc" class="depLoc2">
								<option>출발지</option>
								<option value="인천공항" class="airLine2">인천공항</option>
								<option value="김포공항" class="airLine2">김포공항</option>
								<option value="양양공항" class="airLine2">양양공항</option>
								<option value="청주공항" class="airLine2">청주공항</option>
								<option value="대구공항" class="airLine2">대구공항</option>
								<option value="무안공항" class="airLine2">무안공항</option>
								<option value="여수공항" class="airLine2">여수공항</option>
								<option value="김해공항" class="airLine2">김해공항</option>
								<option value="울산공항" class="airLine2">울산공항</option>
								<option value="제주공항" class="airLine2">제주공항</option>
							</select>
							<span class="place4"></span>
							<span class="place6"></span>
							<input type="text" placeholder="가격" name="limoPrice" class="price2">
							<select name="limoTime" class="limoTime2">
								<option>출발시간</option>
								<option value="06:00" class="time2">06:00</option>
								<option value="09:00" class="time2">09:00</option>
								<option value="12:00" class="time2">12:00</option>
								<option value="15:00" class="time2">15:00</option>
								<option value="18:00" class="time2">18:00</option>
								<option value="21:00" class="time2">21:00</option>
								<option value="24:00" class="time2">24:00</option>
							</select>
							<input type="text" name="seat" placeholder="좌석" readonly="readonly" class="seat2">
							<button type="button" class="btn btn-info btn-lg select2">조회하기</button>
							<button type="button" id="sel3" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2" style="display: none;">조회하기</button>
							<button type="button" class="bookssssssssssssss" style="display: none;">예매하기</button>
						</div>
					</div>
				  </div>
				<div class="hereeeer"></div>
			</form>
		</div>
	  </div>
	

	<!------------ Modal 시작 : 리무진 버스 예매 ------------>
	<div class="container">

		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog">
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


<!------------------------------------------------ 편도 2회 예매 ------------------------------------------------------>

	

	<!------------ Modal 시작 : 리무진 버스 예매 ------------>
	<div class="container">

		  <div class="modal fade" id="myModal2" role="dialog">
		    <div class="modal-dialog">
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
												<input type="checkbox" name="seat" class="lim2" id="two${vo.current}" value="${vo.current}" style="display: none;">		
											</label>
										</c:when>
										<c:otherwise>
											<label class="limo" title="${vo.index}" style="cursor: pointer;">
												<input type="checkbox" name="seat" class="lim2" id="two${vo.current}" value="${vo.current}" style="display: none;">
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
							<div class="select_limoDate_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_depLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발지</div>
							<div class="select_depLoc_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_arrLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">도착지</div>
							<div class="select_arrLoc_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_person">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">인원</div>
							<div class="select_person_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_price">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">이용가격</div>
							<div class="select_price_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_limoTime">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발시간</div>
							<div class="select_limoTime_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_seat">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">좌석</div>
							<div class="select_seat_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
					</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default complete2">선택완료</button>
		          <button type="button" class="btn btn-default com2" data-dismiss="modal" style="display: none;">선택완료</button>
		          <button type="button" class="btn btn-default" data-dismiss="modal">창닫기</button>
		        </div>
		      </div>
		    </div>
		  </div>
</div>


	
<script type="text/javascript">
// 편도 1회 예매 --------------------------------------------------------------------------------------------------------

	// 지난 날 막기 : date함수
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
	
	$(".datepicker").attr('min', today);

	$(".depLoc").change(function(){
		var depLoc = $(this).val();
		$(".person option:eq(0)").prop("selected", true);
		$(".limoTime option:eq(0)").prop("selected", true);
		$(".price").val("");
		$(".seat").val("");
		
		$.ajax({
			type:'get',
			url:"./arrLoc",
			data:{
				"depLoc":depLoc,
				"sec":"1"
			},
			success : function(data){
				data = data.trim();
				$(".place").empty();
				$(".place").append(data);
			}
		})	
	});
		
	$('.select').click(function(){
		alert(person);
		alert(child);
		alert(totalperson);
		$(".lim").each(function(){
			$(this).prop("checked", false);
			$(this).prop('disabled', false);
			$(this).parent().removeClass('abcd');
			$(this).parent().removeClass('booked');
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
			$(".sel").click();
		}


		$.ajax({
			type:'get',
			url:"./disabled",
			async: false,
			data:{
				"depLoc":$(".depLoc").val(),
				"arrLoc":$(".arrLoc").val(),
				"limoDate":$(".limoDate").val(),
				"limoTime":$(".limoTime").val(),
				"sec":"1"
			},
			success : function(data){
				data = data.trim();
				console.log(data);
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
			var checked = $(this).val();
			$("#"+checked).attr('disabled', true);
			$("#"+checked).parent().addClass("booked");
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
				$(".seat").val(seat);

				$(".com2").click();
			});
		}
	});
	
	// 출발지가 바뀌면 다른 값들 초기화
	var price = 0;
	$("body").on("change", ".arrLoc1", function(){
		$(".person option:eq(0)").prop("selected", true);
		$(".limoTime option:eq(0)").prop("selected", true);
		$(".price").val("");
		$(".seat").val("");
		price = $(".arrLoc1 option:selected").attr('id');
		price = price*1;
	});

	// 대인 & 소인 가격 산출하기 : 소인가격 = 대인가격 * 0.8
	var person = 0;
	var child = 0;
	var cal1 = 0;
	var totalperson = 0;
	var cal2 = 0;
	$("body").on("change", ".person1", function(){
		person = $(".person option:selected").val();
		person = person*1;
		cal1 = price * person;
		totalperson = person + child;
		$(".price").val(cal1+cal2);
		if(totalperson > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child option:eq(0)").prop("selected", true);
			$(".price").val(cal1);
		}
	});
	
	$("body").on("change", ".child1", function(){
		child = $(".child option:selected").val();
		child = child*1;
		cal2 = price * 0.8 * child;
		$(".price").val(cal1+cal2);
			totalperson = person + child;
		if(totalperson > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child option:eq(0)").prop("selected", true);
			$(".price").val(cal1);
		}
	});
	
	// 이용가능 좌석 빨간색 이미지로 바꾸기
	var count = 0;
	$(".lim").click(function(){
		var lim_M = $(this).val();
		if($(this).parent().hasClass('abcd')){
			$(this).parent().removeClass('abcd');
			// 모달 내 seat영역에 좌석번호 재 선택시 삭제
			$('#d'+lim_M).remove();
			count --;
		}else if(count < totalperson){
			$(this).parent().addClass('abcd');
			// 모달 내 seat영역에 좌석번호 추가
			$(".select_seat_text").append('<span id="d'+lim_M+'" class='+lim_M+'>'+lim_M+'번'+'</span>');
			count ++;
		}else{
			alert("더 이상 선택할 수 없습니다.");
			$(this).prop("checked", false);
		}
	});

	// 공항 -> 도시 추가
	var check = 0;
	var checkcheck = true;
	var parent = $(".frm_wrap").html();
		$(".add").click(function(){
		var frm = $(".frm_wrap2").html();
		if(check<1){
			if(checkcheck){
				//$(".frm_wrap").append(frm);
				$(".hereeeer").append(frm);
				check++;
			} else{
				//$(".frm_wrap").append(parent);
				$(".hereeeer").append(parent);
			alert(parent);
			}
		}else{
			alert("편도당 예매는 2번까지 가능합니다.");
		}
	});

	$(".del").click(function(){
		$(".checkbox").each(function(){
			if($(this).prop("checked")){
				var h = $(this).val();
				if(h == "frm_wrap"){
					console.log("frm_wrap");
					checkcheck = false;
				}else{
					checkcheck = true;
				}
				$(this).parent().remove();
				check --;
			}

			
		});
	});

	$(".gobooks").click(function(){
		$(".checkbox").each(function(){
			if($(this).prop("checked")){
				$(this).parent().submit();
			}
		});
	});

// 편도 2회 예매 --------------------------------------------------------------------------------------------------------
// 지난 날 막기 : date함수
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
	
	$(".datepicker2").attr('min', today);

	$("body").on("change", ".depLoc2", function(){
		var depLoc = $(this).val();
		$(".person2 option:eq(0)").prop("selected", true);
		$(".limoTime2 option:eq(0)").prop("selected", true);
		$(".price2").val("");
		$(".seat2").val("");
		
		$.ajax({
			type:'get',
			url:"./arrLoc",
			data:{
				"depLoc":depLoc,
				"sec":"2"
			},
			success : function(data){
				data = data.trim();
				$(".place4").empty();
				$(".place4").append(data);
			}
		})	
	});

	$("body").on("click", ".select2", function(){
		alert(person2);
		alert(child2);
		alert(totalperson2);
		$(".lim2").each(function(){
			console.log('lim2');
			$(this).prop('disabled', false);
			$(this).prop("checked", false);
			$(this).parent().removeClass('abcd');
			$(this).parent().removeClass('booked');
			count2 = 0;
			$(".select_seat_text2").html("");
		});
		
		// 각각의 요소 선택안되고 있을 시 alert 창 띄우기
		if($(".limoDate2").val() == ""){
			alert("날짜를 선택해주세요");
		}else if($(".depLoc2 option:eq(0)").prop("selected")){
			alert("출발지가 선택되지 않았습니다.");
		}else if($(".arrLoc2 option:eq(0)").prop("selected")){
			alert("도착지가 선택되지 않았습니다.")
		}else if($(".person2 option:eq(0)").prop("selected")){
			alert("인원을 선택해주세요");
		}else if($(".limoTime2 option:eq(0)").prop("selected")){
			alert("출발시간을 선택해주세요");
		}else{
			$("#sel3").click();
			
		}


		$.ajax({
			type:'get',
			url:"./disabled",
			async: false,
			data:{
				"depLoc":$(".depLoc2").val(),
				"arrLoc":$(".arrLoc2").val(),
				"limoDate":$(".limoDate2").val(),
				"limoTime":$(".limoTime2").val(),
				"sec":"2"
			},
			success : function(data){
				data = data.trim();
				console.log(data);
				$('.place2').html(data);
			}
		});

		// 모달창 열릴 때 값들 넘기기
		var limoDate_M = $(".limoDate2").val();
		$(".select_limoDate_text2").html(limoDate_M);
		var depLoc_M = $(".depLoc2").val();
		$(".select_depLoc_text2").html(depLoc_M);
		var arrLoc_M = $(".arrLoc2").val();
		$(".select_arrLoc_text2").html(arrLoc_M);
		var person_M = $(".person2").val();
		$(".select_person_text2").html(person_M+"명");
		var price_M = $(".price2").val();
		$(".select_price_text2").html(price_M+"원");
		var limoTime_M = $(".limoTime2").val();
		$(".select_limoTime_text2").html(limoTime_M);

		// 선택불가 좌석 
		 $(".dis").each(function(){
			 console.log('dis');
			var checked = $(this).val();
			$("#two"+checked).attr('disabled', true);
			$("#two"+checked).parent().addClass("booked");
		}); 
	});

	// 모달창 인원수에 맞게 좌석 선택시 선택완료 진행
	$(".complete2").click(function(){
		var seat2 = "";
		if(count2 < person2){
			alert("인원수에 맞게 좌석을 선택해주세요");
		}else{
		$('.lim2').each(function(){
			if($(this).is(":checked")){
				alert(this.value);
				seat2 = seat2+this.value+'번';
			}
				$(".seat2").val(seat2);

				$(".com2").click();
			});
		}
	});
	
	// 출발지가 바뀌면 다른 값들 초기화
	var price2 = 0;
	$("body").on("change", ".arrLoc2", function(){
		$(".person2 option:eq(0)").prop("selected", true);
		$(".limoTime2 option:eq(0)").prop("selected", true);
		$(".price2").val("");
		$(".seat2").val("");
		price2 = $(".arrLoc2 option:selected").prop("id");
		alert(price2);
		price2 = price2*1;
		console.log(price2);	
	});

	// 대인 & 소인 가격 산출하기 : 소인가격 = 대인가격 * 0.8
	var person2 = 0;
	var child2 = 0;
	var cal3 = 0;
	var totalperson2 = 0;
	var cal4 = 0;
	$("body").on("change", ".person2", function(){
		person2 = $(".person2 option:selected").val();
		person2 = person2*1;
		cal3 = price2 * person2;
		$(".price2").val(cal3+cal4);
		totalperson2 = person2 + child2;
		if(totalperson2 > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child2 option:eq(0)").prop("selected", true);
			$(".price2").val(cal3);
		}
	});
	
	$("body").on("change", ".child2", function(){
		child2 = $(".child2 option:selected").val();
		child2 = child2*1;
		cal4 = price2 * 0.8 * child2;
		$(".price2").val(cal3+cal4);
		totalperson2 = person2 + child2;
		if(totalperson2 > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child2 option:eq(0)").prop("selected", true);
			$(".price2").val(cal3);
		}
	});
	
	// 이용가능 좌석 빨간색 이미지로 바꾸기
	var count2 = 0;
	$(".lim2").click(function(){
		var lim_M = $(this).val();
		if($(this).parent().hasClass('abcd')){
			$(this).parent().removeClass('abcd');
			// 모달 내 seat영역에 좌석번호 재 선택시 삭제
			$('#c'+lim_M).remove();
			count2 --;
		}else if(count2 < totalperson2){
			$(this).parent().addClass('abcd');
			// 모달 내 seat영역에 좌석번호 추가
			$(".select_seat_text2").append('<span id="c'+lim_M+'" class='+lim_M+'>'+lim_M+'번'+'</span>');
			count2 ++;
		}else{
			alert("더 이상 선택할 수 없습니다.");
			$(this).prop("checked", false);
		}
	});

	// 공항 -> 도시 추가
	var frm2 = $(".frm_wrap2").html();
	var check2 = 0;
	$(".add2").click(function(){
		if(check2<1){
			$(".frm_wrap2").append(frm2);
			check2++;
		}else{
			alert("편도당 예매는 2번까지 가능합니다.");
		}
	});

	$(".del2").click(function(){
		$(".checkbox2").each(function(){
			if($(this).prop("checked")){
				$(this).parent().remove();
				check2 --;
			}
		});
	});

</script>
</body>
</html>