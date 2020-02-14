<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/index/main.css" rel="stylesheet">
<c:import url="./template/boot.jsp"></c:import>

<!-- 전반적인 CSS -->
<link rel="stylesheet" href="../resources/css/jquery.bxslider.css">
<link rel="stylesheet" href="../resources/newni/dist/css/swiper.min.css">
<link rel="stylesheet" href="../resources/newni/dist/fullpage.css">

<!-- 예약 -->
<!-- Icons font CSS-->
<link href="../resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
<link href="../resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
<!-- .../resources/vendor CSS-->
<link href="../resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="../resources/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="../resources/vendor/css/main.css" rel="stylesheet" media="all">

<!-- icon -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script type="text/javascript">
$(document).ready(function() {
	$('.slider').bxSlider();
});
</script>

<style type="text/css">
.alert {
	background-color: #f4b136;
	color: white;
	padding: 10px;
	margin-bottom: 0;
	border: 1px solid transparent;
	border-radius: 0;
}

.closebtn {
	margin-left: 15px;
	font-weight: bold;
	float: right;
	font-size: 22px;
	line-height: 20px;
	cursor: pointer;
	transition: 0.3s;
}

.closebtn:hover {
	color: black;
}
</style>
</head>
<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 

  <!-- <strong>신종 코로나 바이러스</strong>&nbsp주의 하세여 -->
  <p class="strong">
  			코로나19 관련 국가별 입국 제한 현황
  	<a href="${pageContext.request.contextPath}/notice/noticeSelect?num=132" style="text-decoration: underline;">자세히보기</a>
  </p>

</div>
<header id="header">
	<c:import url="./layout/header.jsp" />
</header>

<body>
	<div id="body">
		<div id="fullpage">
			<div class="section " id="section0">
				<div class="intro">
					<!-- 슬라이드 맘에 안들면 여기서부터 -->


					<div class="bxslider"  style="position: relative;">
						<div style="height: 392px;">
							<img src="./images/index/index_pic1.jpg">
							<div class="text text1">
							어디로 떠나볼까요?							
							</div>
						</div>
						<div style="height: 392px;">
							<img src="./images/index/index_pic2.jpg" style="width:1910px;">
							<div class= "text text2">
							<p>함께 여행을 떠나요</p>							
							 EveryAir가 항공권, 주차권, 리무진 예약까지 간편하게 해결해 드릴게요 							
							</div>
						</div>
						<div style="height: 392px">
							<img src="./images/index/index_pic3.png">
							<div class="text text3">
							<p>나만의 완벽한 여행을 계획하세요</p>						
							 EveryAir에서 가장 편리한 공항의 항공편, 주차권, 리무진을 검색해 보세요 					
							</div>
						</div>
						<div style="height: 392px">
							<img src="./images/index/index_pic4.png">
							<div class="text text4">
							 <p>2020 EveryAir LIKE</p>					
							 하루 한번, EveryAir와 함께 떠나는 365일 국내여행							
							</div>
						</div>
						<div style="height: 392px">
							<img src="./images/index/index_pic5.png">					
							<div class="text text5">
							새로워진 <span>EveryAir</span>에
							<p>오신 것을 환영합니다!</p>			
							</div>
						</div>
						<div style="height: 392px">
							<img src="./images/index/index_pic6.png">						
							<div class="text text6">
							<p>EveryAir 웹 체크인</p>			
							 좌석 선택부터 탑승권 발급까지 빠르고 간편하게 이용해 보세요!							
							</div>
						</div>
						
					</div>
					
					
	<!-- 예약시작 -->
	<div class="resWrap">
	
	<div class="card card-4" style="background: none">
		<div class="tab-content">
			<div class="tab-pane active" id="tab1">

				<form method="post" action="./bookingMain" id="frm">

					<div class="radio-row" style="margin-bottom: 20px;">
							<label class="radio-container m-r-45">왕복 
							<input type="radio" name="kind" value="왕복" id="round" checked="checked">
							<span class="radio-checkmark"></span>
						</label> 
							<label class="radio-container m-r-45">편도 
							<input type="radio" name="kind" value="편도" id="eachWay"> 
							<span class="radio-checkmark"></span>
						</label>
					</div>

					<div id="body">
						<div class="input-group mid small">
							<label class="label">출발지 :</label> 
							<input class="input--style-1 t1" type="text" name="depLoc" placeholder="지역 또는 공항명" required="required" id="loc">
							<!--   <input type="hidden" id="t2" readonly="readonly" name = "depLoc"> -->
						</div>

						<div class="input-group mid small">
							<label class="label">도착지 :</label> 
							<input class="input--style-1" type="text" name="arrLoc" placeholder="지역 또는 공항명" required="required" id="arrloc">
						</div>


						<div class="input-group1 mid large">
							<label class="label">탑승일 :</label> 
							<input class="input--style-12" type="text" name="date" placeholder="yyyy/mm/dd" id="input-start">
						</div>

						<div class="input-group123 mid">

							<label class="label">탑승객 :</label>
							<div class="input-group-icon" id="js-select-special">
								<input class="input--style-1 input--style-1-small" type="text" name="traveller" value="성인 1, 아이 0" disabled="disabled" id="info"> 
								<i class="zmdi zmdi-chevron-down input-icon" style="height: 100%; background-color: transparent;"></i>
							</div>


							<div class="dropdown-select">
								<ul class="list-room">
									<li class="list-room__item">
										<ul class="list-person">
											<li class="list-person__item"><span class="name">성인</span>
												<div class="quantity quantity1">
													<span class="minus" id="a_minus">-</span> 
													<input class="inputQty" type="number" min="0" value="1" name="adult" id="adult"> 
													<span class="plus">+</span>
												</div>
											</li>
											
											<li class="list-person__item"><span class="name">아이</span>
												<div class="quantity quantity2">
													<span class="minus">-</span> 
													<input class="inputQty" type="number" min="0" value="0" name="child" id="child">
													<span class="plus">+</span>
												</div>
											</li>
										</ul>
									</li>
								</ul>
								
							</div>
						</div>

						<div class="col-2">
							<button class="btn-submit" id="booking_btn" type="button">검색</button>
						</div>

					</div>
				</form>
			</div>
		</div>
	</div>
					
	<!-- 공항검색 -->
	<div id="locSearch" class="search">
		<table id="locTable" class="tab">
			<c:forEach items="${airportList}" var="airPort">
				<tr>
					<td class="loctd loctdd">${airPort}</td>
				</tr>
			</c:forEach>
		</table>
	</div>


	<div id="depLocDiv"></div>
	<!-- 공항검색끝 -->					

	</div>
	<!-- 예약 끝 -->
					
					<div style="width: 80%; margin: auto; height: 150px; position: relative; top: -205px;">
						<div class="swiper-container" style="height: max-content">
							<div class="swiper-wrapper">
								<div class="swiper-slide"
									style="background: url('./images/index/mainslider.jpg'); height: 180px; margin-right: 8px; background-size: cover;">
									</div>
								<div class="swiper-slide"
									style="background: url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_CJU.jpg'); height: 180px; margin-right: 8px;background-size: cover;">
									</div>
								<div class="swiper-slide"
									style="background: url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_FUK.jpg'); height: 180px; margin-right: 8px;background-size: cover;">
									</div>
								<div class="swiper-slide"
									style="background: url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_OKA.jpg');height: 180px; margin-right: 8px;background-size: cover;">
									</div>
							</div>
							<!-- Add Pagination -->
							<!-- <div class="swiper-pagination"></div> -->
							<!-- Add Arrows -->
							<div class="swiper-button-next" style="color: red;"></div>
							<div class="swiper-button-prev"></div>
						</div>
						<div class="txt1">최저가 간편 조회</div>
						<!-- Swiper JS -->
						<script src="../resources/newni/dist/js/swiper.min.js"></script>
					</div>
					<!-- 여기까지 꺼내고 지우면됨 -->
				</div>
			</div>
			<div class="section" id="section1"
				style="background: url(https://flyasiana.com/C/pc/image/main/bg_section02_default.jpg); background-size: 1920px">
				<div class="intro">

				<span style="float: right;">
					<a href="https://www.weather.go.kr/w/index.do"><img alt="weather" src="../images/weather.png" style="width: 180px; height: 180px; margin-top: -50px; cursor: pointer;"></a>
					<a href="https://www.weatheri.co.kr/forecast/forecast03.php?mNum=1&aircode=RKSI"><img alt="weather" src="../images/weather2.png" style="width: 60px; height: 60px; float: right; margin-right:50px; cursor: pointer;"></a>
				</span>

					<div class="weather">
							<div class="airLine_weather">
								<span class="airLine_weather_text">공항별 날씨정보</span>
							</div>
						<div class="weather_wrap">
							<div class="weather_select_wrap">
								<select name="airLine" id="weather_sel" >
									<option value="RKSI/인천공항/1">인천공항</option>
									<option value="RKSS/김포공항/2">김포공항</option>
									<option value="RKNY/양양공항/3">양양공항</option>
									<option value="RKTU/청주공항/4">청주공항</option>
									<option value="RKTN/대구공항/5">대구공항</option>
									<option value="RKJB/무안공항/6">무안공항</option>
									<option value="RKJY/여수공항/7">여수공항</option>
									<option value="RKPK/김해공항/8">김해공항</option>
									<option value="RKPU/울산공항/9">울산공항</option>
									<option value="RKPC/제주공항/10">제주공항</option>
								</select>
	<!-- 							<button id="weather_select">선택</button> -->
