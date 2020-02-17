<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVERY AIR / Fine Res</title>
<c:import url="../template/boot.jsp" />
<link rel="stylesheet" href="../resources/css/park/parkRes.css">
<link rel="stylesheet" type="text/css" href="../resources/css/header.css">
</head>
<body>
<c:import url="../layout/header.jsp" />
<div id="sub_content">			
			<form id="resveForm" name="resveForm" class="needs-validation" action="./FindMyRes" method="post">
					<legend>예약조회 로그인폼</legend>						
					<div class="write_form">
						<div class="frow">
							<p class="label"><span class="star">*</span> 인증방법</p>
							<ul class="chk_list">
								<li class="m_full"><input type="radio" name="kind" value="acPlate" id="crtfc1" label="차량번호" othlabel="휴대전화번호" placeholder="예) 00가0000, 서울00가0000, 외교000000" othplaceholder="예) 01012345678 숫자만 기입" checked="checked"> <label for="crtfc1" class="r_label">차량번호</label></li>
								<li class="m_full"><input type="radio" name="kind" value="acCttpc" id="crtfc2" label="휴대전화번호" othlabel="차량번호" placeholder="예) 01012345678 숫자만 기입" othplaceholder="예) 00가0000, 서울00가0000, 외교000000"> <label for="crtfc2" class="r_label">휴대전화번호</label></li>
							</ul>
						</div>
						<div class="frow">
							<label for="acText" id="labelAcText" class="label"><span class="star">*</span> 차량번호</label>
							<input type="text" id="acText" name="carNum" class="fsize01 m_full" placeholder="예) 00가0000, 서울00가0000, 외교000000">
						</div>
						<div class="frow" style="display:none" id="divAcOthText">
							<label for="acOthText" id="labelAcOthText" class="label"><span class="star">*</span> </label>
							<input type="text" id="acOthText" name="acOthText" class="fsize01 m_full" placeholder="">
						</div>
						<div class="frow">
							<label for="acPassword" class="label"><span class="star">*</span> 비밀번호</label>
							<input type="password" id="acPassword" name="password" class="fsize01 m_full" maxlength="4" placeholder="4자리(숫자가능, 예: 2019, 102a, nprs)" aria-required="true">
						</div>
						<div class="btn_area">
							<button type="button" id="btnSignin" class="btn wine">예약조회</button>
							<!-- <button type="button" id="btnForget" class="btn btn_step_move border">비밀번호찾기</button> -->
						</div>
					</div>							
				<input type="hidden" id="acTextEnc" name="acTextEnc">
				<input type="hidden" id="acOthTextEnc" name="acOthTextEnc">
			</form>
		</div>
<script type="text/javascript">
$("#btnSignin").click(function(){
	$("#resveForm").submit();
});
$(".fa-comment-dots").offset({top: 61});
$(".fa-search").offset({top: 61});
$("#crtfc1").click(function(){
	var placeholder = $(this).attr('placeholder');
	var label = $(this).attr('label');
	$("#labelAcText").html('<span class="star">*</span> '+label+'</label>');
	$("#acText").prop('placeholder', placeholder);
});
$("#crtfc2").click(function(){
	var placeholder = $(this).attr('placeholder');
	var label = $(this).attr('label');
	$("#labelAcText").html('<span class="star">*</span> '+label+'</label>');
	$("#acText").prop('placeholder', placeholder);
});
</script>
</body>
</html>