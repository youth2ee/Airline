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
	<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="../resources/css/mypage/park.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../resources/css/xddatepicker/jquery.datetimepicker.css">
	<script src="../js/jquery.js"></script>
	<script src="../js/jquery.datetimepicker.full.min.js"></script>
	
<style type="text/css">
	
th {
  text-align: center;
}
label {font-size:16px !important; color:#151515 !important;}
.wine:hover{
color: white;
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
<option selected="selected" value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>
		<div id="sub_content">
			<form id="resveForm" name="resveForm" class="needs-validation">
					<div class="search_form">
						<div class="fbox">
							<div class="col01">
								<label for="" class="label">이용예정일시</label>
								<div class="cal_wrap">
									<input type="text" id="resveBeginDt" name="startDate" value="${VO.startDate}" readonly="readonly">
								</div>
								<span class="bar">-</span>
								<div class="cal_wrap">
									<input type="text" id="resveEndDt" name="endDate" value="${VO.endDate}" readonly="readonly">
								</div>
							</div>
						
								<button id="btnSearch" class="sbtn btn_submit" style="border: 0px">조회</button>
						</div>
					</div>							
			</form>
			<div class="section">
				<table class="board_table" id="grid">
					<thead class="t_hidden">
						<tr>
						<th scope="col">공항</th>
						<th scope="col">차량번호</th>
						<th scope="col">이용예정일시</th>
						<th scope="col">차량종류</th>
						<th scope="col">상태</th>
						<th scope="col"></th>
					</tr></thead>
					<tbody>
					<c:forEach items="${list}" var="dto">
						<tr>
							<td class="t_hidden">${dto.airport}</td>
							<td class="t_hidden">${dto.carNum}</td>
							<td class="t_hidden">${dto.startDate} ~ ${dto.endDate}</td>
							<td class="t_hidden">일반</td>
							<td class="t_hidden">예약완료</td>
							<td><button class="btn small wine" onclick="location.href='parkSelect?pResNum=${dto.pResNum}'">상세정보</button><button class="btn small border" onclick="deleteconfirm(${dto.pResNum})">예약취소</button></td>
						
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<!-- //paginate -->
			</div>
		</div>
<script type="text/javascript">
/* $("#resveBeginDt").datepicker(); */
/* $("#resveEndDt").datepicker(); */

/* $.datetimepicker.setLocale('ko'); */
$.datetimepicker.setLocale('ko');
$('#resveBeginDt').datetimepicker({
 i18n:{
  ko:{
   months:[
    '1월','2월','3월','4월',
    '5월','6월','7월','8월',
    '9월','10월','11월','12월',
   ],
   dayOfWeek:[
    "일", "월", "화", "수", 
    "목", "금", "토",
   ]
  }
 },
 timepicker:false,
 format:'Y-m-d',
 lang:'ko'
});

$('#resveEndDt').datetimepicker({
	 i18n:{
	  ko:{
	   months:[
	    '1월','2월','3월','4월',
	    '5월','6월','7월','8월',
	    '9월','10월','11월','12월',
	   ],
	   dayOfWeek:[
	    "일", "월", "화", "수", 
	    "목", "금", "토",
	   ]
	  }
	 },
	 timepicker:false,
	 format:'Y-m-d',
	 lang:'ko'
	});

function deleteconfirm(pResNum){
	
	if(confirm('정말 예약을 취소하시겠습니까?')){
		location.href='../park/parkCancel?pResNum='+pResNum;
	};
	
}

</script>
</body>

</html>