<!-- 								<img alt="search" src="../images/search.png" style="width: 35px; height: 35px; cursor:pointer; top:-5px; position: relative;" id="weather_select"> -->
							</div>
						</div>	
							<div id="weather_view">
								<div class="weather_view_wrap">
									<span class="weather_view_wrap_text">현재날씨</span>
								</div>
								<div class="weather_info">
									${weather}
								</div>
								<div class="weather_view_wrap2">
									<span class="weather_view_wrap_text">날씨예보</span>
								</div>
								<div class="weather_info">
									${weather2}
								</div>
							</div>
					</div>
					

				</div>
			</div>
			<div class="section" id="section2"
				style="background: url(https://flyasiana.com/C/pc/image/main/bg_section03.jpg); background-size: 1920px;">

				<div class="checkbox_text">
					<h2>체크인</h2>
					<p>원하시는 좌석의 탑승권을 미리 발급받고 공항에서 대기시간을 줄이세요.</p>
				</div>
				<!-- 체크인 -->

				<div class="search_box mar_to10">
		<form id="frm" action="./test" method="post">
			<div class="inner alC">
				<select id="numTypeSelect" style="width: 200px" title="종류별 번호">
					<option value="reservNo">예약번호</option>
				</select> <input type="text" id="bookingNum" name="bookingNum" maxlength="8" placeholder="영문/숫자 조합 6자리 또는 숫자 8자리" title="번호 입력 예시 : 영문/숫자 조합 6자리 또는 숫자 8자리"
					style="text-transform: uppercase;">

				<div class="relative_calendar">
					<div class="calendar_wrap">
						<input type="text" id="departureDate1" class="datepicker input_cal" placeholder="탑승일 선택" title="탑승일" data-dateformat="y.mm.dd D" style="width: 158px;" data-type="single_checkin"> <a class="btn_airport type2 calendar_focus" id="calendar_focus1"><span class="hidden">탑승일 선택 달력보기</span></a>
					</div>

					<div class="calendar_layer">
						<h4 class="hidden">달력</h4>
						<div class="calendar_top">
							<select title="탑승연도 및 월" class="white"></select>
						</div>
						<div class="compareCalendar"></div>
						<a href="javascript:sharpNothig();" class="cal_status02">탑승일</a> <a href="javascript:sharpNothig();" class="cal_reset"><span class="hidden">달력 새로고침</span></a> <a href="javascript:sharpNothig();" class="btn_cal_close"><span class="hidden">닫기</span></a>
					</div>
				</div>
				<button type="button" id="btn_search" class="btn_M red">조회하기</button>
			</div>
			</form>
		</div>
				
		<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">×</span>
      <h2>좌석선택</h2>
    </div>
    <div class="modal-header2">
      <h2>김포 -&gt; 제주</h2>
    </div>
    <div class="modal-body">
		<div class="modalInnerWrap">
			<div class="modalInnerLeft">
				<div class="left1">
					<div class="nameView">이름</div>
						<div class="seatView">
						<div class="depAir">
				<div class="depSeat">
					<div class="seat1">
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A1" class="bookable" title="A1"><input type="checkbox" id="A1" class="seat" title="A1"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B1" class="bookable" title="B1"><input type="checkbox" id="B1" class="seat" title="B1"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C1" class="bookable" title="C1"><input type="checkbox" id="C1" class="seat" title="C1"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A2" class="bookable" title="A2"><input type="checkbox" id="A2" class="seat" title="A2"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B2" class="bookable" title="B2"><input type="checkbox" id="B2" class="seat" title="B2"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C2" class="bookable" title="C2"><input type="checkbox" id="C2" class="seat" title="C2"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A3" class="bookable" title="A3"><input type="checkbox" id="A3" class="seat" title="A3"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B3" class="bookable" title="B3"><input type="checkbox" id="B3" class="seat" title="B3"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C3" class="bookable" title="C3"><input type="checkbox" id="C3" class="seat" title="C3"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A4" class="bookable" title="A4"><input type="checkbox" id="A4" class="seat" title="A4"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B4" class="bookable" title="B4"><input type="checkbox" id="B4" class="seat" title="B4"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C4" class="bookable" title="C4"><input type="checkbox" id="C4" class="seat" title="C4"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A5" class="bookable" title="A5"><input type="checkbox" id="A5" class="seat" title="A5"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B5" class="bookable" title="B5"><input type="checkbox" id="B5" class="seat" title="B5"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C5" class="bookable" title="C5"><input type="checkbox" id="C5" class="seat" title="C5"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A6" class="bookable" title="A6"><input type="checkbox" id="A6" class="seat" title="A6"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B6" class="bookable" title="B6"><input type="checkbox" id="B6" class="seat" title="B6"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C6" class="bookable" title="C6"><input type="checkbox" id="C6" class="seat" title="C6"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A7" class="bookable" title="A7"><input type="checkbox" id="A7" class="seat" title="A7"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B7" class="bookable" title="B7"><input type="checkbox" id="B7" class="seat" title="B7"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C7" class="bookable" title="C7"><input type="checkbox" id="C7" class="seat" title="C7"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A8" class="bookable" title="A8"><input type="checkbox" id="A8" class="seat" title="A8"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B8" class="bookable" title="B8"><input type="checkbox" id="B8" class="seat" title="B8"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C8" class="bookable" title="C8"><input type="checkbox" id="C8" class="seat" title="C8"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A9" class="bookable" title="A9"><input type="checkbox" id="A9" class="seat" title="A9"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B9" class="bookable" title="B9"><input type="checkbox" id="B9" class="seat" title="B9"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C9" class="bookable" title="C9"><input type="checkbox" id="C9" class="seat" title="C9"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A10" class="bookable" title="A10"><input type="checkbox" id="A10" class="seat" title="A10"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B10" class="bookable" title="B10"><input type="checkbox" id="B10" class="seat" title="B10"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C10" class="bookable" title="C10"><input type="checkbox" id="C10" class="seat" title="C10"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A11" class="bookable" title="A11"><input type="checkbox" id="A11" class="seat" title="A11"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B11" class="bookable" title="B11"><input type="checkbox" id="B11" class="seat" title="B11"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C11" class="bookable" title="C11"><input type="checkbox" id="C11" class="seat" title="C11"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A12" class="bookable" title="A12"><input type="checkbox" id="A12" class="seat" title="A12"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B12" class="bookable" title="B12"><input type="checkbox" id="B12" class="seat" title="B12"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C12" class="bookable" title="C12"><input type="checkbox" id="C12" class="seat" title="C12"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A13" class="bookable" title="A13"><input type="checkbox" id="A13" class="seat" title="A13"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B13" class="bookable" title="B13"><input type="checkbox" id="B13" class="seat" title="B13"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C13" class="bookable" title="C13"><input type="checkbox" id="C13" class="seat" title="C13"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A14" class="bookable" title="A14"><input type="checkbox" id="A14" class="seat" title="A14"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B14" class="bookable" title="B14"><input type="checkbox" id="B14" class="seat" title="B14"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C14" class="bookable" title="C14"><input type="checkbox" id="C14" class="seat" title="C14"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A15" class="bookable" title="A15"><input type="checkbox" id="A15" class="seat" title="A15"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B15" class="bookable" title="B15"><input type="checkbox" id="B15" class="seat" title="B15"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C15" class="bookable" title="C15"><input type="checkbox" id="C15" class="seat" title="C15"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A16" class="bookable" title="A16"><input type="checkbox" id="A16" class="seat" title="A16"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B16" class="bookable" title="B16"><input type="checkbox" id="B16" class="seat" title="B16"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C16" class="bookable" title="C16"><input type="checkbox" id="C16" class="seat" title="C16"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A17" class="bookable" title="A17"><input type="checkbox" id="A17" class="seat" title="A17"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B17" class="bookable" title="B17"><input type="checkbox" id="B17" class="seat" title="B17"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C17" class="bookable" title="C17"><input type="checkbox" id="C17" class="seat" title="C17"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A18" class="bookable" title="A18"><input type="checkbox" id="A18" class="seat" title="A18"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B18" class="bookable" title="B18"><input type="checkbox" id="B18" class="seat" title="B18"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C18" class="bookable" title="C18"><input type="checkbox" id="C18" class="seat" title="C18"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A19" class="bookable" title="A19"><input type="checkbox" id="A19" class="seat" title="A19"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B19" class="bookable" title="B19"><input type="checkbox" id="B19" class="seat" title="B19"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C19" class="bookable" title="C19"><input type="checkbox" id="C19" class="seat" title="C19"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A20" class="bookable" title="A20"><input type="checkbox" id="A20" class="seat" title="A20"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B20" class="bookable" title="B20"><input type="checkbox" id="B20" class="seat" title="B20"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C20" class="bookable" title="C20"><input type="checkbox" id="C20" class="seat" title="C20"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A21" class="bookable" title="A21"><input type="checkbox" id="A21" class="seat" title="A21"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B21" class="bookable" title="B21"><input type="checkbox" id="B21" class="seat" title="B21"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C21" class="bookable" title="C21"><input type="checkbox" id="C21" class="seat" title="C21"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A22" class="bookable" title="A22"><input type="checkbox" id="A22" class="seat" title="A22"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B22" class="bookable" title="B22"><input type="checkbox" id="B22" class="seat" title="B22"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C22" class="bookable" title="C22"><input type="checkbox" id="C22" class="seat" title="C22"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A23" class="bookable" title="A23"><input type="checkbox" id="A23" class="seat" title="A23"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B23" class="bookable" title="B23"><input type="checkbox" id="B23" class="seat" title="B23"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C23" class="bookable" title="C23"><input type="checkbox" id="C23" class="seat" title="C23"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A24" class="bookable" title="A24"><input type="checkbox" id="A24" class="seat" title="A24"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B24" class="bookable" title="B24"><input type="checkbox" id="B24" class="seat" title="B24"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C24" class="bookable" title="C24"><input type="checkbox" id="C24" class="seat" title="C24"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A25" class="bookable" title="A25"><input type="checkbox" id="A25" class="seat" title="A25"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B25" class="bookable" title="B25"><input type="checkbox" id="B25" class="seat" title="B25"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C25" class="bookable" title="C25"><input type="checkbox" id="C25" class="seat" title="C25"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A26" class="bookable" title="A26"><input type="checkbox" id="A26" class="seat" title="A26"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B26" class="bookable" title="B26"><input type="checkbox" id="B26" class="seat" title="B26"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C26" class="bookable" title="C26"><input type="checkbox" id="C26" class="seat" title="C26"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A27" class="bookable" title="A27"><input type="checkbox" id="A27" class="seat" title="A27"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B27" class="bookable" title="B27"><input type="checkbox" id="B27" class="seat" title="B27"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C27" class="bookable" title="C27"><input type="checkbox" id="C27" class="seat" title="C27"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A28" class="bookable" title="A28"><input type="checkbox" id="A28" class="seat" title="A28"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B28" class="bookable" title="B28"><input type="checkbox" id="B28" class="seat" title="B28"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C28" class="bookable" title="C28"><input type="checkbox" id="C28" class="seat" title="C28"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A29" class="bookable" title="A29"><input type="checkbox" id="A29" class="seat" title="A29"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B29" class="bookable" title="B29"><input type="checkbox" id="B29" class="seat" title="B29"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C29" class="bookable" title="C29"><input type="checkbox" id="C29" class="seat" title="C29"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A30" class="bookable" title="A30"><input type="checkbox" id="A30" class="seat" title="A30"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B30" class="bookable" title="B30"><input type="checkbox" id="B30" class="seat" title="B30"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C30" class="bookable" title="C30"><input type="checkbox" id="C30" class="seat" title="C30"></label>
						  
						  <br>
						
						 
						
						 		
						 			
						 		
						 		
						 		
						 	
							<label for="A31" class="bookable" title="A31"><input type="checkbox" id="A31" class="seat" title="A31"></label>
						  
						
						 		
						 		
						 			
						 		
						 		
						 	
							<label for="B31" class="bookable" title="B31"><input type="checkbox" id="B31" class="seat" title="B31"></label>
						  
						
						 		
						 		
						 		
						 			
						 		
						 	
							<label for="C31" class="bookable" title="C31"><input type="checkbox" id="C31" class="seat" title="C31"></label>
						  
						  <br>
						
						</div>
						<div class="seat2">
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D1" class="bookable" title="D1"><input type="checkbox" id="D1" class="seat" title="D1"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E1" class="bookable" title="E1"><input type="checkbox" id="E1" class="seat" title="E1"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F1" class="bookable" title="F1"><input type="checkbox" id="F1" class="seat" title="F1"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D2" class="bookable" title="D2"><input type="checkbox" id="D2" class="seat" title="D2"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E2" class="bookable" title="E2"><input type="checkbox" id="E2" class="seat" title="E2"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F2" class="bookable" title="F2"><input type="checkbox" id="F2" class="seat" title="F2"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D3" class="bookable" title="D3"><input type="checkbox" id="D3" class="seat" title="D3"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E3" class="bookable" title="E3"><input type="checkbox" id="E3" class="seat" title="E3"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F3" class="bookable" title="F3"><input type="checkbox" id="F3" class="seat" title="F3"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D4" class="bookable" title="D4"><input type="checkbox" id="D4" class="seat" title="D4"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E4" class="bookable" title="E4"><input type="checkbox" id="E4" class="seat" title="E4"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F4" class="bookable" title="F4"><input type="checkbox" id="F4" class="seat" title="F4"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D5" class="bookable" title="D5"><input type="checkbox" id="D5" class="seat" title="D5"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E5" class="bookable" title="E5"><input type="checkbox" id="E5" class="seat" title="E5"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F5" class="bookable" title="F5"><input type="checkbox" id="F5" class="seat" title="F5"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D6" class="bookable" title="D6"><input type="checkbox" id="D6" class="seat" title="D6"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E6" class="bookable" title="E6"><input type="checkbox" id="E6" class="seat" title="E6"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F6" class="bookable" title="F6"><input type="checkbox" id="F6" class="seat" title="F6"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D7" class="bookable" title="D7"><input type="checkbox" id="D7" class="seat" title="D7"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E7" class="bookable" title="E7"><input type="checkbox" id="E7" class="seat" title="E7"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F7" class="bookable" title="F7"><input type="checkbox" id="F7" class="seat" title="F7"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D8" class="bookable" title="D8"><input type="checkbox" id="D8" class="seat" title="D8"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E8" class="bookable" title="E8"><input type="checkbox" id="E8" class="seat" title="E8"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F8" class="bookable" title="F8"><input type="checkbox" id="F8" class="seat" title="F8"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D9" class="bookable" title="D9"><input type="checkbox" id="D9" class="seat" title="D9"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E9" class="bookable" title="E9"><input type="checkbox" id="E9" class="seat" title="E9"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F9" class="bookable" title="F9"><input type="checkbox" id="F9" class="seat" title="F9"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D10" class="bookable" title="D10"><input type="checkbox" id="D10" class="seat" title="D10"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E10" class="bookable" title="E10"><input type="checkbox" id="E10" class="seat" title="E10"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F10" class="bookable" title="F10"><input type="checkbox" id="F10" class="seat" title="F10"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D11" class="bookable" title="D11"><input type="checkbox" id="D11" class="seat" title="D11"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E11" class="bookable" title="E11"><input type="checkbox" id="E11" class="seat" title="E11"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F11" class="bookable" title="F11"><input type="checkbox" id="F11" class="seat" title="F11"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D12" class="bookable" title="D12"><input type="checkbox" id="D12" class="seat" title="D12"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E12" class="bookable" title="E12"><input type="checkbox" id="E12" class="seat" title="E12"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F12" class="bookable" title="F12"><input type="checkbox" id="F12" class="seat" title="F12"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D13" class="bookable" title="D13"><input type="checkbox" id="D13" class="seat" title="D13"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E13" class="bookable" title="E13"><input type="checkbox" id="E13" class="seat" title="E13"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F13" class="bookable" title="F13"><input type="checkbox" id="F13" class="seat" title="F13"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D14" class="bookable" title="D14"><input type="checkbox" id="D14" class="seat" title="D14"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E14" class="bookable" title="E14"><input type="checkbox" id="E14" class="seat" title="E14"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F14" class="bookable" title="F14"><input type="checkbox" id="F14" class="seat" title="F14"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D15" class="bookable" title="D15"><input type="checkbox" id="D15" class="seat" title="D15"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E15" class="bookable" title="E15"><input type="checkbox" id="E15" class="seat" title="E15"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F15" class="bookable" title="F15"><input type="checkbox" id="F15" class="seat" title="F15"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D16" class="bookable" title="D16"><input type="checkbox" id="D16" class="seat" title="D16"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E16" class="bookable" title="E16"><input type="checkbox" id="E16" class="seat" title="E16"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F16" class="bookable" title="F16"><input type="checkbox" id="F16" class="seat" title="F16"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D17" class="bookable" title="D17"><input type="checkbox" id="D17" class="seat" title="D17"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E17" class="bookable" title="E17"><input type="checkbox" id="E17" class="seat" title="E17"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F17" class="bookable" title="F17"><input type="checkbox" id="F17" class="seat" title="F17"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D18" class="bookable" title="D18"><input type="checkbox" id="D18" class="seat" title="D18"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E18" class="bookable" title="E18"><input type="checkbox" id="E18" class="seat" title="E18"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F18" class="bookable" title="F18"><input type="checkbox" id="F18" class="seat" title="F18"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D19" class="bookable" title="D19"><input type="checkbox" id="D19" class="seat" title="D19"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E19" class="bookable" title="E19"><input type="checkbox" id="E19" class="seat" title="E19"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F19" class="bookable" title="F19"><input type="checkbox" id="F19" class="seat" title="F19"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D20" class="bookable" title="D20"><input type="checkbox" id="D20" class="seat" title="D20"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E20" class="bookable" title="E20"><input type="checkbox" id="E20" class="seat" title="E20"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F20" class="bookable" title="F20"><input type="checkbox" id="F20" class="seat" title="F20"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D21" class="bookable" title="D21"><input type="checkbox" id="D21" class="seat" title="D21"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E21" class="bookable" title="E21"><input type="checkbox" id="E21" class="seat" title="E21"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F21" class="bookable" title="F21"><input type="checkbox" id="F21" class="seat" title="F21"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D22" class="bookable" title="D22"><input type="checkbox" id="D22" class="seat" title="D22"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E22" class="bookable" title="E22"><input type="checkbox" id="E22" class="seat" title="E22"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F22" class="bookable" title="F22"><input type="checkbox" id="F22" class="seat" title="F22"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D23" class="bookable" title="D23"><input type="checkbox" id="D23" class="seat" title="D23"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E23" class="bookable" title="E23"><input type="checkbox" id="E23" class="seat" title="E23"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F23" class="bookable" title="F23"><input type="checkbox" id="F23" class="seat" title="F23"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D24" class="bookable" title="D24"><input type="checkbox" id="D24" class="seat" title="D24"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E24" class="bookable" title="E24"><input type="checkbox" id="E24" class="seat" title="E24"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F24" class="bookable" title="F24"><input type="checkbox" id="F24" class="seat" title="F24"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D25" class="bookable" title="D25"><input type="checkbox" id="D25" class="seat" title="D25"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E25" class="bookable" title="E25"><input type="checkbox" id="E25" class="seat" title="E25"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F25" class="bookable" title="F25"><input type="checkbox" id="F25" class="seat" title="F25"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D26" class="bookable" title="D26"><input type="checkbox" id="D26" class="seat" title="D26"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E26" class="bookable" title="E26"><input type="checkbox" id="E26" class="seat" title="E26"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F26" class="bookable" title="F26"><input type="checkbox" id="F26" class="seat" title="F26"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D27" class="bookable" title="D27"><input type="checkbox" id="D27" class="seat" title="D27"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E27" class="bookable" title="E27"><input type="checkbox" id="E27" class="seat" title="E27"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F27" class="bookable" title="F27"><input type="checkbox" id="F27" class="seat" title="F27"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D28" class="bookable" title="D28"><input type="checkbox" id="D28" class="seat" title="D28"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E28" class="bookable" title="E28"><input type="checkbox" id="E28" class="seat" title="E28"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F28" class="bookable" title="F28"><input type="checkbox" id="F28" class="seat" title="F28"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D29" class="bookable" title="D29"><input type="checkbox" id="D29" class="seat" title="D29"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E29" class="bookable" title="E29"><input type="checkbox" id="E29" class="seat" title="E29"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F29" class="bookable" title="F29"><input type="checkbox" id="F29" class="seat" title="F29"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D30" class="bookable" title="D30"><input type="checkbox" id="D30" class="seat" title="D30"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E30" class="bookable" title="E30"><input type="checkbox" id="E30" class="seat" title="E30"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F30" class="bookable" title="F30"><input type="checkbox" id="F30" class="seat" title="F30"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D31" class="bookable" title="D31"><input type="checkbox" id="D31" class="seat" title="D31"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E31" class="bookable" title="E31"><input type="checkbox" id="E31" class="seat" title="E31"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F31" class="bookable" title="F31"><input type="checkbox" id="F31" class="seat" title="F31"></label>
						  
						  <br>
						
						 
						 
						 		
						 			
						 		
						 		
						 		
						 	
							 <label for="D32" class="bookable" title="D32"><input type="checkbox" id="D32" class="seat" title="D32"></label>
						  
						 
						 		
						 		
						 			
						 		
						 		
						 	
							 <label for="E32" class="bookable" title="E32"><input type="checkbox" id="E32" class="seat" title="E32"></label>
						  
						 
						 		
						 		
						 		
						 			
						 		
						 	
							 <label for="F32" class="bookable" title="F32"><input type="checkbox" id="F32" class="seat" title="F32"></label>
						  
						  <br>
						
					</div>
				 </div>
				</div>
						</div>
						<div class="seatWarning"> 좌석지정 유의사항 안내</div>
					</div>
			</div>
			<div class="modalInnerRight">
				<div class="modalInnerRightTop">
					<div class="seatInfo">
						<div class="seatInfo_bookSeat"><img alt="" src="../resources/newni/bookableSeat.png"> 선택가능 좌석 </div>
						<div class="seatInfo_bookingSeat"><img alt="" src="../resources/newni/bookingSeat.png"> 선택한 좌석 </div>
						<div class="seatInfo_bookedSeat"><img alt="" src="../resources/newni/bookedSeat.png"> 선택불가 좌석 </div>
						<div>이부분 전체 수정</div>
					</div>
				</div>
				<div class="modalInnerRightDown">
					<table>
						<tbody><tr>
							<td>예매번호</td>
							<td><input type="text" id="bookingNum" name="bookingNum" readonly="readonly"></td>	
						</tr>  
						<tr>
							<td>인원 수</td>
							<td><input type="text" id="people" name="people" readonly="readonly" style="width:10px">명</td>
						</tr> 
						<tr>
							<td>가는편 좌석</td>
							<td><input type="text" id="depSeat" name="depSeat" readonly="readonly"></td>
						</tr>
						
					</tbody></table>
				</div>
			</div>
			<div class="ajax" style="display: none;">
				
			</div>
			<div class="modalInnerBottom">
			 	오는편 좌석 선택
			</div>
		</div>
    </div>
    <div class="modal-footer">
      <h3>KRW</h3>
    </div>
  </div>

