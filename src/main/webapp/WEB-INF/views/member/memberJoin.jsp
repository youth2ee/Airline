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

<!-- <link rel="stylesheet" type="text/css" href="../resources/css/asiana/reset.css">
<link rel="stylesheet" type="text/css" href="../resources/css/asiana/layout.css">
<link rel="stylesheet" type="text/css" href="../resources/css/asiana/common.css">
<link rel="stylesheet" type="text/css" href="../resources/css/asiana/flyasiana.css">
<link rel="stylesheet" type="text/css" href="../resources/css/asiana/calendar.css"> -->
<style type="text/css">
.modal-content {
  position: relative;
  top: 300px;
  background-color: @modal-content-bg;
  background-clip: padding-box;
  border: 1px solid @modal-content-fallback-border-color; //old browsers fallback (ie8 etc)
  border: 1px solid @modal-content-border-color;
  border-radius: 0px;
  .box-shadow(0 3px 9px rgba(0, 0, 0, .5));
  // Remove focus outline from opened modal
  outline: 0;
}

</style>
</head>
<body>
<%-- <c:import url="../template/hhhhheader.jsp" /> --%>
<form action="memberJoin" method="post" id="join_form">
<div class="container" id="container">
		<div class="mem_wrap">
			<div class="indicator_wrap">
				<ul>
					<li><span class="hidden">1. 회원 약관동의</span></li> 				
					<li><span class="hidden">2. 본인인증</span></li> 				
					<li><span class="hidden">3. 기존 회원여부 확인</span></li> 				
					<li class="on"><span class="hidden">4. 회원 정보 입력(현재 단계)</span></li> 	
					<li><span class="hidden">5. 가입완료</span></li> 				
				</ul>
			</div>			
			<h3 class="mem_tit">회원정보 입력</h3> 
			<p class="text_type10">회원님의 개인정보를 입력해주시기 바랍니다.</p> 
			<h4>회원정보 입력</h4> 
			<table class="table_form">
				<caption>
					<strong>회원정보 입력 표로 상세한 회원 정보를 입력할 수 있습니다.</strong> 
					
				<p>한글명,영문명,성별,거주지역,아이디,비밀번호,비밀번호 확인,휴대전화,이메일,(선택) 유선전화,주소,뉴스레터 및 상품정보,이벤트 등 수신 로 구성된 표입니다.</p></caption>
				<colgroup>
					<col style="width:216px;">
					<col style="width:auto;">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label for="input_koreanLastName">한글명</label></th> 
						<td>
							<input type="text" id="input_koreanLastName" name="name" placeholder="한글 이름 입력 (예 : 홍길동)" title="한글 이름 입력 (예 : 홍길동)" style="width:314px;"> 
							<p class="txt_error_Msg" id="error_koreanName" style="display: none;"></p>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="input_id">아이디</label></th> 
						<td>
							<input type="text" id="input_id" name="id" placeholder="6~15자리 영문+숫자" title="6~15자리 영문+숫자" style="width:298px;">
							<button type="button" class="btn_S white" id="btn_memberidCheck">중복확인</button>
							<button type="button" class="btn_S white" id="btn_idCheck" data-toggle="modal" data-target="#idCheck" style="display: none;">중복확인</button>
							<ul class="list_type3 fsz_14 mar_to10">
								<li>6 ~ 15자리 영문(대소문자 구별), 숫자 조합 입력 가능 <br>(단 한글, 공백, 특수문자 입력 불가)</li> 
							</ul>
							<p class="txt_error_Msg" id="error_id" style="display: none;"></p>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="input_pw">비밀번호</label></th> 
						<td>
							<input type="password" id="input_pw" autocomplete="off" name="pw" placeholder="영문+숫자+특수문자 8~20자리" title="영문+숫자+특수문자 8~20자리" style="width:298px;"> 
							<div class="tooltip_wrap">
								<a href="javascript:tooltipBlock();" class="btn_info">도움말</a> 
								<div class="layer_tooltip" style="width: 348px;">
									<div class="inner">
										<ul class="pwd_rule">
											<li>8자 이상<span class="unable">불가</span></li> 	
											<li>영문 대/소문자<span class="unable">불가</span></li>		
											<li>숫자<span class="unable">불가</span></li>		
											<li>특수문자<span class="unable">불가</span></li> 	
											<li>한글, 공백 입력 불가<span class="able">가능</span></li> 				
											<li>20자 이내<span class="able">가능</span></li> 		
											<li>보안정책상 사용 불가<span class="able">가능</span></li>
										</ul>
									</div>
									<a href="javascript:tooltipNone();" class="tooltip_close"><span class="hidden">닫기</span></a> 
								</div>	
							</div>
							<p class="txt_error_Msg" id="error_pw" style="display: none;"></p>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="input_pwConfirm">비밀번호 확인</label></th> 
						<td>
							<input type="password" id="input_pwConfirm" autocomplete="off" placeholder="영문+숫자+특수문자 8~20자리" title="영문+숫자+특수문자 8~20자리" style="width:298px;"> 
							<p class="txt_error_Msg" id="error_pwConfirm" style="display: none;"></p>
						</td>
					</tr>
					<tr>
						<th scope="row"><label>휴대전화</label></th> 
						<td id="korea_phone"> 
							<select id="select_koreaPhone" style="width:120px" title="휴대전화 번호 앞자리"> 
								<option value="">선택</option> 
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>
							<input type="text" id="input_koreaPhoneMiddle" placeholder="중간번호" title="휴대전화 번호 가운데 자리" maxlength="4" style="width:150px;" >- 	
							<input type="text" id="input_koreaPhoneLast" placeholder="끝 번호" title="휴대전화번호 끝자리" maxlength="4" style="width:150px;" > 		
							<p class="txt_error_Msg" id="error_koreaPhone" style="display: none;"></p>
							<input type="text" id="phonesum" name="phone">
						</td>

					</tr>
					<tr>
						<th scope="row"><label for="input_emailID">이메일</label></th> 
						<td>
							<input type="text" id="input_emailID" placeholder="이메일 입력" title="이메일 아이디 입력" style="width:198px;"> @ &nbsp; 
							<select id="select_emailDomain" title="이메일 도메인 선택" style="width:180px;"> 
								<option value="">직접입력</option> 
								<option value="korea.com">korea.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="naver.com">naver.com</option>
								<option value="lycos.co.kr">lycos.co.kr</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="netian.com">netian.com</option>
								<option value="empal.com">empal.com</option>
								<option value="hanmir.com">hanmir.com</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="hanafos.com">hanafos.com</option>
								<option value="chol.com">chol.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="nate.com">nate.com</option>
								<option value="yahoo.com">yahoo.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="aol.com">aol.com</option>
								<option value="sbcglobal.net">sbcglobal.net</option>
								<option value="hotmail.co.kr">hotmail.co.kr</option>
								<option value="yahoo.co.jp">yahoo.co.jp</option>
							</select>
							<input type="text" id="input_emailDomain" placeholder="직접입력" title="직접입력" style="width:298px;"> 
							<p class="txt_error_Msg" id="error_emailID" style="display: none;"></p>
							<p class="txt_error_Msg" id="error_emailDomain" style="display: none;"></p>
							<input type="text" id="emailsum" name="email">
						</td>
					</tr>
					
				</tbody>
			</table>
			
			<div class="btn_wrap_ceType3">
				<button type="button" class="btn_L white" id="btn_cancel">취소</button> 
				<button type="button" class="btn_L red" id="btn_confirm">확인</button> 
			</div>
		</div>
		
		
		<div class="modal fade layer_wrap" id="idCheck" role="dialog">
			<div class="modal-content layer_pop" style="width:500px">
				<div class="modal-body pop_cont ">
					<p class="pop_tit st1">다른 아이디를 사용하시려면 입력 후 <br><span class="cal_red">중복확인</span>을 클릭해주시기 바랍니다.</p> 
										
					<div class="form_area2">
						<input type="text" id="input_laterInputId" placeholder="아이디 입력" title="아이디 입력" style="width:210px;"> 	
						<button type="button" class="btn_M white btn_minwidth" id="btn_layerIdChedk">중복확인</button> 	
					</div>
					<p id="p_idRule">아이디는 <span class="col_brown">6~15자리 영문(대소문자 구별), 숫자 조합 입력 가능 (단 한글, 공백, 특수문자 입력 불가)</span> 입니다.</p> 
						
					<p id="p_info" style="display: none;"></p>
				</div>
				<div class="btn_wrap_ceType2">
					<button type="button" class="btn_M red" id="btn_layerIdUse" disabled="">사용하기</button>
				</div> 			
				<a href="javascript:sharpNothig();" class="dim_close" id="btn_layerClose" data-dismiss="modal"><span class="hidden">닫기</span></a> 	
			</div>
		</div>
		
	</div>
