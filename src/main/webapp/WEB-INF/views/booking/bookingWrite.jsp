<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVERY AIR / Booking</title>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/booking/bookingWrite.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>

<header>
<c:import url="../layout/header.jsp"></c:import>
</header>

<div id="top">
<div id="topWrap">
<div id="top1">
<i class="fa fa-plane" style="font-size:23px;color:white; padding-top: 18px; padding-bottom: 9px;"></i><br>
<span style="font-size: 23px;">${bTVO.depInfo.depAirportNm}</span> <i class='fas fa-angle-right' style='font-size:23px; padding: 0 10px;'></i> <span style="font-size: 23px;">${bTVO.depInfo.arrAirportNm}</span><br>
<div style="padding-bottom: 2px;">${bTVO.depInfo.airlineNm} (${bTVO.depInfo.vihicleId})</div><br>
<div style="margin-top: -8px;">
${dep[0]}년 ${dep[1]}월 ${dep[2]}일<br>
${dep[3]}시 ${dep[4]}분<i class='fas fa-angle-right' style='font-size:10px; padding: 0 5px;'></i>${dep[8]}시 ${dep[9]}분<br>
</div>
</div>



<div id="top2">
<c:if test="${bTVO.kind == '왕복'}">
<i class="fa fa-plane" style="font-size:23px;color:white; padding-top: 18px; padding-bottom: 9px;"></i><br>
<span style="font-size: 23px;">${bTVO.depInfo.arrAirportNm}</span> <i class='fas fa-angle-right' style='font-size:23px; padding: 0 10px;'></i> <span style="font-size: 23px;">${bTVO.depInfo.depAirportNm}</span><br>
<div style="padding-bottom: 2px;">${bTVO.arrInfo.airlineNm} (${bTVO.arrInfo.vihicleId})</div><br>
<div style="margin-top: -8px;">
${arr[0]}년 ${arr[1]}월 ${arr[2]}일<br>
${arr[3]}시 ${arr[4]}분<i class='fas fa-angle-right' style='font-size:10px; padding: 0 5px;'></i>${arr[8]}시 ${arr[9]}분<br>
</div>

</c:if>
</div>

<div id="top3"> 
<i class="material-icons" style="font-size:31px; color: white; padding-top: 14px;">person</i>
<div style="margin-top: 1px; font-size: 20px;">
<c:if test="${bTVO.adult != 0}">
성인 : ${bTVO.adult}명
</c:if>
<c:if test="${bTVO.child != 0}">
아동 : ${bTVO.child}명
</c:if>
</div>
</div>

<div id="top4">
<i class='fas fa-credit-card' style="font-size:22px; color: white; padding-top: 17px;"></i>
<div style="padding-bottom: 10px;">
<h5>가는편 : ${bTVO.depInfo.economyCharge}원</h5>
<c:if test="${bTVO.kind == '왕복'}">
<h5>오는편 : ${bTVO.arrInfo.economyCharge}원</h5>
</c:if>
</div>
</div>

</div>
</div>

<div id="noti">
<div id="notiWrap">
<table>
<tr><td style="padding-bottom: 5px;">반드시 실제 탑승하실 분의 성명을 입력하십시오. (예약 후 변경이 불가합니다)</td></tr>
<tr><td style="padding-bottom: 5px;">외국 국적이신 경우 성함을 여권상 영문으로 입력하여 주시기 바랍니다. </td></tr>
<tr><td style="padding-bottom: 5px;">탑승 완료 후에는 소급하여 할인을 적용 받을 수 없으므로 할인 대상 손님께서는 항공권 구입, 탑승 시 할인 증빙서류를 소지하여 주시기 바랍니다.</td></tr>
<tr><td style="padding-bottom: 5px;">정보통신망법 제17조의2 시행령에 따라 만 14세 미만 미성년자 예매 시 법정대리인의 동의 및 인증이 불가피하므로 14세 이상의 성인께서 로그인 후 예매진행을 해 주시기 바랍니다.</td></tr>
<tr><td style="padding-bottom: 5px;">임신 32주 이상의 임신부 고객은 탑승이 제한될 수 있으니 사전에 확인하시기 바랍니다. (37주 이상은 탑승불가)</td></tr>
</table>
</div>
</div>


