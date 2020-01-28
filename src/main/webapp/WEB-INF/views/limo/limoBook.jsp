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
<style type="text/css">
.abcd{
 background-image: url("../images/limoPic/seatAfter.png") !important;

}

</style>
</head>
<body>
	<c:import url="../template/boot.jsp"></c:import>
<!------------ 공항에서 도시로 이동할 경우  ------------>
	<h1>리무진 예약</h1>
	<div class="containers contain">
	  <button type="button" class="btn btn-info">공항 -> 도시</button>
	  <button type="button" class="btn btn-info">도시 -> 공항</button>
	  <button class="btn btn-info add">추가</button>
	  <button class="btn btn-danger del">삭제</button>
	  <button class="btn btn-warning gobooks">예매하기</button>
  		<div class="frm_wrap">
		   <form action="./limoBook"  method="post" class="frm">
		   <div>
		   	<div>
		    	<input type="checkbox" value="frm_wrap" class="checkbox" style="display: inline-block;">
				<input type="text" placeholder="id" name="id">
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
				<button type="button" class="btn btn-info btn-lg select">조회하기</button>
				<button type="button" class="btn btn-info btn-lg sel" data-toggle="modal" data-target="#myModal" style="display: none;">조회하기</button>
				<button type="button" class="books" style="display: none;">예매하기</button>
			</div>
				<div class="containers" style="display: none;">
				  	<div class="frm_wrap2">
					    <div class="here">
					    	<input type="checkbox" value="frm_wrap2" class="checkbox" style="display: inline-block;">
							<input type="text" placeholder="id" name="id">
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
							<button type="button" class="btn btn-info btn-lg select2">조회하기</button>
							<button type="button" id="sel3" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2" style="display: none;">조회하기</button>
							<button type="button" class="bookssssssssssssss" style="display: none;">예매하기</button>
						</div>
					</div>
				  </div>
				</div>
				<div class="hereeeer"></div>
			</form>
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