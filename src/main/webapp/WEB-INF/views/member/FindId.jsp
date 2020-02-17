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
a:hover {
	color: black;
}
a:focus {
	text-decoration: none;
	color: black;
}

</style>
</head>
<body>
<c:import url="../layout/header.jsp" />
<c:import url="../template/roading.jsp" />
<div class="test"></div>
<div class="container" id="container">
				<h3>아이디 찾기</h3>
				<ul class="list_type3">
					<li>회원님의 개인정보 보호 및 정확한 회원정보 확인을 위하여 본인 인증 후 아이디를 안내해드리고 있습니다. 서비스 이용을 위하여 아래 본인 인증을 통해 아이디를 확인해주시기 바랍니다.</li>
					
				</ul>
				<div class="tab_wrap3">
					<ul class="tab_head t2">
						<li class="findtype on"><a href="#" id="findbyphone" title="선택됨" style="height: 63px;"><span>본인 인증</span></a></li>
						<li class="findtype"><a href="#" id="findbyemail" style="height: 63px;"><span>이메일 인증</span></a></li>
					</ul>
					
					<div class="tab_content">
						<div id="divphone" class="tab_cont on">
							
							<div class="inner">
								<h4 class="hidden">본인 인증</h4>
								<div class="tab_wrap4">
									<ul>
										<li class="ico_phone">
											<div>
												<span class="tab_tit">휴대전화 인증</span>
												<span class="tab_txt">본인명의의 휴대전화를 통한 인증</span>
												<button type="button" id="btnSearchIDByPhone" title="새 창 열림" class="btn_M red" data-toggle="modal" data-target="#idCheck">인증하기</button> 
											</div>
										</li>
										<li class="ico_ipin">
											<div>
												<span class="tab_tit">아이핀 인증
													<span class="tooltip_wrap">
														<button class="btn_info" onclick="window.open('http://www.vno.co.kr/ipin3/personal/personal01.asp')" title="새 창 열림">아이핀 인증이란?</button> 
													</span>
												</span>
												<span class="tab_txt">본인인증기관을 통한 아이핀 인증</span>
												<button type="button" id="btnSearchIDByIpin" title="새 창 열림" class="btn_M red">인증하기</button> 
											</div>
										</li>
									</ul>
								</div>
							</div>
							
						</div>
						
						<div id="divemail" class="tab_cont">
							<form action="memberidFindbyEmail" method="post">
							
							<div class="inner">
								<h4 class="hidden">이메일 인증</h4>
								<p class="text_type2 gray">회원가입 시 등록한 이메일 주소를 입력해주시기 바랍니다. 등록된 회원정보와 입력된 내용이 일치할 경우, 등록된 이메일 주소로 아이디 안내 메일을 발송해 드립니다.</p>
								<table class="table_form">
									<caption>
										<strong>내국인 아이디 찾기 표로 계정의 등록된 이메일을 입력하여 인증할 수 있습니다.</strong>
										
									<p>성,이름,생년월일,이메일 로 구성된 표입니다.</p></caption>
									<colgroup>
										<col style="width:179px;">
										<col style="width:auto;">
										<col style="width:179px;">
										<col style="width:auto;">
									</colgroup>
		
									<tbody>
									
										<tr>
											<th scope="row"><label for="lastName">이름</label></th>
											<td>
												
												<input type="text" id="lastName" name="name" placeholder="한글 이름 입력 (예: 홍길동)" title="한글 이름 입력 (예: 홍길동)" style="width:264px;">
											</td>						
										</tr>
										
