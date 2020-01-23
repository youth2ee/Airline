<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/booking/bookingWrite.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
booking write
<header>
header 
</header>

<div id="top">
<div id="topWrap">
<div id="top1">
<i class="fa fa-plane" style="font-size:40px;color:white; padding-top: 20px;"></i><br>
${bTVO.depInfo.depAirportNm} <i class='fas fa-angle-right' style='font-size:10px;'></i> ${bTVO.depInfo.arrAirportNm}<br>
${bTVO.depInfo.vihicleId} ${bTVO.depInfo.airlineNm}<br>
${dep[0]}년 ${dep[1]}월 ${dep[2]}일<br>
출발 : ${dep[3]}시 ${dep[4]}분<br>
도착 : ${dep[8]}시 ${dep[9]}분<br>

<%-- 출발 : ${bTVO.depInfo.depAirportNm}<br>
도착 : ${bTVO.depInfo.arrAirportNm}<br>
${bTVO.depInfo.depPlandTime}<br>
${bTVO.depInfo.arrPlandTime}<br>
${bTVO.depInfo.vihicleId}<br>
${bTVO.depInfo.airlineNm}<br>
<c:if test="${bTVO.kind == '편도'}">
편도
</c:if> --%>
</div>



<div id="top2">
<c:if test="${bTVO.kind == '왕복'}">
<i class="fa fa-plane" style="font-size:40px;color:white; padding-top: 20px;"></i><br>
${bTVO.depInfo.arrAirportNm} <i class='fas fa-angle-right' style='font-size:10px;'></i> ${bTVO.depInfo.depAirportNm}<br>
${bTVO.arrInfo.vihicleId} ${bTVO.arrInfo.airlineNm}<br>
${arr[0]}년 ${arr[1]}월 ${arr[2]}일<br>
출발 : ${arr[3]}시 ${arr[4]}분<br>
도착 : ${arr[8]}시 ${arr[9]}분<br>

</c:if>
</div>
<div id="top3"> 
<i class="material-icons" style="font-size:40px; color: white; padding-top: 20px;">person</i> 
<h5>성인 : ${bTVO.adult}명</h5>
<h5>아동 : ${bTVO.child}명</h5>
</div>

<div id="top4">
<i class='fas fa-credit-card' style="font-size:30px; color: white; padding-top: 24px;"></i>
<h5>가는편 : ${bTVO.depInfo.economyCharge}원</h5>
<c:if test="${bTVO.kind == '왕복'}">
<h5>오는편 : ${bTVO.arrInfo.economyCharge}원</h5>
</c:if>
</div>
</div>
</div>

<div id="noti">
<div id="notiWrap">
<table>
<tr><td>반드시 실제 탑승하실 분의 성명을 입력하십시오. (예약 후 변경이 불가합니다)</td></tr>
<tr><td>외국 국적이신 경우 성함을 여권상 영문으로 입력하여 주시기 바랍니다. </td></tr>
<tr><td>탑승 완료 후에는 소급하여 할인을 적용 받을 수 없으므로 할인 대상 손님께서는 항공권 구입, 탑승 시 할인 증빙서류를 소지하여 주시기 바랍니다.</td></tr>
<tr><td>스타얼라이언스 회원사로 마일리지 적립을 원하는 경우 반드시 영문 성함으로 입력하여 주시기 바랍니다. 공동운항편은 스타얼라이언스 회원사로 마일리지 적립이 불가합니다.</td></tr>
<tr><td>정보통신망법 제17조의2(법정대리인 동의의 확인방법) 강화 시행령에 따라 만 14세 미만 미성년자 예매 시 법정대리인의 동의 및 인증이 불가피하므로 14세 이상의 성인께서 로그인 후 예매진행을 해 주시기 바랍니다.</td></tr>
<tr><td>임신 32주 이상의 임신부 고객은 탑승이 제한될 수 있으니 사전에 확인하시기 바랍니다. (37주 이상은 탑승불가)</td></tr>
</table>
</div>
</div>


<section>
<div id="title">탑승자 정보</div>
<div id="tmsg">운임이 정상적으로 입력되었는지 최종확인 후, 운임 조건 및 규정을 확인하시기 바랍니다.</div>


<form action="./bookingWrite" method="post">
<div> 

<c:if test="${bTVO.adult != 0}">
<c:forEach begin="1" end="${bTVO.adult}" varStatus="status"> 
<table><!-- 성인1 -->
<tr><td colspan="2"><h4 style="font-size: 28px;">성인 ${status.index}</h4></td> </tr>

<tr> 
<td class="bth">성별</td> 
<td class="btb">
여<input type="radio" name="adultList[${status.index-1}].gender" value="여"> 
남<input type="radio" name="adultList[${status.index-1}].gender" value="남">  
</td>
</tr>

<tr>
<td class="bth">이름</td> 
<td class="btb">
<input type="text" placeholder="성(신분증언어)" name="adultList[${status.index-1}].lastName"> 
<input type="text" placeholder="이름(신분증언어)" name="adultList[${status.index-1}].firstName"> 
</td>
</tr>