</div>
				
					
			</div>
			<div class="section" id="section3"
				style="background: url(https://flyasiana.com/C/pc/image/main/bg_section05.jpg); background-size: 1920px;">

				<!-- 출도착조회 -->
				<div class="slide_inner">

					<div class="section_copy checkbox_text">
						<h2>출도착 조회</h2>
						<p class="desc">취항지 출도착 스케줄을 상세하게 확인하실 수 있습니다.</p>
					</div>

					<!-- 출도착 조회 -->
					
						<div class="inquiry_wrapper" id="inquiryDeparture" style="margin-top: 50px;">
							<div class="white_step_box">
								
								<div class="quick_step_wrap">
									<div class="input_wrap" name="itineraryF" id="inquiry_wrap">
														
										<div class="ipt_elt loct spot_proven">
											<input type="hidden" id="departureAreaF" name="departureAreaF" value="">
											<input type="hidden" id="departureAirportF" name="departureAirportF" value="">
											<input type="hidden" id="departureCityF" name="departureCityF" value="">
											<input type="hidden" id="departureCityNameF" name="departureCityNameF" value="">
										<label for="txtDepartureAirportF" class="spot_place" id="labelDepartureAirportF" name="spot_place" style="opacity: 1;">
											<i class="material-icons place">place</i> </label>
											<input type="text" id="txtDepartureAirportF" name="txtDepartureAirportF" class="spotentry ui-autocomplete-input" deparrtype="dep" placeholder="출발지" style="width:215px;" autocomplete="off">
											<input type="hidden" name="default" area="" airport="">	
											<a href="javascript:sharpNothig();" class="btn_airport airport_open" id="btn_depAllAirport1" name="btn_layer1" seg="dep1" deparrtype="dep" onclick="javascript:showAirportLayer(this, 'F');"><span class="hidden">전체도시보기</span></a>
										</div>
										<div class="shadow_layer search_flight" name="shadow_layer" style="display: none;">
											<div class="inner">
												<div class="search_layer">
													<div class="search_lately" name="search_lately">
														<p class="title">최근 검색</p>
														
													<div class="empty_box" name="empty_box">최근 검색한 노선이 없습니다.</div></div>
													<div class="route_list search_auto" id="divDepAirportACF" name="search_auto" target="txtDepartureAirportF" style="display: none;">
														<p class="title">자동 완성</p>
														<div class="empty_box" name="empty_box">매칭되는 공항이 없습니다.</div>
													<ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content" id="ui-id-1" tabindex="0" style="display: none;"></ul></div>
												</div>
												<input type="hidden" name="default" area="" airport="">
												<button type="button" class="btn_popup airport_open" id="btn_depAllAirport1" name="btn_layer1" seg="dep1" deparrtype="dep" onclick="javascript:showAirportLayer(this, 'F');">전체도시보기</button>
											</div>
											<a href="javascript:sharpNothig();" class="layer_close"><span class="hidden">닫기</span></a>
										</div>		
										
										<div class="ipt_elt loct spot_destin">
											<input type="hidden" id="arrivalAreaF" name="arrivalAreaF" value="">
											<input type="hidden" id="arrivalAirportF" name="arrivalAirportF" value="">
											<input type="hidden" id="arrivalCityF" name="arrivalCityF" value="">
											<input type="hidden" id="arrivalCityNameF" name="arrivalCityNameF" value="">
											<label for="txtArrivalAirportF" class="spot_place" id="labelArrivalAirportF" name="spot_place" style="opacity: 1;"><i class="material-icons place">place</i></label>
											<input type="text" id="txtArrivalAirportF" placeholder="도착지" name="txtArrivalAirportF" class="spotentry" deparrtype="arr" style="width:215px;">
											<input type="hidden" name="default" area="" airport="">
											<a href="javascript:sharpNothig();" class="btn_airport airport_open" id="btn_arrAllAirport1" name="btn_layer1" seg="arr1" deparrtype="arr" onclick="javascript:showAirportLayer(this, 'F');"><span class="hidden">전체도시보기</span></a>
										</div>
										<div class="shadow_layer search_flight to" style="display: none;">
											<div class="inner">
												<div class="search_layer">
													<div class="search_lately" name="search_lately">
														<p class="title">최근 검색</p>
														
													</div>
													<div class="route_list search_auto" id="divArrAirportACF" name="search_auto" target="txtArrivalAirportF" style="display: none;">
														<p class="title">자동 완성</p>
														<div class="empty_box" name="empty_box">매칭되는 공항이 없습니다.</div>
													</div>
												</div>
												<input type="hidden" name="default" area="" airport="">
												<button type="button" class="btn_popup airport_open" id="btn_arrAllAirport1" name="btn_layer1" seg="arr1" deparrtype="arr" onclick="javascript:showAirportLayer(this, 'F');">전체도시보기</button>
											</div>
											<a href="javascript:sharpNothig();" class="layer_close"><span class="hidden">닫기</span></a>
										</div>			
										
										<div class="shadow_layer case2 select_airport" id="depAllAirportF" name="allAirportF" style="display: none;">
											<div class="inner">
												<h4 class="hidden">공항 선택</h4>
												<h5 class="hidden">국제선</h5>
												<div class="flights_list national">
								
												</div>
												<div class="recent_search_wrap">
													<h4>최근 검색</h4>
													<div class="recent_srch_box" name="recent_srch_box"><ul><li class="return" val="KR,서울 / 김포,GMP,SEL,서울-KR,광주,KWJ,KWJ,광주,undefined-202002130000,undefined,undefined,undefined,undefined" data-itinerary="GMP-KWJ"><a href="#none"><span>서울 / 김포<var>GMP</var></span><span>광주<var>KWJ</var></span></a><button type="button" class="btn_detlete" name="btn_delete" onclick="javascript:deleteSearchLatelyData(this, 'searchLatelyDatasArrDep_KRKO', 'GMP-KWJ', 'dep');"><span class="hidden">삭제</span></button></li></ul></div>
													<div class="btn_area">
														<button type="button" class="btn_M gray" onclick="javascript:clickNextStep('allAirportF', 'F');">다음</button>
													</div>
												</div>
											</div>
											<a href="javascript:sharpNothig();" class="layer_close">
												<span class="hidden">닫기</span>
											</a>
										</div>
										
										<div class="ipt_elt flt_date">
											<select title="출발일" style="width:215px" class="select_date" id="searchDate">
												<option value="20200213">2020.02.13</option>
												<option value="20200212" selected="selected">2020.02.12</option>
												<option value="20200211">2020.02.11</option>
												<option value="20200210">2020.02.10</option>
											</select>
										</div>
													
						
										<button type="button" id="searchDepArr" class="btn_M red btn_revsearch">출도착 조회</button>
									</div>
									<p class="exam_txt" style="overflow: hidden;">
										<span class="text_type1 ext3">ㆍ출발지 기준일</span>
									</p>									
								</div>
								
							</div>
						</div>
						<a href="javascript:sharpNothig();" class="btn_fold open2" id="foldSection4" style="display: inline-block;"><span class="hidden">조회영역 펼치기</span></a>
						
						<div id="searchDepArrResult" class="departure_list_wrap" style="display: none;">
							
						</div>
											<!-- 출도착 조회 -->
						</div>
				

			</div>
			
			<%-- <div class="section" id="section4" style="height: 500px;">
