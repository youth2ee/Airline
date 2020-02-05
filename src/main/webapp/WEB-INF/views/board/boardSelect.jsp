<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="../resources/css/board/boardSelect.css">
	<link rel="stylesheet" href="../resources/css/asiana/reset.css">
</head>
<body>
<div class="location_bar">
	<div class="inner">
		<a href="#" class="home"></a>
		<select onchange="if(this.value) location.href=(this.value);" id="location_select">
			<option>공지사항</option>
			<option>고객의말씀</option>
			<option></option>
		</select>	
	</div>
</div>

<!---- container ---->
<div class = "container">
	<h3>공지사항</h3>
	<div class = "list_view">
		<div class="list_view_title">
			<div class="left">
				<p class="title">신종 코로나바이러스 관련 항공권 변경/환불 규정 안내</p>
			</div>
			<div class="right">
				<div class= "hit"><span>조회수  2,055</span></div>
				<span class="date">2020.02.04</span>
			</div>
		</div>
			<div class="list_view_cont">
				항공권 처리 안내


					가. 아시아나항공 온라인 플랫폼 (PC /모바일웹, APP) 및 예약센터 구매 고객
					-통합 예약 센터
					한국 : +82-2-2669-8000, 미주 : +1-800-227-4262, 중국 : +86-10-8451-0101, 일본 : +81-3-5812-6600
					기타 지점 연락처 : 바로가기 >>
					
					나. 그 외 (여행사, 대리점, 그외 예약사이트) 구매 고객
					-해당 구매처 변경/환불 취소 가능
			</div>
			<div class="list_view_ctrl">
				<div>
					<span class="prev">다음글</span>
					<a>다음글이 없습니다.</a>
				</div>
				<div>
					<span class="next">이전글</span>
					<a>중국 일부 노선 비운항 및 감편 안내</a>
				</div>
			</div>
			<div class="btn_wrap">
				<button id="btnList" type="button">목록보기</button>
			</div>
	</div>


</div>




</body>
</html>