<tr>
<td class="bth">생년월일</td>
<td class="btb"> 

<select name="adultList[${status.index-1}].year"> 
<option selected="selected">년</option>
<c:forEach begin="1910" end="2020" varStatus="status1">
<option>${status1.index}</option>
</c:forEach>
</select> 

<select name="adultList[${status.index-1}].month"> 
<option selected="selected">월</option>
<c:forEach begin="01" end="12" varStatus="status2">
<option>${status2.index}</option>
</c:forEach>
</select> 

<select name="adultList[${status.index-1}].day"> 
<option selected="selected">일</option>
<c:forEach begin="01" end="31" varStatus="status3">
<option>${status3.index}</option>
</c:forEach>
</select> 
</td>
</tr>

<tr>
<td class="bth">회원번호(탑승객)</td>
<td class="btb"><input type="text" placeholder="회원번호" name="adultList[${status.index-1}].memberNum"></td>
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
<option>[10%] 독립유동자 유족증소지자</option>
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
<option>[10%] 독립유동자 유족증소지자</option>
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
<table><!-- 아이1 -->

<tr><td colspan="2">아이 ${status.index}</td> </tr>

<tr> 
<td class="bth">성별</td> 
<td class="btb">
여<input type="radio" name="childList[${status.index-1}].gender" value="여"> 
남<input type="radio" name="childList[${status.index-1}].gender" value="남">  
</td>
</tr>

<tr>
<td class="bth">이름</td> 
<td class="btb"><input type="text" placeholder="성(신분증언어)" name="childList[${status.index-1}].lastName"> 
<input type="text" placeholder="이름(신분증언어)" name="childList[${status.index-1}].firstName"> </td>
</tr>

<tr>
<td class="bth">생년월일</td>
<td class="btb"> 

<select name="childList[${status.index-1}].year"> 
<option selected="selected" >년</option>
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
<td class="btb"><input type="text" placeholder="회원번호" name="childList[${status.index-1}].memberNum"></td>
</tr>

<tr>
<td class="bth">개인할인(가는편)</td>
<td class="btb"> 
<select name="childList[${status.index-1}].depCoupon">
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
<option>[10%] 독립유동자 유족증소지자</option>
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
<select name="childList[${status.index-1}].arrCoupon">
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
<option>[10%] 독립유동자 유족증소지자</option>
<option>[30%] 독립유공자</option>
<option>[10%] 국가유공자/5.18민주유공자/월남전 참전유공자 &#38; 유공자 유족증 소지자</option>
<option>[30%] 국가유공상이자 &#38; 5.18민주유공부상자</option>
</select>
</td>
</tr>
</c:if>
</table><!-- 아이1 -->
소아/유아 동반 시, 반드시 나이를 확인할 수 있는 서류를 준비하시기 바랍니다.
<hr>
</c:forEach>
</c:if>



</div>


<div>
<div id="title">예약자 연락처 정보</div>
<div id="tmsg">예약정보수신 연락처에 작성하신 이메일로 구매 결과와 여정안내서를 전송해드립니다.</div>

<table>
<tr>
<td class="bth">이메일</td>
<td class="btb">
<input type="email" name="resEmail">
<input type="checkbox" name="resECheck"> 이메일 항공권 수신동의
</td>
</tr>

<tr>
<td class="bth">전화번호</td>
<td class="btb">
<input type="text" name="resPhone">
<input type="checkbox" name="resPCheck"> SMS 수신동의
</td>
</tr>
</table>

</div>

<hr>
<button>다음</button>

<input type="hidden" name="kind" value="${bTVO.kind}">
<input type="hidden" name="adult" value="${bTVO.adult}">
<input type="hidden" name="child" value="${bTVO.child}">

<input type="hidden" name="depFnum" value="${bTVO.depFnum}">

<c:if test="${bTVO.kind == '왕복'}">
<input type="hidden" name="arrFnum" value="${bTVO.arrFnum}">
</c:if>


</form>

</section>

<span class="check_box_group">
	<input type="checkbox" id="breakbeat" name="my_checkbox" value="breakbeat">
	<label for="breakbeat"><span>breakbeat</span></label><br>
	<input type="checkbox" id="dnb" name="my_checkbox" value="dnb">
	<label for="dnb"><span>drum&amp;bass</span></label><br>
	<input type="checkbox" id="jungle" name="my_checkbox" value="jungle">
	<label for="jungle"><span>jungle</span></label>
</span>


<script type="text/javascript">
//console log contents of checkbox (stored in array)
$(document).ready(function() {
	var selectedOptions = [];
	$(':checkbox[name="my_checkbox"]').change(function() {
		selectedOptions = [];
		$(':checkbox[name="my_checkbox"]').each(function(i, item) {
			if($(item).is(':checked')) {
				selectedOptions.push($(item).val()); 
			}
    });
   console.log("selectedOptions:", selectedOptions);
	});
});

</script>


</body>
</html>