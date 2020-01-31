<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<c:import url="./template/boot.jsp"></c:import>
<link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/index/main.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="../resources/newni/dist/css/swiper.min.css">
<link rel="stylesheet" href="../resources/newni/dist/fullpage.css">




</head>

<header id="header">
	<c:import url="./layout/header.jsp" />
</header>

<body>
	<div id="body">
		<div id="fullpage">
			<div class="section " id="section0">
				<div class="intro">
					<!-- 슬라이드 맘에 안들면 여기서부터 -->


					<div class="bxslider">
						<div style="height: 392px">
							<img
								src="https://ozimg.flyasiana.com/temp/image/20191217/f736571b-f061-4c13-9933-4366cbe91d7f.jpeg">
						</div>
						<div style="height: 392px">
							<img
								src="https://ozimg.flyasiana.com/temp/image/20200110/fc4ca760-22f9-4b86-9582-4ae4d9d79854.jpeg">
						</div>
						<div style="height: 392px">
							<img
								src="https://ozimg.flyasiana.com/temp/image/20191014/a84a6853-a8f4-4465-966a-0088daf7dd91.jpeg">
						</div>
						<div style="height: 392px">
							<img
								src="https://ozimg.flyasiana.com/temp/image/20200103/d7d93511-23fd-4522-9c15-e7a05b8074d9.jpeg">
						</div>
						<div style="height: 392px">
							<img
								src="https://ozimg.flyasiana.com/temp/image/20200107/820d1923-5e81-4cb3-acf1-4b136d914834.jpeg">
						</div>
						<div style="height: 392px">
							<img
								src="https://ozimg.flyasiana.com/temp/image/20191206/eab6f90a-6051-4c1a-a854-37cdd0f6722f.jpeg">
						</div>
					</div>
					<div style="width: 80%; margin: auto">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide"
									style="background: url('https://ozimg.flyasiana.com/main_banner/20200115_mini.jpg')">Slide
									1</div>
								<div class="swiper-slide"
									style="background: url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_CJU.jpg')">Slide
									2</div>
								<div class="swiper-slide"
									style="background: url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_FUK.jpg')">Slide
									3</div>
								<div class="swiper-slide"
									style="background: url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_OKA.jpg')">Slide
									4</div>
							</div>
							<!-- Add Pagination -->
							<div class="swiper-pagination"></div>
							<!-- Add Arrows -->
							<div class="swiper-button-next"></div>
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
				<a href="https://www.weather.go.kr/w/index.do"><img alt="weather" src="../images/weather.png" style="width: 180px; height: 180px; float: right; margin-left: -30px; margin-top: -60px; cursor: pointer;"></a>
				<a href="https://www.weatheri.co.kr/forecast/forecast03.php?mNum=1&aircode=RKSI"><img alt="weather" src="../images/weather2.png" style="width: 60px; height: 60px; float: right; cursor: pointer;"></a>
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
								<img alt="search" src="../images/search.png" style="width: 35px; height: 35px; cursor: pointer; top: 10px; position: relative;" id="weather_select">
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

			</div>
			<div class="section" id="section3"
				style="background: url(https://flyasiana.com/C/pc/image/main/bg_section05.jpg); background-size: 1920px;">

			</div>
		</div>
		<div class="footer">테스트</div>
	</div>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript"
		src="../resources/newni/dist/fullpage.js"></script>

	<script>
		$(document).ready(function() {
			$('.slider').bxSlider();
		});

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
			anchors : [ 'firstPage', 'secondPage', '3rdPage', '4rdPage' ],
			sectionsColor : [ '#FFFFFF', '#1BBC9B', '#7E8F7C' ],
			// normalScrollElements: '#section3',
			responsiveHeight : 600,
			afterResponsive : function(isResponsive) {
			}
		});

		var appendNumber = 4;
		var swiper = new Swiper('.swiper-container', {
			pagination : '.swiper-pagination',
			nextButton : '.swiper-button-next',
			prevButton : '.swiper-button-prev',
			slidesPerView : 5,
			centeredSlides : true,
			paginationClickable : true,
			spaceBetween : 30,
			loop : true
		});

		$('.bxslider').bxSlider({
			auto : true,
			autoControls : true,
			stopAutoOnClick : true,
			pager : true,
			mode : 'fade',
			slideWidth : 1920,
			slideHeight : 392
		});
		
/* 			$.ajax({
				type:'get',
				dataTye:'html',
				url:"./weather/weatherInfo",
				success:function(data){
					$('.weather').html(data);
				}
			}); */

		$("#weather_select").click(function(){
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