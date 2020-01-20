<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/booking/bookingCheck.css" rel="stylesheet">
<c:import url="../template/boot.jsp" />
</head>
<body>

가격 확인하고
결제 넘어가기 직전
<header>
header 
</header>

<div id="top">
<div id="topWrap">
<div id="top1">1 </div>
<div id="top2">2 </div>
<div id="top3">3 </div>
<div id="top4">4 </div>
</div>
</div>

<div id="noti">
<div id="notiWrap">
<table>
<tr><td>반드시 운임 조건 및 규정을 확인 후 동의하셔야 결제가 가능합니다. </td></tr>
<tr><td>선택하신 운임은 예약과 동시에 구매하셔야 하며, 구매하지 않으신 경우 예약이 취소됩니다. </td></tr>
</table>
</div>
</div>


<section>
<div id="title">운임 가격</div>
<div id="tmsg">운임이 정상적으로 입력되었는지 최종확인 후, 운임 조건 및 규정을 확인하시기 바랍니다.</div>

<table>
<tr>
<td>탑승객</td>
<td>왕복/편도</td>
<td>이름</td>
<td>원가</td>
<td>쿠폰명</td>
<td>할인내역</td>
<td>유류할증료</td>
<td>공항이용료</td>
<td>총 금액</td>
</tr>
<c:forEach items="${alist}" var="adult">
<tr>
<td>성인</td>
<c:if test="${adult.kind}">
<td></td>
</c:if>
<td>${adult.name}</td>
<td>${adult.depPriceVO.price}</td>
<td>${adult.depPriceVO.couName}</td>
<td>- ${adult.depPriceVO.couponDis}</td>
<td>+ ${adult.depPriceVO.fuelTax}</td>
<td>+ ${adult.depPriceVO.airportTax}</td>
<td>= ${adult.depPriceVO.totalPrice}</td>
</tr>

${adult.depPriceVO.couName}
${adult.depPriceVO.price}
- ${adult.depPriceVO.couponDis}
+ ${adult.depPriceVO.fuelTax}
+ ${adult.depPriceVO.airportTax}
= ${adult.depPriceVO.totalPrice}
<br>
${adult.arrPriceVO.couName}
${adult.arrPriceVO.price}
- ${adult.arrPriceVO.couponDis}
+ ${adult.arrPriceVO.fuelTax}
+ ${adult.arrPriceVO.airportTax}
= ${adult.arrPriceVO.totalPrice}

</c:forEach>
</table>

<div>

<table>
<c:if test="${not empty customVO.adultsVOList}">
<tr><td><h1>성인 : ${fn:length(customVO.adultsVOList)}</h1></td></tr>

<c:forEach items="${customVO.adultsVOList}"  var="adult" varStatus="status">
<tr><td>왕복인가요:${fn:length(adult.flightDataVO)}</td></tr>

<tr><td>이름 : ${adult.firstName} ${adult.lastName}</td></tr>
<tr><td>회원번호 : ${adult.memberNum}</td></tr>
<tr><td>*********************</td></tr>

<tr><td> 
<c:forEach items="${adult.flightDataVO}" var="finfo">
<table style="background-color: gray; float: left;">
<tr><td class="flightID">${finfo.vihicleId}</td></tr>
<tr><td>${finfo.airlineNm}</td></tr>
<tr><td>${finfo.depPlandTime}</td></tr>
<tr><td>${finfo.depAirportNm}</td></tr>
<tr><td>${finfo.arrPlandTime}</td></tr>
<tr><td>${finfo.arrAirportNm}</td></tr>
<tr><td>${finfo.flightTime}</td></tr>
<tr><td>${finfo.economyCharge}</td></tr>
<tr><td>*********************</td></tr>

<tr><td>${finfo.priceVO.realPrice}원</td></tr>
<tr><td>${finfo.priceVO.cname}</td></tr>
<tr><td>${finfo.priceVO.cprice}원</td></tr>
<tr><td class="price">${finfo.priceVO.ctotal}원</td></tr>
<tr><td>*********************</td></tr>
</table>
</c:forEach>
</td></tr>


</c:forEach>
</c:if>
</table>


<table>
<c:if test="${not empty customVO.childrenVOList}">
<tr><td><h1>아이 : ${fn:length(customVO.childrenVOList)}</h1></td></tr>
<c:forEach items="${customVO.childrenVOList}"  var="children">
<tr><td>왕복인가요:${fn:length(children.flightDataVO)}</td></tr>

<tr><td>이름 : ${children.firstName} ${children.lastName}</td></tr>
<tr><td>회원번호 : ${children.memberNum}</td></tr>
<tr><td>*********************</td></tr>

<tr><td> 
<c:forEach items="${children.flightDataVO}" var="finfoc">
<table style="background-color: gray; float: left;">
<tr><td class="flightID">${finfoc.vihicleId}</td></tr>
<tr><td>${finfoc.airlineNm}</td></tr>
<tr><td>${finfoc.depPlandTime}</td></tr>
<tr><td>${finfoc.depAirportNm}</td></tr>
<tr><td>${finfoc.arrPlandTime}</td></tr>
<tr><td>${finfoc.arrAirportNm}</td></tr>
<tr><td>${finfoc.flightTime}</td></tr>
<tr><td>${finfoc.economyCharge}</td></tr>
<tr><td>*********************</td></tr>

<tr><td>${finfoc.priceVO.realPrice}원</td></tr>
<tr><td>${finfoc.priceVO.cname}</td></tr>
<tr><td>${finfoc.priceVO.cprice}원</td></tr>
<tr><td class="price">${finfoc.priceVO.ctotal}원</td></tr>
<tr><td>*********************</td></tr>
</table>
</c:forEach>
</td></tr>



</c:forEach>
</c:if>
</table>

</div>

<hr>

<div id="priceDiv">
<h1>가격</h1>

</div>

<div id="flightDiv">
<h1>편명</h1>

</div>

</section>








<button id="btn">결제</button>

<script type="text/javascript">
$('.price').each(function (index, item) { 
	console.log(item); 
	var r = item.split("원");
	$('#priceDiv').append(r);
});


$('.flightID').each(function (index, item) { 
	console.log(item); 
	item = item.split("원");
	$('#flightDiv').append(item);

	
});


$('#btn').click(function(){
	window.open("../imPay/imPayList?name=사과&amount=1000", "이니시스",  "width=825px,height=600px");
});
</script>


</body>
</html>