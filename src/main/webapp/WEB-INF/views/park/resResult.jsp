<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp" />
<link rel="stylesheet" href="../resources/css/park/parkRes.css">
</head>
<body>
<div id="sub_content">
			<ul class="tab_menu">
				<li class="s01"><span class="num">1</span>예약 정보 입력</li>
				<li class="s02"><span class="num">2</span>예약 신청</li>
				<li class="s03 on"><span class="num">3</span>예약 요약</li>
			</ul>
			<div id="step03" class="step on">														
				<div class="section">
					<div class="t_center" style="margin:10px;font-size:28px;font-weight:bold;color:#a70737;">주차 예약이 완료되었습니다.</div>
					<h3 class="stitle01">예약 요약<span>예약하신 내용은 문자로도 확인하실 수 있습니다.</span></h3>
					<table class="table01">
						<caption>예약 일시, 주차예상비용</caption>
						<colgroup>
							<col style="width:25%">
							<col style="width:20%">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" rowspan="2">예약 일시 <br>(Dates and times)</th>
								<td class="t_center fc_gray02">차량 입차</td>
								<td class="fc_gray01"><div id="entvhclResveDt">${info.startDate}</div></td>
							</tr>
							<tr>
								<td class="t_center fc_gray02">차량 출차</td>
								<td class="fc_gray01"><div id="lvvhclResveDt">${info.endDate}</div></td>
							</tr>
							<tr>
								<th scope="row" rowspan="3">주차 <br>(Parking)</th>
								<td class="t_center fc_gray02">주차</td>
								<td class="fc_gray01"><div id="airportLotArea">${info.airport}</div></td>
							</tr>
							<tr>
								<td class="t_center fc_gray02">차량번호</td>
								<td class="fc_gray01"><div id="acPlate">${info.carNum}</div></td>
							</tr>
							<tr>
								<td class="t_center fc_gray02">예약 상태</td>
								<td class="fc_gray01"><div id="resveSttusName">예약완료</div></td>
							</tr>
							<tr>
								<th scope="row" rowspan="3">신청 정보 <br>(Information)</th>
<!-- 								<td class="t_center fc_gray02">예약번호</td>
								<td class="fc_gray01"><div id="resveNo">7908BB0002</div></td> -->
							</tr>
							<tr>
								<td class="t_center fc_gray02">전화번호</td>
								<td class="fc_gray01"><div id="acCttpc">${info.phone}</div></td>
							</tr>
<!-- 							<tr>
								<td class="t_center fc_gray02">이메일 주소</td>
								<td class="fc_gray01"><div id="acEmailAddress">pyj9088@gmail.com</div></td>
							</tr> -->
						</tbody>
					</table>
				</div>	
				<div class="section">
					<h3 class="stitle01">이용 안내</h3>
					<div class="border_box">						
						<ul class="dot_list">
							<li>(예약 기간) 최소 2시간부터 최장 1개월까지 예약이 가능합니다.</li>
							<li>(예약 취소) 예약 입차시간 이후 2시간까지 예약 취소가 자유롭게 가능합니다.</li>
							<li>(예약부도) 예약 입차 시간 이후 2시간 내 미입차시, 예약은 자동 취소됩니다.</li>
							<li>(장애인 차량) 장애인 차량 주차면이 별도로 마련되어 있습니다. (엘리베이터 및 에스컬레이터 없음)</li>
							<li>(주차요금) 주차요금은 실제 입출차 시간을 기준으로 부과됩니다. <a href="#" onclick="$.parkingCharge();" style="color:#a70737"><b>예상 주차요금 계산기</b></a></li>
							<li>(할인적용) 할인은 출차(유인, 무인) 시 증빙 후 적용됩니다.</li>
							<li>(주차장 위치) 예약 주차장은 김포 국내선 제2주차장 2,3층입니다.</li>
						</ul>
					</div>
				</div>
				<div class="btn_area">
					<p>
						<button id="btnHome" class="btn">초기화면</button>
						<button id="btnMgmt" class="btn wine">예약조회/변경/취소</button>
					</p>
				</div>
			</div>
			<!-- //step03 -->
		</div>
<script type="text/javascript">
var phone = $("#acCttpc").text();
if(phone.length > 10){
	var phoneOne = phone.substring(0,3);
	var phoneTwo = phone.substring(3,7);
	var phoneThree = phone.substring(7,11);
	$("#acCttpc").text(phoneOne+'-'+phoneTwo+'-'+phoneThree);
}else{
	var phoneOne = phone.substring(0,3);
	var phoneTwo = phone.substring(3,6);
	var phoneThree = phone.substring(6,10);
	$("#acCttpc").text(phoneOne+'-'+phoneTwo+'-'+phoneThree);
}

</script>
</body>
</html>