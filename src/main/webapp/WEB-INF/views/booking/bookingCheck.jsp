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

<h2>예매번호 : ${bVO.bookingNum}</h2>


<c:if test="${not empty alist}">
<hr>
<h1>성인 ${fn:length(alist)}</h1>
<table>
<tr>
<td>이름</td>
<td>왕복/편도</td>
<td>항공사</td>
<td>편명</td>
<td>출발지</td>
<td>도착지</td>
<td>원가</td>
<td>쿠폰명</td>
<td>할인내역</td>
<td>유류할증료</td>
<td>공항이용료</td>
<td colspan="2">총 금액</td>
</tr>
<c:forEach items="${alist}" var="adult">
<tr>
<td>${adult.name}</td>
<td>${adult.kind}</td>
<td>${adult.depInfo.airlineNm}</td>
<td>${adult.depInfo.vihicleId}</td>
<td>${adult.depInfo.depAirportNm}</td>
<td>${adult.depInfo.arrAirportNm}</td>
<td>${adult.depPriceVO.price}원</td>
<td>${adult.depPriceVO.couName}</td>
<td>- ${adult.depPriceVO.couponDis}</td>
<td>+ ${adult.depPriceVO.fuelTax}</td>
<td>+ ${adult.depPriceVO.airportTax}</td>
<td>=</td>
<td class="price">${adult.depPriceVO.totalPrice}</td>
</tr>

<c:if test="${adult.kind == '왕복'}">
<tr>
<td>${adult.name}</td>
<td>${adult.kind}</td>
<td>${adult.arrInfo.airlineNm}</td>
<td>${adult.arrInfo.vihicleId}</td>
<td>${adult.arrInfo.depAirportNm}</td>
<td>${adult.arrInfo.arrAirportNm}</td>
<td>${adult.arrPriceVO.price}원</td>
<td>${adult.arrPriceVO.couName}</td>
<td>- ${adult.arrPriceVO.couponDis}</td>
<td>+ ${adult.arrPriceVO.fuelTax}</td>
<td>+ ${adult.arrPriceVO.airportTax}</td>
<td>=</td>
<td class="price">${adult.arrPriceVO.totalPrice}</td>
</tr>
</c:if>
</c:forEach>
</table>
</c:if>


<c:if test="${not empty clist}">
<hr>
<h1>아이  ${fn:length(clist)}</h1>
<table>
<tr>
<td>이름</td>
<td>왕복/편도</td>
<td>항공사</td>
<td>편명</td>
<td>출발지</td>
<td>도착지</td>
<td>원가</td>
<td>쿠폰명</td>
<td>할인내역</td>
<td>유류할증료</td>
<td>공항이용료</td>
<td colspan="2">총 금액</td>
</tr>
<c:forEach items="${clist}" var="child">
<tr>
<td>${child.name}</td>
<td>${child.kind}</td>
<td>${child.depInfo.airlineNm}</td>
<td>${child.depInfo.vihicleId}</td>
<td>${child.depInfo.depAirportNm}</td>
<td>${child.depInfo.arrAirportNm}</td>
<td>${child.depPriceVO.price}원</td>
<td>${child.depPriceVO.couName}</td>
<td>- ${child.depPriceVO.couponDis}</td>
<td>+ ${child.depPriceVO.fuelTax}</td>
<td>+ ${child.depPriceVO.airportTax}</td>
<td>=</td>
<td class="price">${child.depPriceVO.totalPrice}</td>
</tr>

<c:if test="${child.kind == '왕복'}">
<tr>
<td>${child.name}</td>
<td>${child.kind}</td>
<td>${child.arrInfo.airlineNm}</td>
<td>${child.arrInfo.vihicleId}</td>
<td>${child.arrInfo.depAirportNm}</td>
<td>${child.arrInfo.arrAirportNm}</td>
<td>${child.arrPriceVO.price}원</td>
<td>${child.arrPriceVO.couName}</td>
<td>- ${child.arrPriceVO.couponDis}</td>
<td>+ ${child.arrPriceVO.fuelTax}</td>
<td>+ ${child.arrPriceVO.airportTax}</td>
<td>=</td>
<td class="price">${child.arrPriceVO.totalPrice}</td>
</tr>
</c:if>
</c:forEach>
</table>
</c:if>


<div>
</div>

<hr>

<div id="priceDiv">
<table>
<tr><td>항공 총 결제금액 : </td><td class="tprice"></td></tr>
</table>
</div>

<hr>


<button class="btn btn-primary" id="btn">결제</button>

</section>








<button id="btn">결제</button>

<script type="text/javascript">

var r = 0;

$('.price').each(function (index, item) { 
	console.log($(this).text()); 
	var t = Number($(this).text());
	r = r + t;
	console.log(r);
});
	$('.tprice').html(r);




$('#btn').click(function(){
	window.open("../imPay/imPayList?name=사과&amount="+r, "이니시스",  "width=825px, height=600px");
});

</script>


</body>
</html>