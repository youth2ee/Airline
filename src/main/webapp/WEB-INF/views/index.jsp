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
	color: white;
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
  <strong>우한폐렴</strong>대충 주의하라는 글
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


					<div class="bxslider">
						<div style="height: 392px;">
							<img src="./images/index/index_pic1.jpg">
						</div>
						<div style="height: 392px;">
							<img src="./images/index/index_pic2.jpg" style="width:1910px;">
						</div>
						<div style="height: 392px">
							<img src="./images/index/index_pic3.png" style="width:1910px;">
						</div>
						<div style="height: 392px">
							<img src="./images/index/index_pic4.png" style="width:1910px;">
						</div>
						<div style="height: 392px">
							<img src="./images/index/index_pic5.png" style="width:1910px;">
						</div>
						<div style="height: 392px">
							<img src="./images/index/index_pic6.png" style="width:1910px;">
						</div>
					</div>
					
					
	<!-- 예약시작 -->
	<div class="resWrap">
	
	<div class="card card-4" style="background: none">
		<div class="tab-content">
			<div class="tab-pane active" id="tab1">

				<form method="post" action="./bookingMain" id="frm2">

					<div class="radio-row" style="margin-bottom: 20px; padding-left: 49px;">
							<label class="radio-container m-r-45">왕복 
							<input type="radio" name="kind" value="왕복" id="round" checked="checked">
							<span class="radio-checkmark"></span>
						</label> 
							<label class="radio-container m-r-45">편도 
							<input type="radio" name="kind" value="편도" id="eachWay"> 
							<span class="radio-checkmark"></span>
						</label>
					</div>

					<div id="body" style="margin-left: 46px;">
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
									style="background: url('https://ozimg.flyasiana.com/main_banner/20200115_mini.jpg'); height: 180px; margin-right: 8px;">Slide
									1</div>
								<div class="swiper-slide"
									style="background: url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_CJU.jpg'); height: 180px; margin-right: 8px;">Slide
									2</div>
								<div class="swiper-slide"
									style="background: url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_FUK.jpg'); height: 180px; margin-right: 8px;">Slide
									3</div>
								<div class="swiper-slide"
									style="background: url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_OKA.jpg'); height: 180px; margin-right: 8px;">Slide
									4</div>
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
				<a href="https://www.weather.go.kr/w/index.do"><img alt="weather" src="../images/weather.png" style="width: 180px; height: 180px; margin-left: 1630px; margin-top: -60px; cursor: pointer;"></a>
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
			/* fixedElements: 'firstPage', */
			navigation:true,
			navigationTooltips: ['Page 1', 'Page 2', 'Page 3', 'Page 4'],
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
			paginationClickable : true,
			spaceBetween : 8,
			loop : true
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
								$('#frm2').submit();	
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
$('body').on('click', '#sbtn', function(){
	$('.tooltiptext1').css("display", "inline-block");
});


$('body').on('click', '#ssbtn', function(){
	$('#frm').submit();
});


		
	</script>
</body>
</html>