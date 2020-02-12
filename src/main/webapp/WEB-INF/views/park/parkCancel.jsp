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

</style>
</head>
<body>
<c:import url="../layout/header.jsp" />
<div id="sub_content">
			<form id="resveForm" name="resveForm" class="needs-validation" method="post" action="parkCancel">
					<div class="section">
						<div class="write_form">
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
								<p class="label">휴대전화번호
								</p><div id="acCttpc">${VO.phone}</div>
							</div>
							<div class="frow">
								<label for="acPassword" class="label"><span class="star">*</span> 비밀번호</label>
								<div class="fsize01 m_full">
									<input type="hidden" name="pResNum" value="${VO.pResNum}">
									<input type="password" id="acPassword" name="password" maxlength="4" placeholder="4자리(숫자가능, 예: 2019, 102a, nprs)" aria-required="true">
								</div>
							</div>							
						</div>
					</div>
					<div class="btn_area">
						<button type="button" id="btnList" class="btn border">목록</button>
						<button type="button" id="btnCncl" class="btn wine">예약취소</button>
					</div>
			</form>
		</div>

</body>
<script type="text/javascript">
$("#btnList").click(function(){
	location.href='./MyRes';
});

$("#btnCncl").click(function(){
	var password = $("#acPassword").val();
	if(password.length == 4){
		$("#resveForm").submit();
	}
});
</script>
</html>