<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">
<link href="../resources/css/mypage/limo.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="http://www.letskorail.com/css/com.css">
<link rel="stylesheet" type="text/css" href="http://www.letskorail.com/css/korail.css">
<link rel="stylesheet" type="text/css" href="http://www.letskorail.com/css/basic.css">
<link rel="stylesheet" type="text/css" href="http://www.letskorail.com/css/reserve.css">
<link href="../resources/css/limo.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.abcd{
	 background-image: url("../images/limoPic/seatAfter.png") !important;
}
.limo_wrap{
	border-right-color: white;
}
.modal-content{
	width: 420px;
}
</style>
</head>
<body>

<header><c:import url="../layout/header.jsp"></c:import></header>

<div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<select onchange="location.href=this.value">
<option value="./main">나의 Every Air</option>
<option value="./memberUpdate">회원정보수정</option>
<option value="./mileage">마일리지</option>
<option value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option selected="selected" value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>
	<section>
		<div class="myasiana_wrap">
			<h3 style="font-size: 40px">리무진버스 예매내역</h3>
				<div class="cont_info cart" style="width: 1300px;">
					<!-- cont_info -->
					<div class="btn_r"><img src="../images/mypage/limobus.png" alt="limobus" style="width: 200px; height: 100px; margin-top: -20px; margin-right: 100px;">
                        <ol>
                            <li class="blind">step1 장바구니 현재단계</li>
                            <li class="blind">step2 결제정보 입력</li>
                            <li class="blind">step3 결제완료</li>
                        </ol>
                    </div>

					<div class="box_gray" style="width: 1170px;">
					
                        <strong><i class="icon_add">&nbsp;</i>리무진버스 예매 내역</strong>
                        
                            <strong class="txt_blu con_r">최소 결제기한일시 </strong>
                        
					</div>

					<ul class="list_bu1">
                        <li>결제가능 시간이 경과된 내역은 결제가 진행 되지 않습니다.</li>
                        <li>현장결제로 표시된 금액은 결제가 진행되지 않습니다. 예약을 진행하고 현장에서 결제 바랍니다.</li>
                        <li>예매내역은 실시간으로 화인되며, 취소 시 수수료가 부과될 수 있습니다.</li>
                        <li>기타 궁금하신 사항은 AIRLINE 공식 콜센터로 문의바랍니다. 02) 222-2222</li>
					</ul>
				
					<table class="tbl_h" summary="장바구니에 담은 예약일자, 행사일, 상품유형, 상품명, 결제가능 잔여시간, 수량, 금액 에 관한 표 입니다." style="width: 0%;">
					<caption>장바구니 담은 내역</caption>
					<colgroup>
						<col width="70px">
						<col width="80px">
						<col width="100px">
						<col width="70px">
						<col width="90px">
						<col width="90px">
						<col width="70px">
						<col width="60px">
						<col width="80px">
						<col width="80px">
					</colgroup>
                    <thead>
                        <tr>
                            <th scope="col">예매번호</th>
                            <th scope="col">승차일</th>
                            <th scope="col">승차시간</th>
                            <th scope="col">좌석번호</th>
                            <th scope="col" style="width: 130px;">출발지</th>
                            <th scope="col" style="width: 100px;">도착지</th>
                            <th scope="col">인원</th>
                            <th scope="col">금액</th>
                            <th scope="col">좌석</th>
                        </tr>
                    </thead>
					<tbody>
						<c:forEach items="${limo}" var="limos">
							<tr>
								<th style="background: white; vertical-align: middle;">${limos.bookNum}</th>
								<th style="background: white; vertical-align: middle;">${limos.limoDate}</th>
								<th style="background: white; vertical-align: middle;">${limos.limoTime}</th>
								<th style="background: white; vertical-align: middle;">${limos.seat}</th>
								<th style="background: white; vertical-align: middle;">${limos.depLoc}</th>
								<th style="background: white; vertical-align: middle;">${limos.arrLoc}</th>
								<th style="background: white; vertical-align: middle;">${limos.person+limos.child}명</th>
								<th style="background: white; vertical-align: middle;">${limos.limoPrice}원</th>
								<th style="background: white; vertical-align: middle; cursor: pointer;"><button type="button" class="btn" id="${limos.seat}" data-toggle="modal" data-target="#myModal2">예매좌석보기</button></th>
								
	                        </tr>
						</c:forEach>
					</tbody>
					</table>
					
					
					<div class="tbl_bod btn_r cart_result" style="width: 1170px;">
						<ul>
							<li style="float: right;">탑승 인원<br><strong class="txt_blu"><span id="totalTxt"></span><span>대인 1명</span><br><span>소인 1명</span></strong></li>
<!-- 							<li>인원<br><strong><span id="totalTxt0">0 명</span></strong><span class="bg2">&nbsp;</span></li> -->
							<li style="float: right;">결제하신 금액<br><strong class="txt_red"><span id="totalTxt1">32,000 원</span></strong></li>
						</ul>
					</div>
					<div class="btn_r">
						<a href="javascript:btnCreadit();" class="btn_blue_ang" style="background: url('http://www.letskorail.com/images/btn_bg_blue.gif'); margin-right: 130px;"><span>예매좌석 보기</span></a>
					</div>

				<!-- //cont_info -->
				</div>
			</div>
	</section>
	
	<!-- mypage 모달 -->
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
						<div class="limo_wrap">
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
<!-- 						<div class="select_limoDate"> -->
<!-- 							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">예매일</div> -->
<!-- 							<div class="select_limoDate_text2" style="margin-left: 30px; font-size: 15px;"></div> -->
<!-- 						</div> -->
<!-- 						<div class="select_depLoc"> -->
<!-- 							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발지</div> -->
<!-- 							<div class="select_depLoc_text2" style="margin-left: 30px; font-size: 15px;"></div> -->
<!-- 						</div> -->
<!-- 						<div class="select_arrLoc"> -->
<!-- 							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">도착지</div> -->
<!-- 							<div class="select_arrLoc_text2" style="margin-left: 30px; font-size: 15px;"></div> -->
<!-- 						</div> -->
<!-- 						<div class="select_person"> -->
<!-- 							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">인원</div> -->
<!-- 							<div class="select_person_text2" style="margin-left: 30px; font-size: 15px;"></div> -->
<!-- 						</div> -->
<!-- 						<div class="select_price"> -->
<!-- 							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">이용가격</div> -->
<!-- 							<div class="select_price_text2" style="margin-left: 30px; font-size: 15px;"></div> -->
<!-- 						</div> -->
<!-- 						<div class="select_limoTime"> -->
<!-- 							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발시간</div> -->
<!-- 							<div class="select_limoTime_text2" style="margin-left: 30px; font-size: 15px;"></div> -->
<!-- 						</div> -->
<!-- 						<div class="select_seat"> -->
<!-- 							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">좌석</div> -->
<!-- 							<div class="select_seat_text2" style="margin-left: 30px; font-size: 15px;"></div> -->
<!-- 						</div> -->
					</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">창닫기</button>
		        </div>
		      </div>
		    </div>
		  </div>
</div>
	
	
	
	

<script type="text/javascript">
	$(".header_bottom_inner").css("background-color", "white");
	$("#hbhome").css("background-color", "#5f6062");

	$('.btn').click(function(){
		$(".limo").each(function(){
			$(this).removeClass('abcd');
		});
		var btn = $(this).attr("id");
		var seat = new Array();
	  	seat = btn.split("번");
	  	for(var i=0; i<seat.length;i++){
			$('.limo[title='+seat[i]+']').addClass("abcd");
		}
		
	});
</script>

</body>
</html>