<div class="footer" style="width: 100%; height: 300px; background-color: black;">테스트</div>

<c:import url="../template/fffooter.jsp" />

			</div>
		</div>
		<div class="footer" style="width: 100%; height: 300px; background-color: black;">테스트</div> --%>
	</div> 

</div>
	<!-- 전반적인 CSS -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="../resources/newni/dist/fullpage.js"></script>


	<!-- 예약 -->
	<!-- Jquery JS-->
	<!-- .../resources/vendor JS-->
	<script src="../resources/vendor/select2/select2.min.js"></script>
	<script src="../resources/vendor/jquery-validate/jquery.validate.min.js"></script>
	<script src="../resources/vendor/bootstrap-wizard/bootstrap.min.js"></script>
	<script src="../resources/vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
	<script src="../resources/vendor/datepicker/moment.min.js"></script>
	<script src="../resources/vendor/datepicker/daterangepicker.js"></script>
	<!-- Main JS-->
	<script src="../resources/vendor/js/global.js"></script>

	<script>
		$(".menu1").hover(function() {
			$(".sub1").slideDown(500);

		});

		/* $(".menu1").hover(function(){
		 $(".sub1").slideDown(300);
		 $(".sub1").css("display", "block"); 
		 });
		 $(".menu1").mouseleave(function(){
		 $(".sub1").slideUp(500);
		 $(".sub1").css("display", "none"); 
		
		 }); */
		 
		$(".sub1").hover(function() {
			$(".sub1").css("display", "block");
		});

			
		var myFullpage = new fullpage('#fullpage', {
			//fixedElements: '#header',
			navigation:true,
			showActiveTooltip: true,
			anchors : [ 'firstPage', 'secondPage', '3rdPage', '4rdPage' ], 
			sectionsColor : [ '#FFFFFF', '#1BBC9B', '#7E8F7C' ],
			responsiveHeight : 600,
			afterResponsive : function(isResponsive) {
			}
		});


