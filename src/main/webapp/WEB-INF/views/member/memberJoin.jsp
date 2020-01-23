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
							<button type="button" class="btn_S white" id="btn_idCheck">중복확인</button> 
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
										<li>보안정책상 사용 불가<span class="able">가능</span></li></ul>
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
						<td id="foreign_phone" style="display: none;">

							<input type="hidden" id="input_foreignPhoneNationCode" value="82">
	
							<input type="text" id="input_foreignPhoneFirst" placeholder="앞 번호" title="휴대전화 번호 앞자리" style="width:150px;" disabled="">- 		
							<input type="text" id="input_foreignPhoneMiddle" placeholder="중간번호" title="휴대전화 번호 가운데 자리" style="width:150px;" readonly="">- 	
							<input type="text" id="input_foreignPhoneLast" placeholder="끝 번호" title="휴대전화번호 끝자리" style="width:150px;" readonly=""> 		
							<p class="txt_error_Msg" id="error_foreignPhone" style="display: none;"></p>
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
		
		
		<div class="layer_wrap" id="idCheck">
			<div class="dim_layer"></div>
			<div class="layer_pop" style="width:500px">
				<div class="pop_cont">
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
				<a href="javascript:sharpNothig();" class="dim_close" id="btn_layerClose"><span class="hidden">닫기</span></a> 	
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
});


//비밀번호 확인 체크
$("#input_pwConfirm").blur(function(){
	var pw2 = $(this).val();
	var pw = $("#input_pw").val();
	if(pw == pw2){
		$("#error_pwConfirm").css("display", "none");
		$("#error_pwConfirm").html('');

	}else{
		$("#error_pwConfirm").css("display", "block");
		$("#error_pwConfirm").html('비밀번호가 일치하지 않습니다.');

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


//폼 전송
$("#btn_confirm").click(function(){

	$("#join_form").submit();
	
});
</script>
</body>
</html>