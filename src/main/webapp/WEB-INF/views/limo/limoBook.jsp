<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/limo.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://etk.srail.co.kr/css/common.css">
<link rel="stylesheet" type="text/css" href="https://etk.srail.co.kr/css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="https://etk.srail.co.kr/css/skin/etk_kr/sub.css">
<link rel="stylesheet" type="text/css" href="https://etk.srail.co.kr/css/searchTicket.css">
<style type="text/css">
.abcd{
 background-image: url("../images/limoPic/seatAfter.png") !important;

}
</style>
</head>
<body>
	<c:import url="../template/boot.jsp"></c:import>
<!------------ 공항에서 도시로 이동할 경우  ------------>
	<div class="sub_tit_area">
		<h2>AIRLINE 리무진버스 예매</h2>
		<div class="sub_loc_area">
				<a href="../" class="home" id="container" title="본문 시작지점">홈</a>
			
				<a href="./limoBook">승차권예매(공항->도시)</a>
			
				<a href="./limoBook2">승차권예매(도시->공항)</a>
			
				<a href="../mypage/limo">나의 승차권 내역</a>
			
		</div>
	</div>
	<div class="tab tab1">
		<ul>
			<li style="width:33.333333333333336%"><a href="./limoBook" class="on"><span>[공항->도시]예매</span></a></li>
			<li style="width:33.333333333333336%"><a href="./limoBook2"><span>[도시->공항]예매</span></a></li>
			<li style="width:33.333333333333336%"><a href="../mypage/limo"><span>예매내역 조회</span></a></li>
		</ul>
	</div>
	
	<div class="contain_wrap">
		<div class="containers contain">
			<button class="add">예매추가</button>
			<button class="del">선택삭제</button>
			<button class="gobooks">예매하기</button>
	  		<div class="frm_wrap">
			   <form action="./limoBook"  method="post" class="frm">
			   <div>
			   	<div>
			    	<input type="checkbox" value="frm_wrap" class="checkbox" style="display: inline-block;">
					<input type="text" placeholder="예매자" name="id">
					<input type="date" name="limoDate" class="limoDate datepicker" id="d1">
					<select name="depLoc" class="depLoc">
						<option>출발지</option>
						<option value="인천공항" class="airLine">인천공항</option>
						<option value="김포공항" class="airLine">김포공항</option>
						<option value="양양공항" class="airLine">양양공항</option>
						<option value="청주공항" class="airLine">청주공항</option>
						<option value="대구공항" class="airLine">대구공항</option>
						<option value="무안공항" class="airLine">무안공항</option>
						<option value="여수공항" class="airLine">여수공항</option>
						<option value="김해공항" class="airLine">김해공항</option>
						<option value="울산공항" class="airLine">울산공항</option>
						<option value="제주공항" class="airLine">제주공항</option>
					</select>
					<span class="place"></span>
					<span class="place2"></span>
					<input type="text" placeholder="가격" name="limoPrice" class="price">
					<span class="price1"></span>
					<span class="price2"></span>
					<select name="limoTime" class="limoTime">
						<option>출발시간</option>
						<option value="06:00" class="time">06:00</option>
						<option value="09:00" class="time">09:00</option>
						<option value="12:00" class="time">12:00</option>
						<option value="15:00" class="time">15:00</option>
						<option value="18:00" class="time">18:00</option>
						<option value="21:00" class="time">21:00</option>
						<option value="24:00" class="time">24:00</option>
					</select>
					<input type="text" name="seat" placeholder="좌석" readonly="readonly" class="seat">
					<button type="button" class="select">좌석선택</button>
					<button type="button" class="sel" data-toggle="modal" data-target="#myModal" style="display: none;">좌석선택</button>
					<button type="button" class="books" style="display: none;">예매하기</button>
				</div>
					<div class="containers" style="display: none;">
					  	<div class="frm_wrap2">
						    <div class="here">
						    	<input type="checkbox" value="frm_wrap2" class="checkbox" style="display: inline-block;">
								<input type="text" placeholder="예매자" name="id">
								<input type="date" name="limoDate" class="limoDate2" id="d2">
								<select name="depLoc" class="depLoc2">
									<option>출발지</option>
									<option value="인천공항" class="airLine2">인천공항</option>
									<option value="김포공항" class="airLine2">김포공항</option>
									<option value="양양공항" class="airLine2">양양공항</option>
									<option value="청주공항" class="airLine2">청주공항</option>
									<option value="대구공항" class="airLine2">대구공항</option>
									<option value="무안공항" class="airLine2">무안공항</option>
									<option value="여수공항" class="airLine2">여수공항</option>
									<option value="김해공항" class="airLine2">김해공항</option>
									<option value="울산공항" class="airLine2">울산공항</option>
									<option value="제주공항" class="airLine2">제주공항</option>
								</select>
								<span class="place4"></span>
								<span class="place6"></span>
								<input type="text" placeholder="가격" name="limoPrice" class="price2">
								<select name="limoTime" class="limoTime2">
									<option>출발시간</option>
									<option value="06:00" class="time2">06:00</option>
									<option value="09:00" class="time2">09:00</option>
									<option value="12:00" class="time2">12:00</option>
									<option value="15:00" class="time2">15:00</option>
									<option value="18:00" class="time2">18:00</option>
									<option value="21:00" class="time2">21:00</option>
									<option value="24:00" class="time2">24:00</option>
								</select>
								<input type="text" name="seat" placeholder="좌석" readonly="readonly" class="seat2">
								<button type="button" class="select2">좌석선택</button>
								<button type="button" id="sel3" class="btn" data-toggle="modal" data-target="#myModal2" style="display: none;">좌석선택</button>
								<button type="button" class="bookssssssssssssss" style="display: none;">예매하기</button>
							</div>
						</div>
					  </div>
					</div>
					<div class="hereeeer"></div>
				</form>
			</div>
		</div>
	</div>
	<div style="margin-top: 50px; margin-left: 310px; margin-bottom: 10px; width: 160px; height: 20px; font-weight: bold; font-size: 20px;">· 예매시 주의사항</div>
	<div class="contain_wrap2">
		<div style="width: 1200px; height: 200px; margin: 0 auto; font-size: 18px;">
			<span style="border-left : 2px solid #d05560; font-size: 15px; line-height: 40px;">&nbsp;&nbsp;AIRLINE 리무진 버스 예매는 편도 2지역까지 예매가능하며, 1인당 최대 예매 티켓은 5장으로 제한하고 있습니다. 예매시 참고하시기 바랍니다.</span><br>
			<span style="border-left : 2px solid #d05560; font-size: 15px; line-height: 40px;">&nbsp;&nbsp;열차 출발시각 이후에는 역에서 환불하셔야 합니다. (단, 스마트폰승차권의 경우 앱어플을 통해 열차 출발 후 5분 이내에 환불 가능합니다.)</span><br>
			<span style="border-left : 2px solid #d05560; font-size: 15px; line-height: 40px;">&nbsp;&nbsp;승차권에 표기된 도착역 도착시각 이후에는 환불 하실 수 없습니다.</span><br>
			<span style="border-left : 2px solid #d05560; font-size: 15px; line-height: 40px;">&nbsp;&nbsp;구입한 승차권을 환불하는 경우 환불시점에 따른 위약금이 발생합니다.</span><br>
			<span style="border-left : 2px solid #d05560; font-size: 15px; line-height: 40px;">&nbsp;&nbsp;승차권을 분실하는 경우 승차권에 대한 운송·변경 환불을 청구 할 수 없습니다.</span><br>
		</div>	
	</div>
	

	<!------------ Modal 시작 : 리무진 버스 예매 ------------>
	<div class="container">

		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">리무진 버스 예매</h4>
		        </div>
		        <div class="modal-body">
			        <div class="modal_wrap">
						<div class="limo_wrap" >
							<div class="limo_seat">
								<c:forEach begin="1" end="45" var="limo" varStatus="vo">
									<c:choose>
										<c:when test="${vo.current%4 eq 2 && vo.current lt 40}">
											<label class="limo" title="${vo.index}" style="margin-right: 43px; cursor: pointer;">
												<input type="checkbox" name="seat" class="lim" id="${vo.current}" value="${vo.current}" style="display: none;">		
											</label>
										</c:when>
										<c:otherwise>
											<label class="limo" title="${vo.index}" style="cursor: pointer;">
												<input type="checkbox" name="seat" class="lim" id="${vo.current}" value="${vo.current}" style="display: none;">
											</label>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${vo.current%4 eq 0 && vo.current lt 41}">
												<br>
										</c:when>
									</c:choose>
								</c:forEach>
							</div>
						</div>
						<div class="select_limoDate">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">예매일</div>
							<div class="select_limoDate_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_depLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발지</div>
							<div class="select_depLoc_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_arrLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">도착지</div>
							<div class="select_arrLoc_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_person">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">인원</div>
							<div class="select_person_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_price">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">이용가격</div>
							<div class="select_price_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_limoTime">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발시간</div>
							<div class="select_limoTime_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_seat">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">좌석</div>
							<div class="select_seat_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
					</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default complete">선택완료</button>
		          <button type="button" class="btn btn-default com2" data-dismiss="modal" style="display: none;">선택완료</button>
		          <button type="button" class="btn btn-default" data-dismiss="modal">창닫기</button>
		        </div>
		      </div>
		    </div>
		  </div>