<%-- 										<tr>
											<th scope="row"><label for="year">생년월일</label></th>
											<td colspan="3">
												
												<select id="year" name="year" title="생년월일&nbsp;연도" style="width: 200px">
													<option value="">년</option>
													<c:forEach begin="0" end="150" varStatus="vo">
														<option vlaue="${2020-vo.current}">${2020-vo.current}</option>
													</c:forEach>
													
												</select>
												<select id="month" name="month" title="생년월일월" style="width: 200px">
													<option value="">월</option>
													<option value="01">1</option>
													<option value="02">2</option>
													<option value="03">3</option>
													<option value="04">4</option>
													<option value="05">5</option>
													<option value="06">6</option>
													<option value="07">7</option>
													<option value="08">8</option>
													<option value="09">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
												</select>
												
												<select id="day" name="day" title="생년월일일" style="width: 200px">
													<option value="">일</option>
													<c:forEach begin="1" end="9" varStatus="vo">
														<option value="0+${vo.current}">${vo.current}</option>
													</c:forEach>
													<c:forEach begin="10" end="31" varStatus="vo">
														<option value="${vo.current}">${vo.current}</option>
													</c:forEach>
												</select>
											</td>
										</tr> --%>
										<tr>
											<th scope="row"><label for="emailAddress">이메일</label></th>
											<td colspan="3">
												
												<input type="text" id="emailAddress" name="emailAddress" placeholder="이메일 입력" title="이메일 아이디 입력" style="width:198px;"> @ &nbsp;
												<select id="emailDomain" name="emailDomain" title="이메일 도메인 선택" style="width:180px;">
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
												<input type="text" id="emailDomainText" name="emailDomainText" placeholder="직접입력" title="직접입력" style="width:298px;">
												<input type="hidden" id="emailsum" name="email">
											</td>
										</tr>
									</tbody>
								</table>
								<div class="btn_wrap_riType4">
									<button type="button" id="btnSearchIDByEmail" class="btn_L red">확인</button>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal fade layer_wrap" id="idCheck" role="dialog">
					<div class="modal-content layer_pop" style="width:500px">
						<div class="modal-body pop_cont ">
							<p class="pop_tit st1">회원가입 시 등록한 이름과<br><span class="cal_red">휴대전화번호를</span> 입력해주세요.</p> 
												
							<div class="form_area2">
								<input type="text" id="input_Id" placeholder="이름 입력" title="이름 입력" style="width:240px;">
								<input type="text" id="input_phone" placeholder="전화번호 입력" title="전화번호 입력" style="width:240px; margin-top: 10px;">  	
								<button type="button" class="btn_M white btn_minwidth" id="btn_layerIdChedk" style="margin-top: 10px;">인증요청</button> 	
							</div>
								<input type="text" id="input_sms" placeholder="인증번호 입력" title="인증번호 입력" style="width:240px;">
								<span class="countDown" style="font-size: 18px; color: black; margin-left: 56px; display: none"></span>
							<p id="p_idRule"></p> 
								
							<p id="p_info" style="display: none;"></p>
						</div>
						<div class="btn_wrap_ceType2">
							<button type="button" class="btn_M red" id="btn_layerIdUse">아이디찾기</button>
						</div> 			
						<a href="javascript:sharpNothig();" class="dim_close" id="btn_layerClose" data-dismiss="modal"><span class="hidden">닫기</span></a> 	
					</div>
				</div>
				<div class="title_wrap_type3">
					<h4 class="fl">아이디/비밀번호 찾기 자주 찾는 질문</h4>
					<button type="button" class="btn_arrow4 en_txt fr" id="btn_customerService">고객서비스 FAQ</button>
				</div>
				
				<div class="faq_acco_wrap">
					<div class="faq_wrap">
						<p class="acco_tit">
							<a href="#con1" data-toggle="collapse">
								<span class="txt_ques">Q</span>
								아이디/회원번호/비밀번호가 기억나지 않습니다.
								<span class="btn_faq_toggle">더보기</span>
							</a>
						</p>
						<div class="acco_cont collapse" id="con1">
							<span class="txt_answ">A</span>
							<div>
								<ol>
									<li>1. 아이디 찾기 : 인증기관을 통해 본인 인증 후 확인하시거나 회원님의 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시면 등록된 이메일 주소로 아이디를 발송해 드립니다.</li>
									<li>2. 회원번호 찾기 : 회원님의 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시거나 성명, 생년월일, 회원가입 시 등록한 휴대전화 번호를 입력하시면 확인하실 수 있습니다.</li>
									<li>3. 비밀번호 찾기 : 인증기관을 통해 본인 인증 후 회원님의 비밀번호를 재설정 하시거나 회원님의 아이디, 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시면 등록된 이메일 주소로 임시 비밀번호를 발송해 드립니다.</li>
								</ol><br>
								<p>[외국인의 경우]</p>
								<ol>
									<li>1. 아이디 찾기 : 해외 국적자로 선택하셔서 회원님의 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시면 등록된 이메일 주소로 아이디를 발송해 드립니다.</li>
									<li>2. 회원번호 찾기 : 회원님의 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시면 확인하실 수 있습니다.</li>
									<li>3. 비밀번호 찾기 : 해외 국적자로 선택하셔서 회원님의 아이디, 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시면 등록된 이메일 주소로 임시 비밀번호를 발송해 드립니다.</li>
								</ol>
							</div>
						</div>
					</div>
					<div class="faq_wrap">
						<p class="acco_tit">
							<a href="javascript:sharpNothig();">
								<span class="txt_ques">Q</span>
								회원가입 시 등록한 이메일 주소가 기억나지 않아요. 이메일 주소를 변경하고 싶습니다.
								<span class="btn_faq_toggle">더보기</span>
							</a>
						</p>
						<div class="acco_cont">
							<span class="txt_answ">A</span>
							<div>
								이메일 주소 변경을 원하실 경우 회원님의 신분증(사진이 부착된 주민등록증, 운전면허증, 여권 등)을 회원번호, 연락처, 수신 가능한 이메일, 요청사항을 기재(이메일 주소 변경과 임시 비밀번호 발송)하여 [아시아나클럽 서비스센터]로 FAX를 보내주시기 바랍니다.<br><br>
								※ 주민등록번호 뒷자리는 보이지 않도록 마스킹(가려서) 처리 후 전송
							</div>
						</div>
					</div>
					<div class="faq_wrap">
						<p class="acco_tit">
							<a href="javascript:sharpNothig();">
								<span class="txt_ques">Q</span>
								아이디를 변경하고 싶습니다.
								<span class="btn_faq_toggle">더보기</span>
							</a>
						</p>
						<div class="acco_cont">
							<span class="txt_answ">A</span>
							<div>
							인터넷 회원으로 가입하셨을 때 등록하신 아이디는 다른 아이디로 변경하실 수 없습니다.아이디 변경을 원하실 경우, 번거로우시더라도 인터넷 회원 탈퇴를 하신 후 재가입하시기 바랍니다.
							</div>
						</div>
					</div>
					<div class="faq_wrap">
						<p class="acco_tit">
							<a href="javascript:sharpNothig();">
								<span class="txt_ques">Q</span>
								이메일로 아이디 받기/임시 비밀번호 받기를 신청했는데, 메일이 오지 않습니다.
								<span class="btn_faq_toggle">더보기</span>
							</a>
						</p>
						<div class="acco_cont">
							<span class="txt_answ">A</span>
							<div>
							아이디/임시 비밀번호 이메일이 이미 발송 되었으나 수신여부는 회원님의 이메일 계정의 상황에 따라 다릅니다. 이메일 수신이 안되시는 경우는 회사의 스팸 정책으로 이메일 수신이 차단되거나 스팸 편지함으로 이메일을 받게 되실 수 있습니다. 이메일 수신함의 스팸 편지함도 확인해 보시기 바랍니다. 등록된 이메일로 받기가 어려우신 경우 이메일 주소 변경 요청을 하시거나, 인증기관을 통해 본인 인증 후 확인 또는 비밀번호를 재설정 하시기 바랍니다.
							</div>
						</div>
					</div>
					<div class="faq_wrap">
						<p class="acco_tit">
							<a href="javascript:sharpNothig();">
								<span class="txt_ques">Q</span>
								이메일로 아이디 받기/임시 비밀번호 받기를 신청했는데, 등록된 고객의 정보와 일치하지 않는다고 합니다.
								<span class="btn_faq_toggle">더보기</span>
							</a>
						</p>
						<div class="acco_cont">
							<span class="txt_answ">A</span>
							<div>
							입력하신 이메일과 회원정보의 이메일이 다른 경우입니다. 회원가입 시 등록한 이메일 주소가 기억나지 않으셔서 변경을 원하실 경우 회원님의 신분증(사진이 부착된 주민등록증, 운전면허증, 여권 등)을 회원번호, 연락처, 수신 가능한 이메일, 요청사항을 기재(이메일 주소 변경과 임시 비밀번호 발송)하여 [아시아나클럽 서비스센터]로 FAX를 보내주시기 바랍니다.<br><br>
							※ 주민등록번호 뒷자리는 보이지 않도록 마스킹(가려서) 처리 후 전송
							</div>
						</div>
					</div>
					<div class="faq_wrap">
						<p class="acco_tit">
							<a href="javascript:sharpNothig();">
								<span class="txt_ques">Q</span>
								이메일로 임시 비밀번호를 받았는데, 로그인이 되지 않습니다.
								<span class="btn_faq_toggle">더보기</span>
							</a>
						</p>
						<div class="acco_cont">
							<span class="txt_answ">A</span>
							<div>
							임시 비밀번호는 숫자와 영문자(소문자로) 발송해 드리므로, 대/소문자를 구분하여 입력하시기 바랍니다. 임시 비밀번호를 2회 이상 발송 받으신 경우, 최근 수신한 임시 비밀번호로 로그인하셔야합니다.
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="gray_box">
					<h5>아이디/비밀번호 찾기 불가 시 안내사항</h5>
					<ul class="list_type3">
						<li>아이디/비밀번호 찾기가 어려우신 분은 아래의 본인 확인 정보 및 서류를 보내주시면 임시 비밀번호를 발송하여 드립니다.
							<ul>
								<li>신분증(사진이 부착된 주민등록증, 운전면허증, 여권 등)<br><span class="col_red">* 주민번호 뒷 7자리는 보이지 않도록 마스킹(가려서) 처리 후 전송</span></li>
								<li>연락처(휴대전화번호 등)</li>
								<li>회원번호</li>
								<li>수신 가능한 이메일</li>
								<li class="list_btn">요청사항 예) 이메일 변경과 임시비밀번호 발송<br><a href="javascript:sharpNothig();" id="btnFaxPostInfo" class="btn_arrow">FAX / 우편접수 안내</a></li>
								
							</ul>
						</li>	
					</ul>
				</div>
			