</form>
<c:import url="../template/fffooter.jsp" />
<script type="text/javascript">

function tooltipBlock(){
	$(".layer_tooltip").css("display","block");
}
function tooltipNone(){
	$(".layer_tooltip").css("display","none");
}


var phoneOne = "";
var phoneTwo = "";
var phoneThree = "";
var emailOne = "";
var emailTwo = "";



$("#input_pw").keyup(function(){
	var pw = $(this).val();
	var ENG = pw.match(/[A-Za-z]/g);
	var num = pw.match(/[0123456789]/g);
	var space = pw.match(/ /g);
	var kor = pw.match(/[ㄱ-ㅎ가-힣ㅏ-ㅣ]/g);
	var spe = pw.match(/[`~!@#$%^&*()-/'/"/_/+/=/|/?/;/:/,/</./>\\\{\}\[\]]/g);
	var speun = pw.match(/[%&()+;'",<>]/g);
	//var spe = pw.match(/[]/);
	//var spe = pw.match(/[`~!@@#$%^&*|₩₩₩'₩':₩/?]/ig);
	//var spe = pw.match(/[`~!@#$%^&*|\\\'\";:\/?]/gi);
	//var spe = pw.match(/[`~!@#$%^&*()-_=+\|\[\]\{\};:,.<>/?]/g);
	//var spe = pw.match(/[-=+,#/\?:^$.@*"※~&%ㆍ!』\\‘|\(\)\[\]\<\>`\'…》]/i);
	
	
	//8자리 이상 체크
	if(pw.length >7){
		$(".pwd_rule  > li").eq(0).children().removeClass('unable');
		$(".pwd_rule  > li").eq(0).children().addClass('able');
	}else{
		$(".pwd_rule  > li").eq(0).children().removeClass('able');
		$(".pwd_rule  > li").eq(0).children().addClass('unable');
	}

	//영문 포함 체크
	if(ENG != null){
		$(".pwd_rule  > li").eq(1).children().removeClass('unable');
		$(".pwd_rule  > li").eq(1).children().addClass('able');
	}else{
		$(".pwd_rule  > li").eq(1).children().removeClass('able');
		$(".pwd_rule  > li").eq(1).children().addClass('unable');
	}

	//숫자 포함 체크
	if(num != null){
		$(".pwd_rule  > li").eq(2).children().removeClass('unable');
		$(".pwd_rule  > li").eq(2).children().addClass('able');
	}else{
		$(".pwd_rule  > li").eq(2).children().removeClass('able');
		$(".pwd_rule  > li").eq(2).children().addClass('unable');
	}

	//특수문자체크
	if(spe != null){
		$(".pwd_rule  > li").eq(3).children().removeClass('unable');
		$(".pwd_rule  > li").eq(3).children().addClass('able');
	}else{
		$(".pwd_rule  > li").eq(3).children().removeClass('able');
		$(".pwd_rule  > li").eq(3).children().addClass('unable');
	}

	//한글,공백 체크
	if(space == null && kor == null){
		$(".pwd_rule  > li").eq(4).children().removeClass('unable');
		$(".pwd_rule  > li").eq(4).children().addClass('able');
	}else{
		$(".pwd_rule  > li").eq(4).children().removeClass('able');
		$(".pwd_rule  > li").eq(4).children().addClass('unable');
	}


	//20자리 이상 체크
	if(pw.length >19){
		$(".pwd_rule  > li").eq(5).children().removeClass('able');
		$(".pwd_rule  > li").eq(5).children().addClass('unable');
	}else{
		$(".pwd_rule  > li").eq(5).children().removeClass('unable');
		$(".pwd_rule  > li").eq(5).children().addClass('able');
	}

	//보안체크
	if(speun != null){
		$(".pwd_rule  > li").eq(6).children().removeClass('able');
		$(".pwd_rule  > li").eq(6).children().addClass('unable');
	}else{
		$(".pwd_rule  > li").eq(6).children().removeClass('unable');
		$(".pwd_rule  > li").eq(6).children().addClass('able');
	}
	
});
$("#input_pw").blur(function(){
	$("#input_pwConfirm").val("");
	$("#error_pwConfirm").css("display", "none");
	$("#error_pwConfirm").html('');
	pwflag = false;
});

var pwflag = false;
//비밀번호 확인 체크
$("#input_pwConfirm").blur(function(){
	var pw2 = $(this).val();
	var pw = $("#input_pw").val();
	if(pw == pw2){
		$("#error_pwConfirm").css("display", "none");
		$("#error_pwConfirm").html('');
		pwflag = true;

	}else{
		$("#error_pwConfirm").css("display", "block");
		$("#error_pwConfirm").html('비밀번호가 일치하지 않습니다.');
		pwflag = false;
	}
});

//휴대전화 번호 값 받기
$("#select_koreaPhone").change(function(){
	phoneOne = $(this).val();
	$("#phonesum").val(phoneOne+phoneTwo+phoneThree);
});

$("#input_koreaPhoneMiddle").blur(function(){
	phoneTwo = $(this).val();
	$("#phonesum").val(phoneOne+phoneTwo+phoneThree);
});

$("#input_koreaPhoneLast").blur(function(){
	phoneThree = $(this).val();
	$("#phonesum").val(phoneOne+phoneTwo+phoneThree);
});


//도메인 선택
$("#select_emailDomain").change(function(){
	if($("#select_emailDomain option:eq(0)").prop("selected")){
		$("#input_emailDomain").css("display","inline");
		$("#emailsum").val(emailOne+'@');
	}else{
		$("#input_emailDomain").css("display","none");
		emailTwo = $(this).val();
		$("#emailsum").val(emailOne+'@'+emailTwo);
	}
});


//이메일 작업
$("#input_emailID").blur(function(){
	emailOne = $(this).val();
	$("#emailsum").val(emailOne+'@'+emailTwo);
});

$("#input_emailDomain").blur(function(){
	emailTwo = $(this).val();
	$("#emailsum").val(emailOne+'@'+emailTwo);
});

//ID중복체크 모달 띄우기
$("#btn_memberidCheck").click(function(){
	
	if($("#input_id").val() == ""){
		alert('아이디 입력 후 클릭해주시기 바랍니다.');
	}else{
		$("#btn_idCheck").click();
		$("#input_laterInputId").val($("#input_id").val());
		$("#p_info").css("display", "none");
		$("#p_idRule").css("display", "block");
		$("#btn_layerIdUse").attr('disabled',true);
	}
	
});

//ID중복체크
$("#btn_layerIdChedk").click(function(){
	var idcheck = $("#input_laterInputId").val();
	var ENG = idcheck.match(/[A-Za-z]/g);
	var num = idcheck.match(/[0123456789]/g);
	var space = idcheck.match(/ /g);
	var kor = idcheck.match(/[ㄱ-ㅎ가-힣ㅏ-ㅣ]/g);
	var spe = idcheck.match(/[`~!@#$%^&*()-/'/"/_/+/=/|/?/;/:/,/</./>\\\{\}\[\]]/g);
	
	if(idcheck.length >5 && idcheck.length <16 && space == null && kor == null && spe == null){
		$.get("memberidCheck?id="+idcheck, function(data){

			if(data >0){
				$("#p_info").css("display", "block");
				$("#p_idRule").css("display", "none");
				$("#btn_layerIdUse").attr('disabled',true);
				$("#p_info").html('<span class="col_brown">'+idcheck+'</span>는 사용하실수 없습니다.');
			}else{
				$("#p_info").css("display", "block");
				$("#p_idRule").css("display", "none");
				$("#btn_layerIdUse").attr('disabled',false);
				$("#p_info").html('<span class="col_brown">'+idcheck+'</span>는 사용하실수 있습니다.');
			}
		});
	}
});

$("#input_laterInputId").blur(function(){
	$("#btn_layerIdUse").attr("disabled", true);
});
var idflag = false;
//id 사용하기
$("#btn_layerIdUse").click(function(){

	if($("#btn_layerIdUse").is(':disabled')){
		alert('a');
	}else{
		$("#btn_layerClose").click();
		$("#input_id").val($("#input_laterInputId").val());
		$("#input_id").attr("readonly",true);
		$("#error_id").css("display","none");
		$("#error_id").html('');
		idflag = true;
	}
	
});

//이름 input 정규식
$("#input_koreanLastName").keyup(function(event) {
    if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
       var inputVal = $(this).val();
       $(this).val(inputVal.replace(/[^(가-힣)]/gi, ''));
    }
 });

//이메일 input 정규식
$("#input_emailID").keyup(function(event) {
    if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
        var inputVal = $(this).val();
        $(this).val(inputVal.replace(/[^(a-zA-Z0-9)]/gi, ''));
     }
  });

//이름 에러창 없애기
$("#input_koreanLastName").blur(function(){
	if($(this).val() != ""){
		$("#error_koreanName").css("display","none");
		$("#error_koreanName").html('');
	}
});

//아이디 에러창 없애기
$("#input_id").blur(function(){
	if($(this).val() != ""){
		$("#error_id").css("display","none");
		$("#error_id").html('');
	}
});

//비번 에러창 없애기
$("#input_pw").blur(function(){
	if($(this).val() != ""){
		$("#error_pw").css("display","none");
		$("#error_pw").html('');
	}
});

//전화번호 첫자리 에러창 없애기
$("#select_koreaPhone").change(function(){

	if(!$(this).eq(0).prop("selected")){
		$("#error_koreaPhone").css("display","none");
		$("#error_koreaPhone").html('');
	}
});

//전화번호 중간, 끝자리 에러창 없애기
$("#input_koreaPhoneMiddle, #input_koreaPhoneLast").blur(function(){

	if($(this).val != ""){
		$("#error_koreaPhone").css("display","none");
		$("#error_koreaPhone").html('');
	}
});

//이메일 id 에러창 없애기
$("#input_emailID").blur(function(){
	if($(this).val() != ""){
		$("#error_emailID").css("display","none");
		$("#error_emailID").html('');
	}
});

//이메일 도메인 에러창 없애기
$("#input_emailDomain").blur(function(){
	if($(this).val() != ""){
		$("#error_emailDomain").css("display","none");
		$("#error_emailDomain").html('');
	}
});


//폼 전송
$("#btn_confirm").click(function(){
	var pwcount = 0;
	$(".pwd_rule li").each(function(){
		if($(this).children('span').hasClass('unable')){
			pwcount++;
		}
	});
	//이름체크
	if($("#input_koreanLastName").val() == ""){
		$("#input_koreanLastName").focus();
		$("#error_koreanName").css("display","block");
		$("#error_koreanName").html('이름을 입력해주세요.');
	//idCheck
	}else if($("#input_id").val == ""){
		$("#input_id").focus();
		$("#error_id").css("display","block");
		$("#error_id").html('아이디을 입력해주세요.');
	//중복확인 여부
	}else if(!idflag){
		$("#input_id").focus();
		$("#error_id").css("display","block");
		$("#error_id").html('아이디 중복확인을 해주세요.');
	//비밀번호 검증 확인
	}else if(pwcount > 0){
		$("#input_pw").focus();
		$("#error_pw").css("display","block");
		$("#error_pw").html('비밀번호를 확인해주세요');
		tooltipBlock();
	//비밀번호 일치 확인		
	}else if(!pwflag){
		$("#input_pwConfirm").focus();
		$("#error_pwConfirm").css("display","block");
		$("#error_pw").html('비밀번호가 일치하지 않습니다.');
	//휴대전화번호 확인
	}else if($("#phonesum").val().length < 9){
		$("#select_koreaPhone").focus();
		$("#error_koreaPhone").css("display","block");
		$("#error_koreaPhone").html('휴대전화 번호를 입력해주세요.');
	//이메일 확인
	}else if($("#input_emailID").val() == ""){
		$("#input_emailID").focus();
		$("#error_emailID").css("display","block");
		$("#error_emailID").html('이메일을 입력해주세요.');
	//도메인 확인
	}else if($("#select_emailDomain option:eq(0)").prop("selected") && $("#input_emailDomain").val() == ""){
		$("#input_emailDomain").focus();
		$("#error_emailDomain").css("display","block");
		$("#error_emailDomain").html('도메인을 입력해주세요.');
	}else{
		$("#join_form").submit();
	}
	
});

</script>
</body>
</html>