<section>
<div id="title">탑승자 정보</div>
<div id="tmsg">운임이 정상적으로 입력되었는지 최종확인 후, 운임 조건 및 규정을 확인하시기 바랍니다.</div>


<form id="frm" action="./bookingWrite" method="post">
<div> 

<c:if test="${bTVO.adult != 0}">
<c:forEach begin="1" end="${bTVO.adult}" varStatus="status"> 
<table style="margin-left: 111px;"><!-- 성인1 -->
<tr><td colspan="2"><h4 style="font-size: 28px;">성인 ${status.index}</h4></td> </tr>

<tr> 
<td class="bth">성별</td> 
<td class="btb">
<input type="radio" name="adultList[${status.index-1}].gender" value="여" id="womana${status.index}" class="rfchk" checked="checked"> 
<label for="womana${status.index}">여자</label>
<input type="radio" name="adultList[${status.index-1}].gender" value="남" id="mana${status.index}" class="rfchk">  
<label for="mana${status.index}">남자</label>
</td>
</tr>

<tr>
<td class="bth">이름</td> 
<td class="btb">
<input type="text" placeholder="성(신분증언어)" class="hannaName" name="adultList[${status.index-1}].lastName"> 
<input type="text" placeholder="이름(신분증언어)" class="hannaName" name="adultList[${status.index-1}].firstName"> 
</td>
</tr>

<tr>
<td class="bth">생년월일</td>
<td class="btb"> 

<select name="adultList[${status.index-1}].year" class="hn1"> 
<option selected="selected">년</option>
<c:forEach begin="1910" end="2020" varStatus="status1">
<option>${status1.index}</option>
</c:forEach>
</select> 

<select name="adultList[${status.index-1}].month" class="hn2"> 
<option selected="selected">월</option>
<c:forEach begin="01" end="12" varStatus="status2">
<option>${status2.index}</option>
</c:forEach>
</select> 

<select name="adultList[${status.index-1}].day" class="hn3"> 
<option selected="selected">일</option>
<c:forEach begin="01" end="31" varStatus="status3">
<option>${status3.index}</option>
</c:forEach>
</select> 
</td>
</tr>

<tr>
<td class="bth">회원번호(탑승객)</td>
<td class="btb">
<input type="text" placeholder="회원번호" name="adultList[${status.index-1}].memberNum" class="mnum" readonly="readonly">
<input type="button" value="회원번호 찾기" class="mbtn">
</td>
</tr>

<tr>
<td class="bth">개인할인(가는편)</td>
<td class="btb"> 
<select name="adultList[${status.index-1}].depCoupon">
<option>개인할인 선택 안함</option>
<option>[30%] 장애인 1~3급</option>
<option>[10%] 장애인 4~6급</option>
<option>[30%] 장애인 1~3급 동반 보호자 1인</option>
<option>[10%] 현역군인(휴가증소지의 의무복무사병)</option>
<option>[10%] 고엽제 후유증 환자</option>
<option>[30%] 국가유공상이 4급 동반 보호자 1인</option>
<option>[30%] 5.18민주유공 1~4급 동반 보호자 1인</option>
<option>[30%] 국가유공상이 1~3급 동반 보호자 1인</option>
<option>[30%] 독립유공자 동반 보호자 1인</option>
<option>[10%] 독립유공자 유족증소지자</option>
<option>[30%] 독립유공자</option>
<option>[10%] 국가유공자/5.18민주유공자/월남전 참전유공자 &#38; 유공자 유족증 소지자</option>
<option>[30%] 국가유공상이자 &#38; 5.18민주유공부상자</option>
</select>

 </td>
</tr>

<c:if test="${bTVO.kind == '왕복'}">

