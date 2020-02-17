<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVERY AIR / Booking</title>
<link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/booking/bookingCheck.css" rel="stylesheet">
<c:import url="../template/boot.jsp" />
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
<i class="fa fa-plane" style="font-size:40px;color:white; padding-top: 20px;"></i><br>
${bVO.depInfo.depAirportNm} <i class='fas fa-angle-right' style='font-size:10px;'></i> ${bVO.depInfo.arrAirportNm} <br>
${bVO.depInfo.vihicleId} ${bVO.depInfo.airlineNm}<br>

</div>

<div id="top2">
<c:if test="${bVO.kind == '왕복'}">
<i class="fa fa-plane" style="font-size:40px;color:white; padding-top: 20px;"></i><br>
${bVO.depInfo.arrAirportNm} <i class='fas fa-angle-right' style='font-size:10px;'></i> ${bVO.depInfo.depAirportNm}  <br>
${bVO.arrInfo.vihicleId} ${bVO.arrInfo.airlineNm}<br>
</c:if>
</div>

<div id="top3"> 
<i class="material-icons" style="font-size:40px; color: white; padding-top: 20px;">person</i> 
<c:if test="${fn:length(alist) != 0}">
<h5>성인 : ${fn:length(alist)}명</h5>
</c:if>
<c:if test="${fn:length(clist) != 0}">
<h5>아동 : ${fn:length(clist)}명</h5>
</c:if>

</div>

<div id="top4">
<i class='fas fa-credit-card' style="font-size:30px; color: white; padding-top: 24px;"></i>
<h5>가는편 : <fmt:formatNumber value="${bVO.depInfo.economyCharge}" pattern="#,###,###"/>원</h5>
<c:if test="${bVO.kind == '왕복'}">
<h5>오는편 : <fmt:formatNumber value="${bVO.arrInfo.economyCharge}" pattern="#,###,###"/>원</h5>
</c:if>
</div>

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
<tr class="bth">
<td>이름</td>
<td>왕복/편도</td>
<td>항공사</td>
<td>편명</td>
<td>출발지</td>
<td>도착지</td>
<td>원가</td>
<td class="cnmh">쿠폰명</td>
<td>할인내역</td>
<td>유류할증료</td>
<td>공항이용료</td>
<td colspan="2">총 금액</td>
</tr>
<c:forEach items="${alist}" var="adult">
<tr class="btb">
<td>${adult.name}</td>
<td>${adult.kind}</td>
<td>${adult.depInfo.airlineNm}</td>
<td>${adult.depInfo.vihicleId}</td>
<td>${adult.depInfo.depAirportNm}</td>
<td>${adult.depInfo.arrAirportNm}</td>
<td><fmt:formatNumber value="${adult.depPriceVO.price}" pattern="#,###,###"/>원</td>
<td class="cnm">${adult.depPriceVO.couName}</td>
<td>- <fmt:formatNumber value="${adult.depPriceVO.couponDis}" pattern="#,###,###"/>원</td>
<td>+ <fmt:formatNumber value="${adult.depPriceVO.fuelTax}" pattern="#,###,###"/>원</td>
<td>+ <fmt:formatNumber value="${adult.depPriceVO.airportTax}" pattern="#,###,###"/>원</td>
<td>=</td>
<td class="price"><fmt:formatNumber value="${adult.depPriceVO.totalPrice}" pattern="#,###,###"/>원</td>
</tr>

<c:if test="${adult.kind == '왕복'}">
<tr class="btb">
<td>${adult.name}</td>
<td>${adult.kind}</td>
<td>${adult.arrInfo.airlineNm}</td>
<td>${adult.arrInfo.vihicleId}</td>
<td>${adult.arrInfo.depAirportNm}</td>
<td>${adult.arrInfo.arrAirportNm}</td>
<td><fmt:formatNumber value="${adult.arrPriceVO.price}" pattern="#,###,###"/>원</td>
<td class="cnm">${adult.arrPriceVO.couName}</td>
<td>- <fmt:formatNumber value="${adult.arrPriceVO.couponDis}" pattern="#,###,###"/>원</td>
<td>+ <fmt:formatNumber value="${adult.arrPriceVO.fuelTax}" pattern="#,###,###"/>원</td>
<td>+ <fmt:formatNumber value="${adult.arrPriceVO.airportTax}" pattern="#,###,###"/>원</td>
<td>=</td>
<td class="price"><fmt:formatNumber value="${adult.arrPriceVO.totalPrice}" pattern="#,###,###"/>원</td>
</tr>
</c:if>
</c:forEach>
</table>
</c:if>


<c:if test="${not empty clist}">
<hr>
<h1>아이  ${fn:length(clist)}</h1>
<table>
<tr class="bth">
<td>이름</td>
<td>왕복/편도</td>
<td>항공사</td>
<td>편명</td>
<td>출발지</td>
<td>도착지</td>
<td>원가</td>
<td class="cnmh">쿠폰명</td>
<td>할인내역</td>
<td>유류할증료</td>
<td>공항이용료</td>
<td colspan="2">총 금액</td>
</tr>
<c:forEach items="${clist}" var="child">
<tr class="btb">
<td>${child.name}</td>
<td>${child.kind}</td>
<td>${child.depInfo.airlineNm}</td>
<td>${child.depInfo.vihicleId}</td>
<td>${child.depInfo.depAirportNm}</td>
<td>${child.depInfo.arrAirportNm}</td>
<td><fmt:formatNumber value="${child.depPriceVO.price}" pattern="#,###,###"/>원</td>
<td class="cnm">${child.depPriceVO.couName}</td>
<td>- <fmt:formatNumber value="${child.depPriceVO.couponDis}" pattern="#,###,###"/>원</td>
<td>+ <fmt:formatNumber value="${child.depPriceVO.fuelTax}" pattern="#,###,###"/>원</td>
<td>+ <fmt:formatNumber value="${child.depPriceVO.airportTax}" pattern="#,###,###"/>원</td>
<td>=</td>
<td class="price"><fmt:formatNumber value="${child.depPriceVO.totalPrice}" pattern="#,###,###"/>원</td>
</tr>

