<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="../resources/css/reset.css" rel="stylesheet">
    <link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">
	<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="../resources/css/mypage/park.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../resources/css/header.css">
	<style type="text/css">
th {
  text-align: center;
}
.label{
line-height: 40px;
text-align: left;
}
.btn{
line-height: 37px;
}

input[type="radio"] { 
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}

label { 
	cursor: pointer;
	width: 30px;
	height: 50px;
	font-size: 18px !important;
	border: 2px solid white;
	box-sizing: border-box;
}
.bookable {
	text-align: center;
	background-color: #eeefea;
	font-size: 12px;
}
.etc{ 
	background-color: #2a6bcf;
	background-image: url("../images/disability.png");
	background-size: 26px 40px;
	background-position: center;
	background-repeat: no-repeat;
	opacity: 80%;
	
}

.booking {
	text-align: center;
	background-color: #c60b15 !important;
	font-size: 12px;
}


.인천공항{
	width: 1000px;
	height: 470px;
	background-image: url("../images/parkingarea/인천공항2.png");
	background-size: 80%;
	background-repeat: no-repeat;
	padding-top: 70px;
	padding-left: 130px;
}
.제주공항{
	width: 1000px;
	height: 630px;
	background-image: url("../images/parkingarea/김포공항.png");
	background-size: 90%;
	background-repeat: no-repeat;
	padding-top: 15px;
	padding-left: 220px;

}
.김포공항{
	width: 1400px;
	height: 900px;
	background-image: url("../images/parkingarea/제주공항.png");
	background-size: 90%;
	background-repeat: no-repeat;
	padding-top: 260px;
	padding-left: 220px;
	

}
</style>
</head>
<body>
<c:import url="../layout/header.jsp" />
<div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<select onchange="location.href=this.value">
<option value="./main">나의 Every Air</option>
<option value="./memberUpdate">회원정보수정</option>
<option value="./mileage">마일리지</option>
<option value="./ticketCheck">예매내역</option>
<option selected="selected" value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>
<div id="sub_content">
			<form id="resveForm" name="resveForm" class="needs-validation" novalidate="">
					<div class="section">
						<div class="write_form">
							<div class="frow">
								<p class="label">예약번호
								</p><div id="resveNo">7908BB0001</div>
							</div>
							<div class="frow">
								<p class="label">예약 주차
								</p><div id="airportLotArea">${VO.airport}</div>
							</div>
							<div class="frow">
								<p class="label">차량번호
								</p><div id="acPlate">${VO.carNum}</div>
							</div>
							<div class="frow">
								<p class="label">입차 예정일시</p>
								<div id="entvhclResveDt">${VO.startDate}</div>
							</div>
							<div class="frow">
								<p class="label">출차 예정일시</p>										
								<div id="lvvhclResveDt">${VO.endDate}</div>
							</div>
							<div class="frow">
								<p class="label">차량종류</p>
								<div id="parkngArName">일반</div>
							</div>					
							<div class="frow">
								<p class="label">휴대전화번호
								</p><div id="acCttpc">${VO.phone}</div>
							</div>						
						</div>
					</div>
 
					<div class="btn_area">
						<button type="button" id="btnList" class="btn border" onclick="location.href='./park'">목록</button>
						<button type="button" id="btnEdit" class="btn wine" style="" data-toggle="collapse" data-target="#coll">위치확인</button>
						<button type="button" id="btnCncl" class="btn" style="" data-toggle="collapse" data-target="#coll2">예약취소</button>
					</div>
			</form>
			        <div class="collapse map_box02" id="coll">
					<h3 class="stitle01">주차 위치 확인</h3>
							<div class="container">
							
								<!-- 장애인 자리 -->
								<c:forEach items="${etc}" var="vo">
									<input type="hidden" value="${vo}" class="etc"><br>
								</c:forEach>
								
								<!-- 이용자가 예약한 자리 -->
								<input type="hidden" value="${VO.areaNum}" id="selected">
								
								<div class="container2 ${park.aName}">
									<c:forEach begin="1" end="${park.total}" varStatus="vo">
										<c:choose>
											<c:when test="${vo.current%park.margin2  eq park.margin && vo.current le park.nopattern}">
												<label for="${vo.current}" class="la bookable" style="margin-right: 68px;" id="r${vo.current}">
													<input type="radio" name="areaNum" value="${vo.current}" id="${vo.current}">
												</label>
											</c:when>
											<c:otherwise>
												<label for="${vo.current}" class="la bookable" id="r${vo.current}">
													<input type="radio" name="areaNum" value="${vo.current}" id="${vo.current}" >
												</label>
											</c:otherwise>
										</c:choose>
							
										<c:choose>
							
											<c:when test="${vo.current gt park.nopattern}">
											</c:when>
											<c:otherwise>
												<c:if test="${vo.current eq park.line || vo.current eq park.line*3 || vo.current eq park.line*5 || vo.current eq park.line*7 && vo.current lt park.nopattern}">
													<br>
													<br>
													<br>
													<br>
												</c:if>
												<c:if test="${vo.current eq park.line*2 || vo.current eq park.line*4 ||vo.current eq park.line*6 || vo.current eq park.line*7 && vo.current lt park.nopattern}">
													<br>
												</c:if>
											</c:otherwise>
										</c:choose>
									</c:forEach>
							</div>
							<br>
							</div>
                        </div>
			
		</div>
<script type="text/javascript">
//장애인전용주차구역 표시
$(".etc").each(function(){
	var etc = $(this).val();
	$("#r"+etc).addClass('etc');
});

var myarea = $("#selected").val();

$("#r"+myarea).addClass('booking');

</script>
</body>
</html>