<div id="divLayerFaxPostInfo" class="layer_wrap" style="display:none;">
	<div class="dim_layer"></div>
	<div class="layer_pop" style="width: 600px; top: 460px;">
		<div class="pop_cont">
			<h4>FAX/우편접수 안내</h4>
			<div class="tab_wrap3">
			<ul class="tab_head t4">
				<li class="on">
					<a href="javascript:;" title="선택됨"><span>한국 지역</span></a>
				</li>
				<li>
					<a href="javascript:;"><span>미주 지역</span></a>
				</li>
				<li>
					<a href="javascript:;"><span>일본 지역</span></a>
				</li>
				<li>
					<a href="javascript:;"><span>중국 지역</span></a>
				</li>
			</ul>
			<div class="tab_content">
				
				<div class="tab_cont on">
					<div class="inner">
						<h4 class="hidden">한국 지역&nbsp;(아시아나클럽 서비스 센터)</h4>
						<div class="call_wrap type2">
							<dl>
								<dt>한국 지역&nbsp;(아시아나클럽 서비스 센터)</dt>
								<dd>
									<ul class="list_type3">
										<li class="multi_line">
											<span class="txt_subj">업무시간</span>
											<span>평일 오전 9시 ~ 오후 6시, <br>토 · 일요일 및 공휴일 휴무</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">전화번호</span>
											<span>한국 내 전용 : 1588-8180<br>해외에서 이용 시 : 82-2-2669-8180</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">팩스번호</span>
											<span>한국에서 이용 시 : 02-2669-4275/4276<br>해외에서 이용 시 : 82-2-2669-4275/4276</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">주소</span>
											<span>(07505) 서울시 강서구 오정로 443-83 <br>아시아나타운 아시아나클럽 서비스센터</span>
										</li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
				</div>
				
				<div class="tab_cont">
					<div class="inner">
						<h4 class="hidden">미주 지역&nbsp;(아시아나클럽 서비스 센터)</h4>
						<div class="call_wrap type2">
							<dl>
								<dt>미주 지역&nbsp;(아시아나클럽 서비스 센터)</dt>
								<dd>
									<ul class="list_type3">
										<li class="multi_line">
											<span class="txt_subj">업무시간</span>
											<span>08:30~17:30 (Pacific Standard Time), <br>Monday~Friday</span>
										</li>
										<li>
											<span class="txt_subj">전화번호</span>
											<span>1-800-227-4262</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">팩스번호</span>
											<span>1-213-380-1688</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">주소</span>
											<span>3530 Wilshire Blvd. Suite 1700 Los Angeles, <br>CA 90010 U.S.A.</span>
										</li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
				</div>
				
				<div class="tab_cont">
					<div class="inner">
						<h4 class="hidden">일본 지역&nbsp;(아시아나클럽 서비스 센터)</h4>
						<div class="call_wrap type2">
							<dl>
								<dt>일본 지역&nbsp;(아시아나클럽 서비스 센터)</dt>
								<dd>
									<ul class="list_type3">
										<li class="multi_line">
											<span class="txt_subj">업무시간</span>
											<span>平日午前9時 ~ 午後5時30分 <br>土 · 日曜日 · 祝休日は休業</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">전화번호</span>
											<span>03-3836-2692 81-3-3836-2692 <br>(海外からかける場合)</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">팩스번호</span>
											<span>+81-3-5807-2603</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">주소</span>
											<span>〒110-0005 東京都台東区上野1-10-12<br> 商工中金 第一生命ビル9階<br>アシアナクラブサービスセンター</span>
										</li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
				</div>
				
				<div class="tab_cont">
					<div class="inner">
						<h4 class="hidden">중국 지역&nbsp;(아시아나클럽 서비스 센터)</h4>
						<div class="call_wrap type2">
							<dl>
								<dt>중국 지역&nbsp;(아시아나클럽 서비스 센터)</dt>
								<dd>
									<ul class="list_type3">
										<li>
											<span class="txt_subj">업무시간</span>
											<span>工作日  8:30 ~17:30 (周末及法定节假日休息)</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">전화번호</span>
											<span>中国境内拨打时 : 400-650-8000<br>中国境外拨打时 : 86-10-8451-0101</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">팩스번호</span>
											<span>+86-10-8460-9588</span>
										</li>
										<li class="multi_line">
											<span class="txt_subj">주소</span>
											<span>中国北京市朝阳区东三环北路霞光里<br>18号佳程广场 A座12层 邮编 : 100027</span>
										</li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		</div>
		<a href="javascript:;" class="dim_close"><span class="hidden">닫기</span></a> 
	</div>
