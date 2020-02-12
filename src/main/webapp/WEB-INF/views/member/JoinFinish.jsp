<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp" />
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/reset.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/layout.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/common.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/flyasiana.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/calendar.css">
<link rel="stylesheet" type="text/css" href="../resources/css/header.css">
<script type="text/javascript" src="../resources/newni/qrcode.js"></script>
</head>
<body>
<c:import url="../layout/header.jsp" />
<div class="container" id="container">
		<div class="mem_wrap">
			<div class="indicator_wrap">
				<ul>
					<li><span class="hidden">1. 회원 약관동의</span></li> 			
					<li><span class="hidden">2. 본인인증</span></li> 			
					<li><span class="hidden">3. 기존 회원여부 확인</span></li> 			
					<li><span class="hidden">4. 회원 정보 입력</span></li> 			
					<li class="on"><span class="hidden">5. 가입완료 (현재 단계)</span></li> 	
				</ul>
			</div>			
			<h3 class="mem_tit">가입 완료</h3> 
			<p class="text_type10">아시아나항공 회원에게 드리는 다양한 혜택을 누려보세요.</p> 
			<div class="mem_end_wrap">
				<div class="left">
					<p class="fsz_23 title"><span class="col_brown2" id="memName">${memberVO.name}</span> 회원님, 가입을 축하드립니다.</p> 
					
					<table class="table_list">
						<caption>
							<strong>회원님이 가입 시 입력하신 가입 정보를 확인할 수 있습니다.</strong> 
							
						<p>회원번호,회원등급,이메일,아이디 로 구성된 표입니다.</p></caption>
						<colgroup>
							<col style="width:178px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">회원번호</th> 
								<td class="taL" id="memberNum">${memberVO.memberNum}</td>
							</tr>
							<tr>
								<th scope="row">이메일</th> 
								<td class="taL">${memberVO.email}</td>
							</tr>
							<tr>
								<th scope="row">아이디</th> 
								<td class="taL">${memberVO.id}</td>
							</tr>			
						</tbody>
					</table>
<!-- 					<p class="btn_end_wrap">
						<button type="button" class="btn_popup" id="btn_barcodeCard" title="새 창 열림">바코드 카드</button> 
						<button type="button" class="btn_popup" id="btn_qrCard" title="새 창 열림">QR 카드</button> 
						<button type="button" class="btn_XS white" id="btn_smsSend">회원번호 카카오알림톡</button> 
					</p> -->
				</div>
				<div class="right">
					<div class="mem_barcode_wrap">
						<p class="barcode_top">
							<span class="hidden membershipCardName"></span>
						</p>
						<div class="mem_barcode_info">
							<p class="mem_barcode" id="qrcode" style="padding: 0px 40px;"></p> 
							<p class="mem_name">${memberVO.name}</p>
							<p class="mem_num"><span>${memberVO.memberNum}</span></p>
						</div>
						<p class="barcode_bottom" style="background: url('../images/index/index_2.png'); background-size: contain;"><span class="hidden">Asiana airlines</span></p>						
					</div>
				</div>
			</div>			
			<div class="btn_wrap_ceType1">
				<button type="button" class="btn_L white" id="btn_main" onclick="location.href='../'">에브리에어 메인</button> 
				<button type="button" class="btn_L red" id="btn_login" onclick="location.href='./memberLogin'">로그인</button> 
			</div>

			<h4>에브리에어 회원 혜택</h4> 
			<div class="icon_row type01">
				<ul>
					<li>
						<div class="ico_wrap">
							<span class="icoset_m booking ico_resv_01"></span>
						</div>
						<div class="txt_wrap">
							<dl>
								<dt>마일리지 적립 및 사용</dt> 
								<dd>에브리에어클럽은 에브리에어의 사용우대 프로그램으로 '에브리에어클럽 마일리지'를 기반으로 운영됩니다. <br>아시아나클럽 회원님께서는 아시아나 항공 및 제휴사를 이용하실 때마다 마일리지를 적립하실 수 있으며 적립된 마일리지로 마일리지 항공권 이용 <br>등이 가능하십니다.</dd> 
							</dl>				
						</div>
					</li>
					<li class="col2">
						<ul>
							<li>
								<div class="ico_wrap">
									<span class="icoset_m booking ico_resv_04"></span>
								</div>
								<div class="txt_wrap">
									<dl>
										<dt>에브리에어항공 뉴스레터</dt> 
										<dd>뉴스레터를 통해, 마일리지 실적 및 에브리에어의 <br>다양한 혜택을 이메일로 받아 보실 수 있습니다.</dd> 
									</dl>
								</div>
							</li>
							<li>
								<div class="ico_wrap">
									<span class="icoset_m booking ico_resv_05"></span>
								</div>
								<div class="txt_wrap">
									<dl>
										<dt>회원전용 이벤트 참여하기</dt> 
										<dd>에브리에어 웹사이트에서 진행하는 다양한 이벤트에 <br>참여하실 수 있습니다.</dd> 
									</dl>					
								</div>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
var qrcode = new QRCode(document.getElementById("qrcode"), {
	text :$("#memName").text() +$("#memberNum").text(),
	width : 160,
	height : 160,
	colorDark : "#000000",
	colorLight : "#ffffff",
	correctLevel : QRCode.CorrectLevel.H
});

	</script>
</body>
</html>