</div>


<!------------------------------------------------ 편도 2회 예매 ------------------------------------------------------>

	

	<!------------ Modal 시작 : 리무진 버스 예매 ------------>
	<div class="container">

		  <div class="modal fade" id="myModal2" role="dialog">
		    <div class="modal-dialog">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">리무진 버스 예매</h4>
		        </div>
		        <div class="modal-body">
			        <div class="modal_wrap">
						<div class="limo_wrap" >
							<div class="limo_seat">
								<c:forEach begin="1" end="45" var="limo" varStatus="vo">
									<c:choose>
										<c:when test="${vo.current%4 eq 2 && vo.current lt 40}">
											<label class="limo" title="${vo.index}" style="margin-right: 43px; cursor: pointer;">
												<input type="checkbox" name="seat" class="lim2" id="two${vo.current}" value="${vo.current}" style="display: none;">		
											</label>
										</c:when>
										<c:otherwise>
											<label class="limo" title="${vo.index}" style="cursor: pointer;">
												<input type="checkbox" name="seat" class="lim2" id="two${vo.current}" value="${vo.current}" style="display: none;">
											</label>
										</c:otherwise>
										
									</c:choose>
									<c:choose>
										<c:when test="${vo.current%4 eq 0 && vo.current lt 41}">
												<br>
										</c:when>
									</c:choose>
								</c:forEach>
							</div>
						</div>
						<div class="select_limoDate">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">예매일</div>
							<div class="select_limoDate_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_depLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발지</div>
							<div class="select_depLoc_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_arrLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">도착지</div>
							<div class="select_arrLoc_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_person">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">인원</div>
							<div class="select_person_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_price">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">이용가격</div>
							<div class="select_price_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_limoTime">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발시간</div>
							<div class="select_limoTime_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_seat">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">좌석</div>
							<div class="select_seat_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
					</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default complete2">선택완료</button>
		          <button type="button" class="btn btn-default com2" data-dismiss="modal" style="display: none;">선택완료</button>
		          <button type="button" class="btn btn-default" data-dismiss="modal">창닫기</button>
		        </div>
		      </div>
		    </div>
		  </div>
</div>

<script src="../js/test.js"></script>
</body>
</html>