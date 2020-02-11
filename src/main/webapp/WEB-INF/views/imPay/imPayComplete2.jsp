<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<html>
<head>
<link href="../resources/css/limo.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://etk.srail.co.kr/css/common.css">
<link rel="stylesheet" type="text/css" href="https://etk.srail.co.kr/css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="https://etk.srail.co.kr/css/skin/etk_kr/sub.css">
<link rel="stylesheet" type="text/css" href="https://etk.srail.co.kr/css/searchTicket.css">
<link rel="stylesheet" href="../resources/css/park/parkRes.css">
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">
<link href="../resources/css/mypage/limo.css" rel="stylesheet">
<style type="text/css">
.menu_wrap_Right{
	padding-top: 25px;
}
.material-icons{
	padding-top: 0px;
}
.contain_wrap{
	height: 650px;
}
</style>
</head>
<body>
<header><c:import url="../layout/header.jsp"></c:import></header>
	<div class="sub_tit_area">
		<h2>AIRLINE 리무진 버스 결제를 해주셔서 감사합니다.</h2>
	</div>
	<div class="contain_wrap">
		<div class="section">
				<div class="t_center" style="margin:10px;font-size:28px;font-weight:bold;color:#a70737;">주차 예약이 완료되었습니다.</div>
				<h3 class="stitle01"><span>예약하신 내용은 이메일로도 확인하실 수 있습니다.</span></h3>
		<c:forEach items="${vo}" var="book">
					<table class="table01">
						<caption>예약 일시, 주차예상비용</caption>
						<colgroup>
							<col style="width:25%">
							<col style="width:20%">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" rowspan="3">예약 일시 <br>(Dates and times)</th>
								<td class="t_center fc_gray02">버스 탑승일</td>
								<td class="fc_gray01"><div id="entvhclResveDt">${book.limoDate}</div></td>
							</tr>
							<tr>
								<td class="t_center fc_gray02">버스 시간</td>
								<td class="fc_gray01"><div id="lvvhclResveDt">${book.limoTime}</div></td>
							</tr>
							<tr>
								<td class="t_center fc_gray02">좌석</td>
								<td class="fc_gray01"><div id="lvvhclResveDt">${book.seat}</div></td>
							</tr>
							<tr>
								<th scope="row" rowspan="3">버스안내 <br>(Limo)</th>
								<td class="t_center fc_gray02">출발지</td>
								<td class="fc_gray01"><div id="airportLotArea">${book.depLoc}</div></td>
							</tr>
							<tr>
								<td class="t_center fc_gray02">도착지</td>
								<td class="fc_gray01"><div id="acPlate">${book.arrLoc}</div></td>
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
								<td class="t_center fc_gray02">결제금액</td>
								<td class="fc_gray01"><div id="acCttpc">${book.limoPrice}원</div></td>
							</tr>
<!-- 							<tr>
								<td class="t_center fc_gray02">이메일 주소</td>
								<td class="fc_gray01"><div id="acEmailAddress">pyj9088@gmail.com</div></td>
							</tr> -->
						</tbody>
					</table>
				</c:forEach>
				</div>
	</div>
	
</body>
</html>


<script>
$('body').on('click','#btn', function(){
	location.href="../mypage/limo";
});

$(".material-icons").css("padding-top", 0);
$("#sbtn").css("padding-top", 3);
$(".fa-comment-dots").css("padding-top", 1);

$(".contain_wrap").css("border", "none");

</script>