<c:if test="${child.kind == '왕복'}">
<tr class="btb">
<td>${child.name}</td>
<td>${child.kind}</td>
<td>${child.arrInfo.airlineNm}</td>
<td>${child.arrInfo.vihicleId}</td>
<td>${child.arrInfo.depAirportNm}</td>
<td>${child.arrInfo.arrAirportNm}</td>
<td><fmt:formatNumber value="${child.arrPriceVO.price}" pattern="#,###,###"/>원</td>
<td class="cnm">${child.arrPriceVO.couName}</td>
<td>- <fmt:formatNumber value="${child.arrPriceVO.couponDis}" pattern="#,###,###"/>원</td>
<td>+ <fmt:formatNumber value="${child.arrPriceVO.fuelTax}" pattern="#,###,###"/>원</td>
<td>+ <fmt:formatNumber value="${child.arrPriceVO.airportTax}" pattern="#,###,###"/>원</td>
<td>=</td>
<td class="price"><fmt:formatNumber value="${child.arrPriceVO.totalPrice}" pattern="#,###,###"/>원</td>
</tr>
</c:if>
</c:forEach>
</table>
</c:if>


<div>
</div>

<hr>

<div style="padding-bottom: 28px;"> 
<div style="padding-bottom: 36px;">
<div style="float: left; font-size: 20px; padding-right: 50px; width: 350px; text-align: right;">${member.id}님의 마일리지 :</div> 
<div style="float: left; font-size: 20px; width: 108px; text-align: right; ">${member.mileage}점</div>
</div>

<div style="clear: both;">
<div style="float: left; font-size: 20px; padding-right: 50px;  width: 350px; text-align: right;">사용할 마일리지 :</div>
<div style="float: left; font-size: 20px;"><input type="text" id="muse" value="0" style="width: 90px;height: 26px;font-size: 20px;margin-top: 3px;">점</div>
<div style="float: left; padding-left: 19px; margin-top: 3px;"> 
<button id="use" style="margin-right: 10px;">사용</button> 
<button id="useAll">전체 사용</button>
</div>
</div>

</div>

<hr style="clear: both;">

<div id="priceDiv">
<table id="tpriceTb">
<tr>
<td style="text-align: right;">마일리지 할인 :</td>
<td class="milCheck">0</td>
</tr>

<tr>
<td style="text-align: right; ">항공 총 결제금액 : </td>
<td class="tprice"></td>
</tr>
</table>
</div>

<hr>

<button id="btn">결제</button>

</section>





	<script type="text/javascript">
		var r = 0;

		$('.price').each(function(index, item) {
			console.log($(this).text());
			var rt = $(this).text();
			rt = rt.replace(',', '');
			rt = rt.replace('원', '');
			console.log(rt);

			var t = Number(rt);
			r = r + t;
		});

		
		var mil = 0;
		function addComma(num) {
			var regexp = /\B(?=(\d{3})+(?!\d))/g;
			return num.toString().replace(regexp, ',');
		}


		$('.tprice').html(' ' + addComma(r) + '원');
		
		$('#use').click(function(){
			mil = $('#muse').val();

			if(mil > ${member.mileage}){
				alert('사용가능한 마일리지를 입력해주세요.');
				$('#muse').val(0);
				mil = 0;
			}
			
		    var regNumber = /^[0-9]*$/;
		    if(!regNumber.test(mil)){
		        alert('숫자만 입력하세요');
		        $('#muse').val(0);
		        mil = 0;
		    }
						
			$('.milCheck').text(mil);
			mil = Number(mil);
			var rm = r - mil;
			$('.tprice').html(' ' + addComma(rm) + '원');
		});
		

		$('#useAll').click(function(){
			$('#muse').val(${member.mileage});
			mil = $('#muse').val();
			$('.milCheck').text(mil);
			mil = Number(mil);
			var rm = r - mil;
			$('.tprice').html(' ' + addComma(rm) + '원');
		});


		var numList = [];
		numList = ${numList};

		var nlist = '';

		$.each(numList, function(index, item) {
			nlist = nlist + ',' + item;
		}); 

	

		$('#btn').click(function() {

			var rr = $('.tprice').text();
			rr = rr.replace('원', '');
			rr = rr.replace(',' , '');

			
					/* 	window.open("../imPay/imPayList?name=항공권&amount="+r, "이니시스",  "width=825px, height=600px"); */
					window.open("../imPay/imPayList?name=항공권&amount="+100+"&mil="+mil+"&bpnum="+nlist+"&ramount="+rr+"&milplus="+${milplus}+"&bnum="+'${bVO.bookingNum}',"이니시스", "width=825px, height=600px");
				});
	</script>


</body>
</html>