</div>
</div>
<form action="FindIdResult" method="post" id="findIdResultForm">
	<input type="hidden" id="findIdResult" name="id">
</form>

<script type="text/javascript">
var emailOne="";
var emailTwo="";

//이메일찾기ajax
$("#btnSearchIDByEmail").click(function(){
	var email2 = $("#emailsum").val();
	var name2 =$("#lastName").val();
	console.log(name2);
	console.log(email2);
	if(name2 != "" && email2 != ""){
		LS();
		$.post("memberidFindbyEmail",{
			name : name2,
			email : email2
		},
		function(data, status){
			console.log(status == "success")
			if(status == "success"){
				LE();

				window.setTimeout(function(){
					if(data == 0){
						alert('입력한 정보와 일치하는 회원이 존재하지 않습니다. \n다시 확인 후 입력해주세요');
					}else{
						alert('입력하신 메일로 아이디를 전송했습니다. 메일을 확인해주세요');
					}
				}, 50);
			
			}
			
		}
		);
		

	}
});

//아이디찾기 방식
$(".findtype").click(function(){
	$(".findtype").each(function(){
		$(this).removeClass('on');
	});

	$(this).addClass('on');
	if($(this).children().prop('id')== 'findbyphone' ){
		$("#divphone").css("display", "block");
		$("#divemail").css("display","none");
	}else{
		$("#divphone").css("display", "none");
		$("#divemail").css("display","block");
	}
	
});

