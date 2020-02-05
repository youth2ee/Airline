<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/park/parkRes.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style type="text/css">
*{
font-family: 'Noto Sans KR', sans-serif !important;
}
input[type="radio"] { /* 실제 라디오는 화면에서 숨김 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}
label { /* 주차구역 */
	cursor: pointer;
	width: 30px;
	height: 50px;
	font-size: 18px !important;
	border: 2px solid white;
	box-sizing: border-box;
}
.bookable { /*예매가능*/
	text-align: center;
	background-color: #eeefea;
	font-size: 12px;
}
.booked { /*이미 예매된 자리*/
	text-align: center;
	background-color: #666666;
	font-size: 12px;
}
.booking { /*선택한자리*/
	text-align: center;
	background-color: #a70737 !important;
	font-size: 12px;
}

.etc{ /* 장애인전용주차구역 */
	background-color: #2a6bcf;
	background-image: url("../images/disability.png");
	background-size: 26px 40px;
	background-position: center;
	background-repeat: no-repeat;
	opacity: 80%;
	
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
<c:import url="../template/boot.jsp" />

<body>
<c:import url="../template/roading.jsp" />
<div id="sub_content">
			<ul class="tab_menu">
				<li class="s01"><span class="num">1</span>예약 정보 입력</li>
				<li class="s02 on"><span class="num">2</span>예약 신청</li>
				<li class="s03"><span class="num">3</span>예약 요약</li>
			</ul>
			<form id="resveForm" name="resveForm" class="needs-validation" novalidate="novalidate">
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
										<label for="acPlate" class="label"><span class="star">*</span> 차량번호</label>
										<div class="full">
											<input type="text" id="acPlate" name="carNum" maxlength="20" placeholder="예) 00가0000, 서울00가0000, 외교000000" aria-required="true">
										</div>
									</div>
									<div class="frow">
										<label for="acCttpc" class="label"><span class="star">*</span> 휴대전화번호</label>
										<c:choose>
											<c:when test="${not empty member}">
												<div class="full">
										        	${member.phone}
												</div>
											</c:when>
											<c:otherwise>
												<div class="full">
											        <input type="text" id="acCttpc" name="acCttpc" maxlength="11" placeholder="예) 01012345678 숫자만 기입">
												</div>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="frow">
										<label for="acEmailAddress" class="label"><span class="star">*</span> 이메일 주소</label>
										<c:choose>
											<c:when test="${not empty member}">
												<div class="full">
													${member.email}
												</div>
											</c:when>
											<c:otherwise>
												<div class="full">
													<input type="text" id="acEmailAddress" name="acEmailAddress" maxlength="100" placeholder="예) iam@domain.com" aria-required="true">
												</div>
											</c:otherwise>
										</c:choose>
									
									</div>
									<c:choose>
											<c:when test="${not empty member}">
												
											</c:when>
											<c:otherwise>
												<div class="frow">
													<label for="acPassword" class="label"><span class="star">*</span> 비밀번호</label>
													<div class="full">
														<input type="password" id="acPassword" name="acPassword" maxlength="4" placeholder="4자리(숫자가능, 예: 2019, 102a, nprs)" aria-required="true"><br>
													</div>
												</div>									
												<div class="frow">
													<label for="acPassword2" class="label"><span class="star">*</span> 비밀번호 확인</label>
													<div class="full">
														<input type="password" id="acPassword2" name="acPassword2" maxlength="4" placeholder="4자리(숫자가능, 예: 2019, 102a, nprs)" aria-required="true">
													</div>
												</div>									
											</c:otherwise>
									</c:choose>
									
								</div>
							</div>
							<div class="fcol half t_full">
								<div class="info_box">
								    <p class="fc_wine" style="padding-bottom:10px;font-size:24px;">예약 전 반드시 읽어주세요</p>
									<ul class="dot_list">
										<li>(예약 기간) 최소 1일부터 최장 1개월까지 예약이 가능합니다.</li>
										<li>(예약 취소) 예약 입차시간 이후 2시간까지 예약 취소가 자유롭게 가능합니다.</li>
										<li>(예약부도) 예약 입차 시간 이후 2시간 내 미입차시, 예약은 자동 취소됩니다.</li>
										<li>(장애인 차량) 장애인 차량 주차면이 별도로 마련되어 있습니다. (엘리베이터 및 에스컬레이터 없음)</li>
										<li>(주차요금) 주차요금은 실제 입출차 시간을 기준으로 부과됩니다.</li>
									</ul>
									<div class="map_pop">
										<a href="#" class="btn_close btnParkingLotClose"><img src="/images/resve/common/btn_pclose.jpg" alt="주차위치 팝업 닫기"></a>
										<div class="map_box"><p><img src="/images/resve/sub/map01.jpg" class="map" alt=""></p></div>
									</div>
								</div>
							</div>
						</div>	

						<div style="margin-bottom:10px"><br></div>
						<h3 class="stitle01">주차 위치 선택</h3>
                        <div class="map_box02">
							<div class="container">
							
								<input type="date" name="startDate" value="${param.startDate}" style="display: none;">
								<input type="date" name="endDate" value="${param.endDate}" style="display: none;">
								<input type="hidden" name="airport" value="${param.airport}" >
							
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
							<div style="">
							예상요금 : <input type="text" id="rate" name="rate"><br>
							차량번호 : <input type="text" id="carNum" name="carNum"><br>
							차량종류 : <input type="text" id="carKind" name="carKind"><br>
							
							</div>
							</div>
							<c:forEach items="${rest}" var="vo" varStatus="var">
							<input type="hidden" id="r${var.count}" class="resttext" value="${vo}">
							</c:forEach>
                        </div>
						<div class="btn_area">
						    <button id="btnNext" class="btn wine">예약하기</button>
						</div>
					</div>
					<!-- //step02 -->					
				<input type="hidden" id="startDate" name="resveTempDe" value="${param.startDate}">
				<input type="hidden" id="endDate" name="resveTempSn" value="${param.endDate}">
				<input type="hidden" id="airportCode" name="airportCode" value="1">
				<input type="hidden" id="iLotArea" name="iLotArea" value="2">
				<input type="hidden" id="entvhclResveDt" name="entvhclResveDt" value="2020-02-29 07:20">
				<input type="hidden" id="lvvhclResveDt" name="lvvhclResveDt" value="2020-03-04 18:10">
				<input type="hidden" id="parkngAr" name="parkngAr" value="GNRL">
				<input type="hidden" id="acPlateEnc" name="acPlateEnc">
			</form>
		</div>

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


	
	//선택기간 안에 주말이 몇번인가 체크
	for(var i = 0; i < day ; i++){
		var check = startDateCompare.getDay()+i;
		if(check%7 == 0 || check%7 ==6){
			count++;
		}
	}


	var per = 100;
	//요금계산
	var rate = (day-count) * ${park.perDay} + count*${park.perWeek};

	//장기이용 할인
	if(day>6){
		if(day>14){
			per = 90;
		}else{
			per = 95;
		}
	}

	
	$(".resttext").each(function(){
		var restDate = $(this).val();
		var restDateCompare = new Date(restDate.substring(0,4),restDate.substring(4,6) -1,restDate.substring(6,8));
		var restDay = restDateCompare.getDay();

		if(restDateCompare >= startDateCompare && restDateCompare <= endDateCompare && restDay != 0 && restDay != 6){
			count++;
			countr++;
		}
	});

	
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
	$(".la").click(function(){

		//예약가능여부 체크
		if($(this).hasClass('booked')){
			alert('예약불가능한 자리입니다.');
		}else{

			$(".la").each(function(){
				$(this).removeClass('booking');

			});
			
			$(this).addClass('booking');
			


			if($(this).hasClass('etc')){
				alert('장애인 주차구역 선택');
				per = per - 50;
			}

			rate = rate*per/100;
			$("#rate").val(rate);
		}

		
	});

</script>
</body>
</html>