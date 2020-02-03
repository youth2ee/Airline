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
					<div class="search_form">
						<div class="fbox">
							<div class="col01">
								<label for="" class="label">이용예정일시</label>
								<div class="cal_wrap">
									<input type="text" id="resveBeginDt" name="resveBeginDt" value="2020-01-19" readonly="readonly">
								</div>
								<span class="bar">-</span>
								<div class="cal_wrap">
									<input type="text" id="resveEndDt" name="resveEndDt" value="2020-02-18" readonly="readonly">
								</div>
							</div>
							<div class="col02">
								<label for="resveSttus" class="label">상태</label>
								<select id="resveSttus" name="resveSttus">
								<option value="" selected="selected">전체</option><option value="WAIT">예약대기</option><option value="CMPL">예약완료</option><option value="USE">이용중</option><option value="END">이용완료</option><option value="CNCL">예약취소</option><option value="DNCL">지연취소</option><option value="NNCL">예약불가</option></select>
								<button id="btnSearch" class="sbtn btn_submit">조회</button>
							</div>							
						</div>
					</div>							
			</form>
			<div class="section">
				<table class="board_table" id="grid">
					<thead class="t_hidden">
						<tr><th scope="col">예약번호</th>
						<th scope="col">공항</th>
						<th scope="col">차량번호</th>
						<th scope="col">이용예정일시</th>
						<th scope="col">차량종류</th>
						<th scope="col">상태</th>
						<th scope="col"></th>
					</tr></thead>
					<tbody>
					<tr>
						<td class="t_hidden"><a style="color:#1E3269" onclick="$.view('11334')">7908BB0001</a></td>
						<td class="t_hidden">김포공항</td>
						<td class="t_hidden">52구7908</td>
						<td class="t_hidden">2020-02-11 07:10 ~ 2020-02-19 18:30</td>
						<td class="t_hidden">일반</td>
						<td class="t_hidden">예약완료</td>
						<td><button class="btn small wine" onclick="$.edit('11334')">예약변경</button><button class="btn small border" onclick="$.cancle('11334')">예약취소</button></td></tr></tbody>
				</table>
				<!-- //paginate -->
			</div>
			<div>
				<h3 class="stitle01">주차 예약 이용안내</h3>
				<div class="border_box">
					<p class="ssection">한국공항공사 주차 예약 시스템을 항상 이용해주셔서 감사합니다.<br></p>
					<ul class="dot_list">
						<li><span class="fc_wine">예약대기</span> : 예약일정 내에 주차공간이 부족한 상태</li>
						<li><span class="fc_wine">예약완료</span> : 정상적으로 주차 예약된 상태</li>
						<li><span class="fc_wine">이용중</span> : 주차장에 차량을 입차 후 출차하지 않은 상태</li>
						<li><span class="fc_wine">이용완료</span> : 주차장에 차량을 입차 후 출차한 상태</li>
						<li><span class="fc_wine">예약취소</span> : 이용자가 예약을 취소한 상태</li>
						<li><span class="fc_wine">지연취소</span> : 주차장을 이용하지 않고 시스템에 의해서 자동 취소된 상태</li>
						<li><span class="fc_wine">예약불가</span> : 예약대기 상태로 입차 예정시간인 6시간 전까지 예약완료 되지 못한 상태</li>
					</ul>
				</div>
			</div>
		</div>





</body>
</html>