<tr>
<td class="bth">개인할인(오는편)</td>
<td class="btb">
<select name="adultList[${status.index-1}].arrCoupon">
<option>개인할인 선택 안함</option>
<option>[30%] 장애인 1~3급</option>
<option>[10%] 장애인 4~6급</option>
<option>[30%] 장애인 1~3급 동반 보호자 1인</option>
<option>[10%] 현역군인(휴가증소지의 의무복무사병)</option>
<option>[10%] 고엽제 후유증 환자</option>
<option>[30%] 국가유공상이 4급 동반 보호자 1인</option>
<option>[30%] 5.18민주유공 1~4급 동반 보호자 1인</option>
<option>[30%] 국가유공상이 1~3급 동반 보호자 1인</option>
<option>[30%] 독립유공자 동반 보호자 1인</option>
<option>[10%] 독립유공자 유족증소지자</option>
<option>[30%] 독립유공자</option>
<option>[10%] 국가유공자/5.18민주유공자/월남전 참전유공자 &#38; 유공자 유족증 소지자</option>
<option>[30%] 국가유공상이자 &#38; 5.18민주유공부상자</option>
</select>
</td>
</tr>
</c:if>
</table><!-- 성인1 -->
<hr>
</c:forEach>
</c:if>


<!-- %%%%%%%% -->

<c:if test="${bTVO.child != 0}">
<c:forEach begin="1" end="${bTVO.child}" varStatus="status"> 
<table style="margin-left: 111px;"><!-- 아이1 -->

<tr><td colspan="2"><h4 style="font-size: 28px;">아이 ${status.index}</h4></td> </tr>

<tr> 
<td class="bth">성별</td> 
<td class="btb">
<input type="radio" name="childList[${status.index-1}].gender" value="여" id="womanc${status.index}" class="rfchk" checked="checked"> 
<label for="womanc${status.index}">여자</label>
<input type="radio" name="childList[${status.index-1}].gender" value="남" id="manc${status.index}" class="rfchk">  
<label for="manc${status.index}">남자</label>
</td>
</tr>

<tr>
<td class="bth">이름</td> 
<td class="btb"><input type="text" placeholder="성(신분증언어)" class="hannaName"  name="childList[${status.index-1}].lastName"> 
<input type="text" placeholder="이름(신분증언어)" class="hannaName" name="childList[${status.index-1}].firstName"> </td>
</tr>

<tr>
<td class="bth">생년월일</td>
<td class="btb"> 

<select name="childList[${status.index-1}].year"> 
<option selected="selected">년</option>
<c:forEach begin="1910" end="2020" varStatus="status1">
<option>${status1.index}</option>
</c:forEach>
</select> 

<select name="childList[${status.index-1}].month"> 
<option selected="selected">월</option>
<c:forEach begin="01" end="12" varStatus="status2">
<option>${status2.index}</option>
</c:forEach>
</select> 

<select name="childList[${status.index-1}].day"> 
<option selected="selected">일</option>
<c:forEach begin="01" end="31" varStatus="status3">
<option>${status3.index}</option>
</c:forEach>
</select> 
</td>
</tr>

<tr>
<td class="bth">회원번호(탑승객)</td>
<td class="btb">
<input type="text" placeholder="회원번호" name="childList[${status.index-1}].memberNum" class="mnum" readonly="readonly">
<input type="button" value="회원번호 찾기" class="mbtn">
</td>
</tr>

<tr>
<td class="bth">개인할인(가는편)</td>
<td class="btb"> 
<select name="childList[${status.index-1}].depCoupon">
<option>개인할인 선택 안함</option>
<option selected="selected">[25%] 아이(만2~13세미만)할인</option>
<option>[50%] 국가유공상이자1~4급 동반 소아1인</option>
<option>[50%] 5.18부상 동반 소아1인</option>
<option>[50%] 독립유공자 동반 소아1인</option>
<option>[50%] 1~3급 소아 장애인 할인</option>
<option>[30%] 4~6급 소아 장애인 할인</option>
<option>[50%] 장애인(1~3급)동반 소아</option>
<option>[25%] 청소년(만14~18세미만)할인</option>
</select>

 </td>