/* 		var myFullpage = new fullpage('#fullpage', {
			anchors : [ '1stPage', '2ndPage', '3rdPage', '4rdPage' ], 
			navigation:true,
			navigationTooltips: ['Page 1', 'Page 2', 'Page 3', 'Page 4'],
			showActiveTooltip: true,
			menu: '#menu',
			scrollBar: true,
			autoScrolling: true,
			slidesNavigation: true,
			responsiveHeight: 800,
			scrollingSpeed: 700,
			controlArrows: false,
			sectionsColor : [ '#FFFFFF', '#1BBC9B', '#7E8F7C' ],
			afterResponsive : function(isResponsive) {
			}
		}); */
		

		var appendNumber = 4;
		var swiper = new Swiper('.swiper-container', {
			pagination : '.swiper-pagination',
			nextButton : '.swiper-button-next',
			prevButton : '.swiper-button-prev',
			slidesPerView : 5,
			centeredSlides : true,
		      pagination: {
			        el: '.swiper-pagination',
			        clickable: true,
			      },
			spaceBetween : 8,
			loop : true,
		      freeMode: true,
		});

		$('.bxslider').bxSlider({
			auto : true,
			autoControls : true,
			stopAutoOnClick : true,
			pager : true,
			mode : 'fade',
			slideWidth : 1920,
			slideHeight : 500
		});


		

