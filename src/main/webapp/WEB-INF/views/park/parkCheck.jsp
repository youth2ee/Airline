<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../resources/css/park/parkRes.css">

<link rel="stylesheet" type="text/css" href="../resources/css/reset.css">

<link rel="stylesheet" type="text/css" href="../resources/css/header.css">

<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/reset.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/common.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/layout.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/flyasiana.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/calendar.css">

<c:import url="../template/boot.jsp" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style type="text/css">

.btn:hover{
color: white;
}

input[type="radio"] { 
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}

label { 
	cursor: pointer;
	width: 30px;
	height: 50px;
	font-size: 18px !important;
	border: 2px solid white;
	box-sizing: border-box;
}
.bookable {
	text-align: center;
	background-color: #eeefea;
	font-size: 12px;
}
.etc{ 
	background-color: #2a6bcf;
	background-image: url("../images/disability.png");
	background-size: 26px 40px;
	background-position: center;
	background-repeat: no-repeat;
	opacity: 80%;
	
}
.booked {
	text-align: center;
	background-color: #666666;
	font-size: 12px;
}

.booking {
	text-align: center;
	background-color: #c60b15 !important;
	font-size: 12px;
}


.인천공항{
	width: 1000px;
	height: 470px;
	background-image: url("../images/parkingarea/인천공항2.png");
	background-size: 80%;
	background-repeat: no-repeat;
	padding-top: 70px;
	padding-left: 130px;
}
.제주공항{
	width: 1000px;
	height: 630px;
	background-image: url("../images/parkingarea/김포공항.png");
	background-size: 90%;
	background-repeat: no-repeat;
	padding-top: 15px;
	padding-left: 220px;

}
.김포공항{
	width: 1400px;
	height: 900px;
	background-image: url("../images/parkingarea/제주공항.png");
	background-size: 90%;
	background-repeat: no-repeat;
	padding-top: 260px;
	padding-left: 220px;
	

}
</style>
</head>
<body>
<c:import url="../layout/header.jsp" />
<div id="sub_content">
			<ul class="tab_menu">
				<li class="s01"><span class="num">1</span>예약 정보 입력</li>
				<li class="s02 on"><span class="num">2</span>예약 신청</li>
				<li class="s03"><span class="num">3</span>예약 요약</li>
			</ul>
			<form id="resveForm" action="./resInsert" method="post">
					<div id="step02" class="step on">
						<h3 class="stitle01">예약 신청</h3>								
						<div class="fcol_g section">
							<div class="fcol half t_full">
								<div class="write_form">
									<div class="frow">
										<p class="label" style="line-height: 40px; text-align: left;">예약 일시</p>
										<div id="resveFromToDt">${param.startDate} ~ ${param.endDate}</div>
									</div>
									<div class="frow">
										<p class="label" style="line-height: 40px; text-align: left;">예약 주차</p>										
										<div id="airportLotArea">${param.airport} 주차장</div>
									</div>
									<div class="frow">
										<p class="label" style="line-height: 40px; text-align: left;">예상 요금</p>										
										<div id="rateexpect" style="float: left;">원</div>
										
											<div class="tooltip_wrap">
												<a href="javascript:tooltipBlock();" class="btn_info" style="position: absolute; top: -10px; left: 200px;">도움말</a> 
												<div class="layer_tooltip" style="width: 348px; display: none; position: absolute; top: -50px; left: 220px;">
													<div class="inner">
														<ul class="pwd_rule">
															<li>평일 일일 요금 : <fmt:formatNumber>${park.perDay}</fmt:formatNumber> 원</li> 	
															<li>주말,공휴일 일일 요금 : <fmt:formatNumber>${park.perWeek}</fmt:formatNumber> 원</li>		
															<li>숫자<span class="unable">불가</span></li>		
															<li>특수문자<span class="unable">불가</span></li> 	
															<li>한글, 공백 입력 불가<span class="able">가능</span></li> 				
															<li>20자 이내<span class="able">가능</span></li> 		
															<li></li>
														</ul>
													</div>
													<a href="javascript:tooltipNone();" class="tooltip_close"><span class="hidden">닫기</span></a> 
												</div>	
											</div>
										
									</div>
									
									<div class="frow">
										<label for="acPlate" class="label"><span class="star">*</span> 차량번호</label>
										<div class="full">
											<input type="text" id="carNum" name="carNum" maxlength="20" placeholder="예) 00가0000, 서울00가0000, 외교000000" aria-required="true" value="21가7452">
										</div>
									</div>
									<div class="frow">
										<label for="acCttpc" class="label"><span class="star">*</span> 휴대전화번호</label>
										<c:choose>
											<c:when test="${not empty member}">
												<div class="full">
										        	${member.phone}
										        	<input type="hidden" id="phone" name="phone" value="${member.phone}">
												</div>
											</c:when>
											<c:otherwise>
												<div class="full">
											        <input type="text" id="phone" name="phone" maxlength="11" placeholder="예) 01012345678 숫자만 기입">
												</div>
											</c:otherwise>
										</c:choose>
									</div>
									<c:choose>
											<c:when test="${not empty member}">
												<input type="hidden" id="acPassword" name="password" value="1234" maxlength="4"><br>
												<input type="hidden" id="acPassword2" value="1234" maxlength="4">
											</c:when>
											<c:otherwise>
												<div class="frow">
													<label for="acPassword" class="label"><span class="star">*</span> 비밀번호</label>
													<div class="full">
														<input type="password" id="acPassword" name="password" maxlength="4" placeholder="4자리(숫자가능, 예: 2019, 102a, nprs)" aria-required="true"><br>
													</div>
												</div>									
												<div class="frow">
													<label for="acPassword2" class="label"><span class="star">*</span> 비밀번호 확인</label>
													<div class="full">
														<input type="password" id="acPassword2" maxlength="4" placeholder="4자리(숫자가능, 예: 2019, 102a, nprs)" aria-required="true">
													</div>
												</div>									
											</c:otherwise>
									</c:choose>
									
								</div>
							</div>
							<div class="fcol half t_full" style="position: absolute;">
								<div class="info_box" style="width: 612px;">
								    <p class="fc_wine" style="padding-bottom:10px;font-size:24px;">예약 전 반드시 읽어주세요</p>
									<ul class="dot_list">
										<li>(예약 기간) 최소 1일부터 최장 1개월까지 예약이 가능합니다.</li>
										<li>(예약 취소) 예약 입차시간 이후 2시간까지 예약 취소가 자유롭게 가능합니다.</li>
										<li>(예약부도) 예약 입차 시간 이후 2시간 내 미입차시, 예약은 자동 취소됩니다.</li>
										<li>(장애인 차량) 장애인 차량 주차면이 별도로 마련되어 있습니다.<br>(엘리베이터 및 에스컬레이터 없음)</li>
										<li>(주차요금) 주차요금은 실제 입출차 시간을 기준으로 부과됩니다.</li>
									</ul>
								</div>
							</div>
						</div>	

						<div style="margin-bottom:10px"><br></div>
						<h3 class="stitle01">주차 위치 선택</h3>
                        <div class="map_box02">
							<div class="container">
									
								<!-- 예약 못하는 자리  -->
								<c:forEach items="${list}" var="vo">
									<input type="hidden" value="${vo.areaNum}" class="check"><br>
								</c:forEach>
							
								<!-- 장애인 자리 -->
								<c:forEach items="${etc}" var="vo">
									<input type="hidden" value="${vo}" class="etc"><br>
								</c:forEach>
							
								<div class="container2 ${park.aName}">
									<c:forEach begin="1" end="${park.total}" varStatus="vo">
										<c:choose>
											<c:when test="${vo.current%park.margin2  eq park.margin && vo.current le park.nopattern}">
												<label for="${vo.current}" class="la bookable" style="margin-right: 68px;" id="r${vo.current}">
													<input type="radio" name="areaNum" value="${vo.current}" id="${vo.current}">
												</label>
											</c:when>
											<c:otherwise>
												<label for="${vo.current}" class="la bookable" id="r${vo.current}">
													<input type="radio" name="areaNum" value="${vo.current}" id="${vo.current}" >
												</label>
											</c:otherwise>
										</c:choose>
							
										<c:choose>
							
											<c:when test="${vo.current gt park.nopattern}">
											</c:when>
											<c:otherwise>
												<c:if test="${vo.current eq park.line || vo.current eq park.line*3 || vo.current eq park.line*5 || vo.current eq park.line*7 && vo.current lt park.nopattern}">
													<br>
													<br>
													<br>
													<br>
												</c:if>
												<c:if test="${vo.current eq park.line*2 || vo.current eq park.line*4 ||vo.current eq park.line*6 || vo.current eq park.line*7 && vo.current lt park.nopattern}">
													<br>
												</c:if>
											</c:otherwise>
										</c:choose>
									</c:forEach>
							</div>
							<br>
							</div>
							<c:forEach items="${rest}" var="vo" varStatus="var">
							<input type="hidden" id="r${var.count}" class="resttext" value="${vo}">
							</c:forEach>
                        </div>
						<div class="btn_area">
						    <button type="button" id="btnNext" class="btn wine" style="font-size: 20px;">예약하기</button>
						</div>
					</div>
					<!-- //step02 -->					
				<input type="hidden" id="startDate" name="startDate" value="${param.startDate}">
				<input type="hidden" id="endDate" name="endDate" value="${param.endDate}">
				<input type="hidden" id="rate" name="rate" value="1">
				<input type="hidden" id="airport" name="airport" value="${param.airport}">
				<input type="hidden" id="id" name="id" value="${member.id}">
				<input type="hidden" id="selectedArea" name="areaNum" value="">
			</form>
		</div>