//도메인 선택
$("#emailDomain").change(function(){
	if($("#emailDomain option:eq(0)").prop("selected")){
		$("#emailDomainText").css("display","inline");
		$("#emailsum").val(emailOne+'@');
	}else{
		$("#emailDomainText").css("display","none");
		emailTwo = $(this).val();
		$("#emailsum").val(emailOne+'@'+emailTwo);
	}
});


//이메일 작업
$("#emailAddress").blur(function(){
	emailOne = $(this).val();
	$("#emailsum").val(emailOne+'@'+emailTwo);
});

$("#emailDomainText").blur(function(){
	emailTwo = $(this).val();
	$("#emailsum").val(emailOne+'@'+emailTwo);
});

var SetTime = 300;		// 최초 설정 시간(5분)

function msg_time() {	// 1초씩 카운트 하는 함수

	var minute = Math.floor(SetTime/60); //현재 남은 시간(분)
	var second = SetTime % 60; //현재 남은 시간(초)
	if(second < 10){
		second = 0 +""+ second;
	}
	var msg =  minute+ " : " + second;
	$(".countDown").text(msg);	//카운트다운 보여줄 곳에 남은 시간 표시
	SetTime--;					// 남은 시간 1씩 감소
	if (SetTime < 0) {			// 시간이 종료 되면
		clearInterval(tid);		// 타이머 해제
		$("#p_idRule").html('요청 인증 시간이 <span class="col_brown">만료됐습니다. </span> 인증요청을 다시 진행해주세요.');
		$(".countDown").css("color", "red");
	}
}