/* 예약 */
/*** dateRangePicker ***/
 $('#input-start').daterangepicker({
	singleDatePicker:false,
	autoApply: true,
	/*  minDate: new Date() */
	});
$('input:radio[name=kind]').click(function(){
	if($('input:radio[id=eachWay]').is(":checked")){
			 $('#input-start').daterangepicker({
				singleDatePicker:true,
				/* minDate: new Date() */	
				}); 
		}else{
			$('#input-start').daterangepicker({
				singleDatePicker:false,	
				autoApply: true,
				/* minDate: new Date() */
				}); 	
		}
});
/*** dateRangePicker 끝  ***/

/**** 공항검색 ****/
 	 var a = false;
//-------------------- 검색어 필터 -----------------------------		
	$("#loc").on("keyup", function(){
		var value = $(this).val().toLowerCase();
		a = false;
	if(value ==""){
		$("#locSearch").css("display", "none");
		}else{
			$("#locSearch").css("display", "block");
			$("#locTable tr").filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);		
				if($(this).text().toLowerCase().indexOf(value) > -1){
					a=true;
					}
				});
			}	
		});
	//--------------------- 검색어 필터 -----------------------------	
 	$("#locSearch").css("display","none");
	 var loc= ""; 
	//--------------------- click -----------------------------		
  $('.loctd').on("click", function(){
		if($('#loc').val(loc) != ""){
				$('#loc').val("");
				a = false;
		} 
		 loc = $(this).text();
		$('#loc').val(loc);
		$("#locSearch").css("display","none"); 
		}); 