<input type="radio" name="name" style="width: 10px; height: 10px; background-color: black;">
<input type="radio" name="name" style="width: 10px; height: 10px; background-color: black;">
<input type="radio" name="name" style="width: 10px; height: 10px; background-color: black;">
<script type="text/javascript">

	//시작일데이터 받기
	var startDate = $("#startDate").val();
	var startDateArr = startDate.split('-');
 	//종료일 데이터 받기
	var endDate = $("#endDate").val(); 
	var endDateArr = endDate.split('-');

    //파싱
	var startDateCompare = new Date(startDateArr[0], parseInt(startDateArr[1])-1, startDateArr[2]);
	var endDateCompare = new Date(endDateArr[0], parseInt(endDateArr[1])-1, endDateArr[2]);
	
	var count = 0;
	var countr = 0;
	//날비교
	var day = endDateCompare - startDateCompare;
	var cday = 24*60*60*1000;
	day = day/cday+1;
	var ratekor = '';
	//선택기간 안에 주말이 몇번인가 체크
	for(var i = 0; i < day ; i++){
		var check = startDateCompare.getDay()+i;
		if(check%7 == 0 || check%7 ==6){
			count++;
		}
	}
	var areachoose = false;
	
	
	$(".resttext").each(function(){
		var restDate = $(this).val();
		var restDateCompare = new Date(restDate.substring(0,4),restDate.substring(4,6) -1,restDate.substring(6,8));
		var restDay = restDateCompare.getDay();

		if(restDateCompare >= startDateCompare && restDateCompare <= endDateCompare && restDay != 0 && restDay != 6){
			count++;
			countr++;
		}
	});

	var weekday = day - count;
	
	var per = 100;
	//요금계산
	
	//장기이용 할인
	var discount = '';
	if(day>6){
		if(day>14){
			discount = '10% 할인';
			per = 90;
		}else{
			discount = '5% 할인';
			per = 95;
		}
	}
	var rate = (day-count) * ${park.perDay} + count*${park.perWeek};
	var ratefinal = rate*per/100;

	
	function numberWithCommas(x) {
		return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	var ratevisible = numberWithCommas(ratefinal);

	$("#rateexpect").html(ratevisible + ' 원');
	
	$("#rate").val(ratefinal);
	
		//주차불가능지역 불가능하게 만들기
		$(".check").each(function(){
			var check = $(this).val();
			$("#"+check).attr('disabled',true);
			$("#r"+check).addClass('booked');

		});

		//장애인전용주차구역 표시
		$(".etc").each(function(){
			var etc = $(this).val();
			$("#r"+etc).addClass('etc');
		});
		
		//검색공항 select
		var airport = '${param.airport}';
		if(airport==''){
			airport='인천공항';
		}

		$("#"+airport).prop("selected", true);
	


	//좌석 선택 이벤트
	$(".la").click(function(e){
		//예약가능여부 체크
		if($(this).hasClass('booked')){
			alert('예약불가능한 자리입니다.');
		}else if($(this).hasClass('booking')){
			alert('이미선택한 자리입니다.');
		}else{

			$(".la").each(function(){
				$(this).removeClass('booking');
			});
			
			$(this).addClass('booking');

			$("#selectedArea").val($(this).children('input').val());
			if($(this).hasClass('etc')){
				alert('장애인 주차구역 선택 \n 요금이 50% 추가할인 됩니다.');
				var rateHandi = ratefinal/2;
				$("#rate").val(rateHandi);
				$("#rateexpect").html(numberWithCommas(rateHandi) + ' 원');
				$(".pwd_rule  > li").eq(6).html('장애인 차량 할인 : 50%할인 <span class="able">가능</span>');
			}else{
				$("#rate").val(ratefinal);
				$("#rateexpect").html(numberWithCommas(ratefinal) + ' 원');
				$(".pwd_rule  > li").eq(6).html('장애인 차량 할인 : 해당 사항 없음 <span class="unable">불가능</span>');
			}
			areachoose = true;
			
		}
		e.preventDefault();
	});

	function tooltipBlock(){
		$(".layer_tooltip").css("display","block");
	}
	function tooltipNone(){
		$(".layer_tooltip").css("display","none");
	}

	$(".pwd_rule  > li").eq(2).html('총 이용 일 : '+day+'일');
	$(".pwd_rule  > li").eq(3).html('평일  : '+weekday+'일');
	$(".pwd_rule  > li").eq(4).html('주말, 공휴일 : '+count+'일');

	if(discount == ""){
		$(".pwd_rule  > li").eq(5).html('장기이용 할인 : 해당 사항 없음 <span class="unable">불가</span>');
	}else{
		$(".pwd_rule  > li").eq(5).html('장기이용 할인 : '+discount+'<span class="able">가능</span>');

	}
	$(".pwd_rule  > li").eq(6).html('장애인 차량 할인 : 해당 사항 없음 <span class="unable">불가능</span>');

	$("#btnNext").click(function(){
		var carNum = $("#carNum").val();
		var phone = $("#phone").val();
		var password = $("#acPassword").val();
		var password2 = $("#acPassword2").val();
		var areaNum = $("#selectedArea").val();

		if(carNum == ""){
			alert('차량번호를 입력해주세요');
			$("#carNum").focus();
		}else if(phone == ""){
			alert('전화번호를 입력해주세요');
			$("#phone").focus();
		}else if(password != password2 || password == "" || password.length != 4){
			alert('비밀번호를 확인해주세요');
			$("#acPassword").focus();
		}else if(areaNum == ""){
			alert('주차할 자리를 선택해주세요');
			$("#selectedArea").focus();
		}else{
			$("#resveForm").submit();
		}
		
	});
</script>
</body>
</html>