</tr>

<c:if test="${bTVO.kind == '왕복'}">

<tr>
<td class="bth">개인할인(오는편)</td>
<td class="btb">
<select name="childList[${status.index-1}].arrCoupon">
<option>개인할인 선택 안함</option>
<option selected="selected">[25%] 아이(만2~13세미만)할인</option>
<option>[50%] 국가유공상이자1~4급 동반 소아1인</option>
<option>[50%] 5.18부상 동반 소아1인</option>
<option>[50%] 독립유공자 동반 소아1인</option>
<option>[50%] 1~3급 소아 장애인 할인</option>
<option>[30%] 4~6급 소아 장애인 할인</option>
<option>[50%] 장애인(1~3급)동반 소아</option>
<option>[25%] 청소년(만14~18세미만)할인</option>
</select>
</td>
</tr>
</c:if>
</table><!-- 아이1 -->
<div style="padding-left: 117px; padding-top: 18px;">소아/유아 동반 시, 반드시 나이를 확인할 수 있는 서류를 준비하시기 바랍니다.</div>
<hr>
</c:forEach>
</c:if>



</div>


<div>
<div id="title">예약자 연락처 정보</div>
<div id="tmsg">예약정보수신 연락처에 작성하신 이메일로 구매 결과와 여정안내서를 전송해드립니다.</div>

<table style="margin-left: 111px;">
<tr>
<td class="bth">이메일</td>
<td class="btb">
<input type="email" name="resEmail" class="hannaName" id="re" >
<input type="checkbox" name="resECheck" id="resECheck" checked="checked">
<label for="resECheck">이메일 항공권 수신동의</label>
</td>
</tr>

<tr>
<td class="bth">전화번호</td>
<td class="btb">
<input type="text" name="resPhone" class="hannaName" id="rp" maxlength="13" onKeyup="inputPhoneNumber(this)">
<input type="checkbox" name="resPCheck" id="resPCheck" checked="checked">
<label for="resPCheck">SMS 수신 동의</label>
</td>
</tr>
</table>

</div>

<hr>
<input type="button" id="btn" value="다음">
<!--<input type="submit" id="btn" value="다음">-->

<input type="hidden" name="kind" value="${bTVO.kind}">
<input type="hidden" name="adult" value="${bTVO.adult}">
<input type="hidden" name="child" value="${bTVO.child}">

<input type="hidden" name="depFnum" value="${bTVO.depFnum}">
<c:if test="${bTVO.kind == '왕복'}">
<input type="hidden" name="arrFnum" value="${bTVO.arrFnum}">
</c:if>


</form>

<div class="gray_box" id="rev_dom_notice">
			<h5>유의사항</h5>
			<ul class="list_type2">
				<li>예약 클래스에 따라 마일리지 적립이 불가하거나 적립률이 상이할 수 있으며, 실제 운항하는 항공사의 기준에 따라 적립이 이루어집니다.</li>
				<li>해당 항공사 마일리지 적립 규정상 적립이 불가한 경우에는 회원번호를 입력하셔도 적립이 되지 않습니다.</li>
				<li>현재 시스템 문제로, 숫자와 영문을 조합한 이메일 주소만 사용 가능합니다.</li>
			</ul>
		</div>


<!-- 회원번호 찾기 -->

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
			<div class="modal-content">
				<span class="close">&times;</span>

				<div id="mtitle">회원번호 찾기</div>

				<table style="margin: 0 auto;">
					<tr>
						<td class="mbth">이름</td>
						<td class="mbtb"><input type="text" id="mname"></td>
					</tr>

					<tr>
						<td class="mbth">아이디</td>
						<td class="mbtb"><input type="text" id="mid"></td>
					</tr>

				</table>

				<div style="width: 100%; margin: 0 auto; text-align: center; padding-top: 15px;">
					<input type="button" value="찾기" style="margin: 0 auto;" class="mbtn2">
				</div>
				
				<div id="modalfm"></div>
				
				<div style="width: 100%;">
					<input type="button" value="사용하기" id="ubtn">
				</div>

			</div>

		</div>