//--------------------- blur -----------------------------		
 	$('#loc').on("blur",function(){
 	 			var v = $(".tab").text().trim();
 	 			 console.log("a : "+ a); 
		
			var value = $('#loc').val();
				var check=false;
			 	if(a){	
				$(".loctd").each(function(){
						if($(this).html()==value){
							 $("#locSearch").css("display","none"); 
							check=true; 
							}
					}); 
				}else {
				 	var t = $('#loc').val();
					 <c:forEach items="${airportList}" var="airPort">	
						if('${airPort}' == t){
						} else {	
							    $('#loc').val("");  
								$("#locSearch").css("display","none"); 
								a=false;     
								}
					 </c:forEach>
				}
		}); 
/**** 공항검색 끝 ****/

 /***** 공항유효성검사 *****/
	  $('body').on("click",'#booking_btn',function(){
			var loc = $('#loc').val().trim();
			var arrloc = $('#arrloc').val().trim();

			var child = $('#child').val();
			var adult = $('#adult').val();

			  $.ajax({
				url : "airportCheck",
				data :{
						depLoc:loc,
						arrLoc:arrloc
					},
				type : "GET",
				success : function(data){
					if(data == true){
						
						if(child <= adult){
							if(adult < 6){
								$('#frm').submit();	
								}else{
									alert("예약인원은 성인5명 아이5명까지 가능합니다.")									
									}							
							}else{												
								alert("성인 한 사람당 아이 1명만 허용됩니다.")
							}
						
						}else{
							alert("출발지나 도착지를 올바르게 입력하세요.");
							}
					},error:function(){
							alert("fail");
						}
		  });
	  });
 /***** 공항유효성검사  끝*****/
 
 $('#loc').keydown(function(){
		 $("#arrloc").val("");	
	 });
