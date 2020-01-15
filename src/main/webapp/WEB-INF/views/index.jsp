<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link href="../resources/css/header.css" rel="stylesheet">
<c:import url="./template/boot.jsp"></c:import>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
   <link rel="stylesheet" href="../resources/newni/dist/css/swiper.min.css"> 
   <link rel="stylesheet" href="../resources/newni/dist/fullpage.css"> 
<script>
    $(document).ready(function(){
      $('.slider').bxSlider();
    });
  </script>
<style type="text/css">
.bx-wrapper .bx-pager.bx-default-pager a{
    background: #f96262;
}
.bx-wrapper .bx-pager.bx-default-pager a:hover, .bx-wrapper .bx-pager.bx-default-pager a.active, .bx-wrapper .bx-pager.bx-default-pager a:focus {
    background: #fff;
}
.swiper-container {
    width: 100%;
    height: 180px;
    margin: 20px auto;
}
.bx-wrapper {
	border: none;
	height: 392px;
}

.bx-wrapper .bx-controls.bx-has-controls-auto.bx-has-pager .bx-pager {
	position: absolute;
	margin-left: 890px;
	margin-bottom: 40px;
}

.swiper-container {
	width: 100%;
	height: 300px;
	margin: 20px auto;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}
.swiper-slider{
	width: 280px;
	height : 180px;
}
.txt1 {
	float: right;
}
</style>
</head>
<body>

<div id="fullpage">
	<div class="section " id="section0">
		<div class="intro">
			<!-- 슬라이드 맘에 안들면 여기서부터 -->
				<div class="header_wrap">
		<div class="header_top_inner">
			<div class="header_top_menu">
				<div class="menu_topwrap">
					<ul>
						<li>마일리지 적립몰</li>
						<li class="li1">기내 면세점</li>
						<li class="li1">기업우대</li>
					</ul>
				</div>
				
				<div class="menu_topwrap2">
					<ul>
						<li>로그인</li>
						<li class="li1">이벤트</li>
						<li class="li1">고객지원</li>
					</ul>				
				</div>
			</div>
		</div>
		<div class="header_bottom_inner">
			<div class="header_bottom_menu">
				<div class="menu_wrap">
					<div class="menu1">예약</div>
					<div class="menu1">여행 준비</div>
					<div class="menu1">여행</div>
					<div class="menu2">EveryAir club</div>
				</div>
			</div>
		</div>
	</div>



<div class="bxslider">
  <div style="height: 392px"><img src="https://ozimg.flyasiana.com/temp/image/20191217/f736571b-f061-4c13-9933-4366cbe91d7f.jpeg"></div>
  <div style="height: 392px"><img src="https://ozimg.flyasiana.com/temp/image/20200110/fc4ca760-22f9-4b86-9582-4ae4d9d79854.jpeg"></div>
  <div style="height: 392px"><img src="https://ozimg.flyasiana.com/temp/image/20191014/a84a6853-a8f4-4465-966a-0088daf7dd91.jpeg"></div>
  <div style="height: 392px"><img src="https://ozimg.flyasiana.com/temp/image/20200103/d7d93511-23fd-4522-9c15-e7a05b8074d9.jpeg"></div>
  <div style="height: 392px"><img src="https://ozimg.flyasiana.com/temp/image/20200107/820d1923-5e81-4cb3-acf1-4b136d914834.jpeg"></div>
  <div style="height: 392px"><img src="https://ozimg.flyasiana.com/temp/image/20191206/eab6f90a-6051-4c1a-a854-37cdd0f6722f.jpeg"></div>
</div>
    <div style="width: 80%; margin: auto">
     <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide" style="background:url('https://ozimg.flyasiana.com/main_banner/20200115_mini.jpg')">Slide 1</div>
            <div class="swiper-slide" style="background:url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_CJU.jpg')">Slide 2</div>
            <div class="swiper-slide" style="background:url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_FUK.jpg')">Slide 3</div>
            <div class="swiper-slide" style="background:url('https://ozimg.flyasiana.com/image_fixed/destination/des_M_OKA.jpg')">Slide 4</div>
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
	<div class="section" id="section1" style="background: url(https://flyasiana.com/C/pc/image/main/bg_section02_default.jpg); background-size: 1920px">
		<div class="intro">
			<h1>Keep it simple!</h1>
		</div>
	</div>
	<div class="section" id="section2" style="background: url(https://flyasiana.com/C/pc/image/main/bg_section03.jpg); background-size: 1920px;">

	</div>
		<div class="section" id="section2" style="background: url(https://flyasiana.com/C/pc/image/main/bg_section05.jpg); background-size: 1920px;">

	</div>
</div>
<script type="text/javascript" src="../resources/newni/dist/fullpage.js"></script>
<script>
var myFullpage = new fullpage('#fullpage', {
    anchors: ['firstPage', 'secondPage', '3rdPage'],
    sectionsColor: ['#FFFFFF', '#1BBC9B', '#7E8F7C'],
    responsiveHeight: 600,
    afterResponsive: function(isResponsive){

    }
});

var appendNumber = 4;
var swiper = new Swiper('.swiper-container', {
    pagination: '.swiper-pagination',
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    slidesPerView: 5,
    centeredSlides: true,
    paginationClickable: true,
    spaceBetween: 30,
    loop: true
});
$('.bxslider').bxSlider({
	  auto: true,
	  autoControls: true,
	  stopAutoOnClick: true,
	  pager: true,
	  mode: 'fade',
	  slideWidth: 1920,
	  slideHeight: 392
	});
</script>
</body>
</html>