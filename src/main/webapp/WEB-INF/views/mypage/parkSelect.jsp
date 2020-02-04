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
	</style>
</head>
<body>
<header></header>
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
								</p><div id="airportLotArea">김포공항 국내선 제2주차장</div>
							</div>
							<div class="frow">
								<p class="label">차량번호
								</p><div id="acPlate">52구7908</div>
							</div>
							<div class="frow">
								<p class="label">입차 예정일시</p>
								<div id="entvhclResveDt">2020-02-11 07:10</div>
							</div>
							<div class="frow">
								<p class="label">출차 예정일시</p>										
								<div id="lvvhclResveDt">2020-02-19 18:30</div>
							</div>
							<div class="frow">
								<p class="label">차량종류</p>
								<div id="parkngArName">일반</div>
							</div>					
							<div class="frow">
								<p class="label">휴대전화번호
								</p><div id="acCttpc">010-3820-9098</div>
							</div>
							<div class="frow">
								<p class="label">이메일 주소
								</p><div id="acEmailAddress">pyj9088@gmail.com</div>
							</div>							
						</div>
					</div>
					<div class="btn_area">
						<button id="btnList" class="btn border">목록</button>
						<button id="btnEdit" class="btn wine" style="">예약변경</button>
						<button id="btnCncl" class="btn" style="">예약취소</button>
					</div>
			</form>
		</div>





</body>
</html>