/****** 도착지  *******/
$('#arrloc').focus(function(){
	var depLoc = $("#loc").val(); 
	var query = {depLoc : $("#loc").val()};
			
			$.ajax({
					url : "airportDepList",
					data : query,
					type : "POST",
					success : function(data){
						$("#depLocDiv").html(data);
						},error:function(){
							console.log("fail");
							}	
				});	 			
});



/* 예약 끝 */


/* 검색 */
$('body').on('blur', '.search__input', function(){
		$('#frm2').submit();
 });


 /* 날씨입니다 지우지 마세여 ^8^*/

 
$("#weather_sel").click(function(){ 
			var weather = $("#weather_sel").val();
			$.ajax({
				type:'get',
				url:"weather/weatherInfo",
				async: false,
				data:{
					"airLine":weather
				},
				success: function(data){
					data = data.trim();
					$("#weather_view").html(data);
				}
			});
			$("#weather_view tr").css("background-color", "transparent");
			$("#weather_view td").css("background-color", "transparent");
			$("#weather_view td").css("border-style", "hidden");
			$("#weather_view td").css("font-weight","bold");
			$("#weather_view td").css("vertical-align","middle");
		});
		$("#weather_view td").css("font-weight","bold");
		$("#weather_view td").css("vertical-align","middle");
		$("#weather_view tr").css("background-color", "transparent");
		$("#weather_view td").css("background-color", "transparent");
		$("#weather_view td").css("border-style", "hidden");



		
	</script>
</body>
</html>