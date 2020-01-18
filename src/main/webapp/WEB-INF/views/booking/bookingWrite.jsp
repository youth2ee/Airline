<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/booking/bookingWrite.css" rel="stylesheet">
</head>
<body>
booking write
<header>
header 
</header>

<div id="top">
<div id="topWrap">
<div id="top1">1
<h5>출발 : ${bTVO.depInfo.depAirportNm}</h5>
<h5>도착 : ${bTVO.depInfo.arrAirportNm}</h5>
<c:if test="${bTVO.kind == 1}">
편도
</c:if>
</div>
<div id="top2">2
<h5>출발 : ${bTVO.depInfo.arrAirportNm}</h5>
<h5>도착 : ${bTVO.depInfo.depAirportNm}</h5>
<c:if test="${bTVO.kind == 2}">
왕복
</c:if>
</div>
<div id="top3">3 
<h3>성인 : ${bTVO.adult}명</h3>
<h3>아동 : ${bTVO.child}명</h3>
</div>
<div id="top4">4 </div>
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
<div id="title">운임 확인</div>
<div id="tmsg">운임이 정상적으로 입력되었는지 최종확인 후, 운임 조건 및 규정을 확인하시기 바랍니다.</div>


<div> 
<c:if test="${bTVO.kind == 1}">
<div><h1>편도</h1></div>
<hr>
<div><h1>${bTVO.depInfo.depAirportNm}&#60;-&#62;${bTVO.depInfo.arrAirportNm}</h1></div>
<div>
${bTVO.depInfo.depPlandTime}
${bTVO.depInfo.vihicleId}
${bTVO.depInfo.airlineNm}
${bTVO.depInfo.economyCharge}원
</div>
<hr>
</c:if>

<c:if test="${bTVO.kind == 2}">
<div><h1>왕복</h1></div>
<hr>
<div><h1>${bTVO.depInfo.depAirportNm}&#60;-&#62;${bTVO.depInfo.arrAirportNm}</h1></div>
<div>
${bTVO.depInfo.depPlandTime}
${bTVO.depInfo.vihicleId}
${bTVO.depInfo.airlineNm}
${bTVO.depInfo.economyCharge}원
</div>
<div><h1>${bTVO.arrInfo.depAirportNm}&#60;-&#62;${bTVO.arrInfo.arrAirportNm}</h1></div>
<div>
${bTVO.arrInfo.depPlandTime}
${bTVO.arrInfo.vihicleId}
${bTVO.arrInfo.airlineNm}
${bTVO.arrInfo.economyCharge}원
</div>
<hr>
</c:if>

</div>


<form action="./bookingWrite" method="post">
<div> 
<h1>탑승자 정보</h1>
<hr>

<c:if test="${bTVO.adult != 0}">
<c:forEach begin="1" end="${bTVO.adult}" varStatus="status"> 
<table><!-- 성인1 -->
<tr><td colspan="2">성인 ${status.index}</td> </tr>

<tr> 
<td>성별</td> 
<td>
여<input type="radio" name="adultList[${status.index-1}].gender" value="여"> 
남<input type="radio" name="adultList[${status.index-1}].gender" value="남">  
</td>
</tr>

<tr>
<td>이름</td> 
<td>
<input type="text" placeholder="성(신분증언어)" name="adultList[${status.index-1}].lastName"> 
<input type="text" placeholder="이름(신분증언어)" name="adultList[${status.index-1}].firstName"> 
</td>
</tr>

<tr>
<td>생년월일</td>
<td> 

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
<td>회원번호(탑승객)</td>
<td><input type="text" placeholder="회원번호" name="adultList[${status.index-1}].memberNum"></td>
</tr>

<tr>
<td>개인할인(가는편)</td>
<td> 
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

<c:if test="${bTVO.kind == 2}">

<tr>
<td>개인할인(오는편)</td>
<td>
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
<td>성별</td> 
<td>
여<input type="radio" name="childList[${status.index-1}].gender" value="여"> 
남<input type="radio" name="childList[${status.index-1}].gender" value="남">  
</td>
</tr>

<tr>
<td>이름</td> 
<td><input type="text" placeholder="성(신분증언어)" name="childList[${status.index-1}].lastName"> 
<input type="text" placeholder="이름(신분증언어)" name="childList[${status.index-1}].firstName"> </td>
</tr>

<tr>
<td>생년월일</td>
<td> 

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
<td>회원번호(탑승객)</td>
<td><input type="text" placeholder="회원번호" name="childList[${status.index-1}].memberNum"></td>
</tr>

<tr>
<td>개인할인(가는편)</td>
<td> 
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

<c:if test="${bTVO.child == 2}">

<tr>
<td>개인할인(오는편)</td>
<td>
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
<hr>
</c:forEach>
</c:if>



</div>


<div>
예약자 연락처 정보

<table>
<tr>
<td>이메일</td>
<td>
<input type="email" name="resEmail">
<input type="checkbox" name="resECheck"> 이메일 항공권 수신동의
</td>
</tr>

<tr>
<td>전화번호</td>
<td>
<input type="text" name="resPhone">
<input type="checkbox" name="resPCheck"> SMS 수신동의
</td>
</tr>
</table>

</div>

<hr>
<button>다음</button>

<input type="hidden" name="adult" value="${bTVO.adult}">
<input type="hidden" name="child" value="${bTVO.child}">

<input type="hidden" name="depFnum" value="${bTVO.depFnum}">
<%-- <input type="hidden" name="bTVOList[0].depLoc" value="${dflightInfo.depAirportNm}">
<input type="hidden" name="bTVOList[0].arrLoc" value="${dflightInfo.arrAirportNm}">

<input type="hidden" name="bTVOList[0].depDate" value="${dflightInfo.depPlandTime}">
<input type="hidden" name="bTVOList[0].arrDate" value="${dflightInfo.arrPlandTime}">

<input type="hidden" name="bTVOList[0].vihicleId" value="${dflightInfo.vihicleId}">
<input type="hidden" name="bTVOList[0].airline" value="${dflightInfo.airlineNm}">

<input type="hidden" name="bTVOList[0].price" value="${dflightInfo.economyCharge}">
<input type="hidden" name="bTVOList[0].flightTime" value="${dflightInfo.flightTime}">
 --%>

<c:if test="${bTVO.kind == 2}">
<!--  -->
<input type="hidden" name="arrFnum" value="${bTVO.arrFnum}">
<%-- <input type="hidden" name="bTVOList[1].depLoc" value="${aflightInfo.depAirportNm}">
<input type="hidden" name="bTVOList[1].arrLoc" value="${aflightInfo.arrAirportNm}">

<input type="hidden" name="bTVOList[1].depDate" value="${aflightInfo.depPlandTime}">
<input type="hidden" name="bTVOList[1].arrDate" value="${aflightInfo.arrPlandTime}">

<input type="hidden" name="bTVOList[1].vihicleId" value="${aflightInfo.vihicleId}">
<input type="hidden" name="bTVOList[1].airline" value="${aflightInfo.airlineNm}">

<input type="hidden" name="bTVOList[1].price" value="${aflightInfo.economyCharge}">
<input type="hidden" name="bTVOList[1].flightTime" value="${aflightInfo.flightTime}"> --%>
</c:if>


</form>

</section>


</body>
</html>