$("#btn_layerIdChedk").click(function(){
	var name = $("#input_Id").val();
	var phone = $("#input_phone").val();
	$.get("memberidFindbyPhone?name="+name+"&phone="+phone, function(data){
		if(data > 0){
			$("#p_idRule").html('인증번호를 전송했습니다. <span class="col_brown">숫자 6자리를 </span>입력해주세요.');
			//function TimerStart2(){ tid=setInterval('msg_time()',1000) };
			SetTime = 300;
			TimerStart();
			$(".countDown").css("color", "black");
			$(".countDown").css("display","inline");
			
		}else{
			$("#p_idRule").html('존재하지 않는 회원입니다. <span class="col_brown">이름, 휴대전화번호를 </span> 다시 확인 후 입력해주세요.');
		}
	});
});

function TimerStart(){ tid=setInterval('msg_time()',1000) };

$("#btn_layerIdUse").click(function(){
	var code = $("#input_sms").val();
	var name = $("#input_Id").val();
	var phone = $("#input_phone").val();
	$.post("memberidFindbyPhone",{
			code : code,
			name : name,
			phone : phone
		},
		function(data){
			data = data.trim();
			if(data == "0"){
				$("#p_idRule").html('잘못된  <span class="col_brown">인증번호 입니다.</span> 다시 확인 후 입력해주세요.');
			}else if(data == "1"){
				$("#p_idRule").html('인증기간이   <span class="col_brown">만료 된 코드입니다.</span> 다시 코드를 발급받아주세요');
			}else{
				$("#findIdResult").val(data);
				$("#findIdResultForm").submit();
				
			}
		}
		);
});

</script>
</body>
</html>