</section>

<script type="text/javascript">
var thi;

/* 회원번호 찾기 */

$('.mbtn').click(function(e){
	
	thi = $(this);

	$('#mname').val('');
	$('#mid').val('');
	$('#ubtn').css('display','none');

	$('.modal-content').css('height','360px');
	$('#modalfm').css('display','none');
	

	$('#myModal').css('display','block');
	
	$('.close').click(function(){
		$('#myModal').css('display','none');
	});

window.onclick = function(event) {
	  if (event.target == $('#myModal')) {
		  $('#myModal').css('display','none');
	  }
	}


		
		e.preventDefault();
	
});


var told = '';


$('.mbtn2').on('click',  function(event){
	
	$('.modal-content').css('height','491px');
	$('#modalfm').css('display','block');
	$('#ubtn').css('display','none');
 	$.ajax({
		data : {
			name : $('#mname').val().trim(),
			id : $('#mid').val().trim()
		},
		type : "GET",
		url : "./booking/searchm",
		success : function(data) {

			data = data.trim();

			told = data;

			if(data != "0"){
				$('#modalfm').css('line-height','102px');
				$('#modalfm').html(' 회원님의 회원번호는  <span style="color: #d60815;" id="mnump"></span> 입니다.')
				$('#mnump').text(data);
				$('#ubtn').css('display','block');

				
				
			} else {

				$('#modalfm').css('line-height','121px');
				$('#modalfm').text('회원번호가 존재하지 않습니다.');
			}
		}
	}); 

	event.preventDefault(); 
});

$('body').on('click','#ubtn', function(){
	thi.parent('.btb').find('.mnum').val(told);

    $('#myModal').css('display','none');
});

//회원번호 찾기
 function inputPhoneNumber(obj) {

	 var regexp = /^[0-9]*$/;

		 if( !regexp.test(obj.value) ) {
		 	obj.value = obj.value.replace(/[^0-9]/g, "");
		 }

    var number = obj.value.replace(/[^0-9]/g, "");
    var phone = "";

    if(number.length < 4) {
        return number;
    } else if(number.length < 7) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3);
    } else if(number.length < 11) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 3);
        phone += "-";
        phone += number.substr(6);
    } else {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 4);
        phone += "-";
        phone += number.substr(7);
    }
    obj.value = phone.substring(0,13);
} 


$('#rp').blur(function(){
	if($(this).val().length > 12 ){
		tel_check($(this).val());
	}
});


function tel_check(str){
	var regTel = /^(01[016789]{1}|070|02|0[3-9]{1}[0-9]{1})-[0-9]{3,4}-[0-9]{4}$/;
	
	if(!regTel.test(str)) {
		alert('올바른 전화번호를 입력하세요.');
		return false;
	}
	return true;
}


var x = 0;
$('.hannaName').blur(function(){
	if($(this).val()==""){
		x=1;
	}
});


$('#btn').click(function(){
	x=0;
	$('.hn1').each(function(){
		if($('.hn1 option:eq(0)').prop('selected')){
		x=3;
		}
	});
	
	$('.hn2').each(function(){
		if($('.hn2 option:eq(0)').prop('selected')){
		x=3;
	}
	});
	
	$('.hn3').each(function(){
		if($('.hn3 option:eq(0)').prop('selected')){
		x=3;
	}
	});

	$('.hannaName').each(function(){
		if($('.hannaName').val()==""){
			x=1;
		}
	});

	if($('#re').val() == ''){
		x=1;
	}

	if($('#rp').val() == ''){
		x=1;
	}

	if(x==1){
		alert("모든 항목을 입력하세요.");
	}else if(x==3){
		alert("생년월일을 입력하세요.");

	}else{
		$("#frm").submit();
	}
});


</script>



</body>
</html>