<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVERY AIR / Parking</title>
<c:import url="../template/boot.jsp" />
<link rel="stylesheet" type="text/css" href="../resources/css/xddatepicker/jquery.datetimepicker.css">
<script src="../js/jquery.js"></script>
<script src="../js/jquery.datetimepicker.full.min.js"></script>
<link rel="stylesheet" href="../resources/css/park/parkRes.css">
<link rel="stylesheet" type="text/css" href="../resources/css/header.css">
<style type="text/css">
.btn:hover {
	color: white;
}
</style>
</head>
<body>
<c:import url="../layout/header.jsp" />
<div id="sub_content">
			<ul class="tab_menu">
				<li class="s01 on"><span class="num">1</span>예약 정보 입력</li>
				<li class="s02"><span class="num">2</span>예약 신청</li>
				<li class="s03"><span class="num">3</span>예약 요약</li>
			</ul>
			<form id="resveForm" class="needs-validation" action="./parkCheck">
					<div id="step01" class="step on">
						<h3 class="stitle01">예약 정보 입력</h3>
						<div class="fcol_g section">
							<div class="fcol half t_full">
								<div class="write_form">
									<div class="frow">
										<label for="airportCode" class="label"><span class="star">*</span> 공항</label>
										<select id="airportCode" name="airport" class="fsize01 m_full" aria-required="true">
										<option value=""  selected="selected">공항선택</option>
										<option value="인천공항">인천공항</option>
										<option value="김포공항">김포공항</option>
										<option value="제주공항">제주공항</option>
										</select>
									</div>
									<div class="frow">
										<label for="entvhclResveDt" class="label"><span class="star">*</span> 예약 입차일시</label>
										<div class="fsize01 m_full cal_wrap">
											<input type="text" id="entvhclResveDate" name="startDate" readonly="readonly" aria-required="true">
										</div>
									</div>
									<div class="frow">
										<label for="lvvhclResveDt" class="label"><span class="star">*</span> 예약 출차일시</label>
										<div class="fsize01 m_full cal_wrap">
											<input type="text" id="lvvhclResveDate" name="endDate" readonly="readonly" aria-required="true">
										</div>
									</div>
<!-- 									<div class="frow">
										<p class="label"><span class="star">*</span> 차량 종류</p>
										<ul class="chk_list">
											<li><input type="radio" name="carKind" value="대형" id="parkngAr1" checked="checked"> <label for="parkngAr1" class="r_label">일반 차량</label></li>
											<li><input type="radio" name="carKind" value="소형" id="parkngAr2"> <label for="parkngAr2" class="r_label">소형 차량</label></li>
										</ul>
									</div> -->
						            <div id="resve_able_info" class="fc_wine" style="padding-top:10px;"></div>
						            <div id="resve_able_info2" style="padding-top:0px;"></div>
								</div>
							</div>
							<div class="fcol half t_full">
								<div class="info_box">
								    <p class="fc_wine" style="padding-bottom:10px;font-size:24px;">예약 전 반드시 읽어주세요</p>
									<ul class="dot_list">
										<li>(예약 기간) 최소 1일부터 최장 1개월까지 예약이 가능합니다.</li>
										<li>(예약 취소) 예약 입차시간 이후 2시간까지 예약 취소가 자유롭게 가능합니다.</li>
										<li>(예약부도) 예약 입차 시간 이후 2시간 내 미입차시, 예약은 자동 취소됩니다.</li>
										<li>(장애인 차량) 장애인 차량 주차면이 별도로 마련되어 있습니다.</li>
										<li>(주차요금) 주차요금은 실제 입출차 시간을 기준으로 부과됩니다.</li>
									</ul>
								</div>
							</div>
						</div>	
						<div class="btn_area">
							<button type="button" id="btnList" class="btn border" onclick="location.href='./FindMyRes'">예약조회</button>
						    <button type="button" id="btnNext" class="btn wine" style="line-height: 37px;">다음단계</button>
						</div>
					</div>
				<input type="hidden" id="iLotArea" name="iLotArea" value="2" aria-required="true">
			</form>
		</div>
<script type="text/javascript">

	var airport = '';
	var startDate = '';
	var endDate = '';
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1;
	var yyyy = today.getFullYear();
	var maxDate2 = '';
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 

	today = yyyy+'-'+mm+'-'+dd;

	$(".fa-comment-dots").offset({top : 61});
	$(".fa-search").offset({top : 61});
$.datetimepicker.setLocale('ko');
$('#entvhclResveDate').datetimepicker({
 i18n:{
  ko:{
   months:[
    '1월','2월','3월','4월',
    '5월','6월','7월','8월',
    '9월','10월','11월','12월',
   ],
   dayOfWeek:[
    "일", "월", "화", "수", 
    "목", "금", "토",
   ]
  }
 },
 timepicker:false,
 format:'Y-m-d',
 lang:'ko',
 onShow:function( ct ){
	   this.setOptions({
		minDate:0,
	    maxDate:$('#lvvhclResveDate').val()?$('#lvvhclResveDate').val():false
	   })
}
});

$('#entvhclResveDate').change(function(){
	startDate = $(this).val();
	var ydm = startDate.split('-');

	if(ydm[1] == 12){
		ydm[0] = ydm[0]*1;
		ydm[0] = ydm[0]+1;
		ydm[0] = ''+ydm[0];
		ydm[1] = 01;
	}else{
		ydm[1] = ydm[1]*1;
		ydm[1] = ydm[1] + 1;
		if(ydm[1] < 10){
			ydm[1] = '0'+ydm[1];
		}else{
			ydm[1] = ''+ydm[1];
		}
	}
	maxDate2 = ydm[0]+'-'+ydm[1]+'-'+ydm[2];

});

$('#lvvhclResveDate').datetimepicker({
	 i18n:{
	  ko:{
	   months:[
	    '1월','2월','3월','4월',
	    '5월','6월','7월','8월',
	    '9월','10월','11월','12월',
	   ],
	   dayOfWeek:[
	    "일", "월", "화", "수", 
	    "목", "금", "토",
	   ]
	  }
	 },
	 timepicker:false,
	 format:'Y-m-d',
	 lang:'ko',
	 onShow:function( ct ){
		   this.setOptions({
			maxDate:maxDate2,
		    minDate:jQuery('#entvhclResveDate').val()?jQuery('#entvhclResveDate').val():false
		   })
		  }
	});

$("#btnNext").click(function(){
	
	airport = $("#airportCode").val();
	startDate = $("#entvhclResveDate").val();
	endDate = $('#lvvhclResveDate').val();
	

	if(airport == "" ){
		alert('공항을 선택해 주세요');
		$("#airportCode").focus();
	}else if(startDate == "" || startDate < today){
		//시작날
		alert('예약 입차일시를 선택해주세요');
		$("#entvhclResveDate").focus();
	}else if(endDate == "" || endDate < startDate || endDate > maxDate2){
		//종료
		alert('예약 출차일시를 선택해주세요');
		$('#lvvhclResveDate').focus();
	}else{
		//폼제출
		$("#resveForm").submit();
	}
	
});
</script>
</body>
</html>