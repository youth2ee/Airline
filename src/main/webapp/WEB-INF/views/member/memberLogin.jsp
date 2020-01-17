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
<c:import url="../template/hhhhheader.jsp"></c:import>
<div class="container" id="container">
				<h3>로그인</h3> 
				<form action="">
					<fieldset>
						<legend>로그인 및 비로그인 예약조회 폼</legend> 
						<div class="login_wrap">
							<div class="tab_wrap3">
								<ul class="tab_head t2">
									<li class="on">
										<a href="#" id="Logintab" title="선택됨" style="height: 63px;"><span>로그인</span></a> 
									</li>
									<li>
										<a href="#" id="noLogintab" style="height: 63px;"><span>비로그인 예약조회</span></a> 
									</li>
								</ul>
							</div>

							
							<div class="inner" id="logindiv">
								<h4 class="hidden">로그인</h4> 

								<div id="snsBlockNotice" style="display:none">
									<div class="title_wrap_type2 text_type2">
										<h5>SNS 로그인 연결</h5> 
									</div>
									<p class="col_gray55 mar_to20">고객님께서 선택하신 <span class="fo_bol col_black" id="snsTypeInSnsBlock1"></span>에 성공적으로 로그인 되었으나, 아시아나클럽 회원정보에 연결된 계정을 찾을 수 없습니다.</p> 
									<ul class="list_type3 mar_to20 col_gray">
										<li>아시아나클럽 계정을 보유하고 있으실 경우 해당 아이디 또는 회원번호로 로그인하여 <span class="fo_bol col_black" id="snsTypeInSnsBlock2"></span> 간편 로그인을 연동하여 주시기 바랍니다.</li> 
										<li>아시아나클럽 계정이 없으실 경우 [회원가입]버튼을 클릭하여 회원가입을 진행해주시기 바랍니다.</li> 
									</ul>
								</div>

								<div class="login_check_area" id="login_check_area">
									<input type="radio" id="loginType_ID" name="loginType" value="I" checked=""><label for="loginType_ID">아이디 로그인</label> 
									<input type="radio" id="loginType_ACNO" name="loginType" value="A"><label for="loginType_ACNO">회원번호 로그인</label> 
								</div>

								<div class="input_wrap">
									<input type="text" id="txtID" placeholder="아이디 입력" title="아이디 입력" style="width:468px;"> 
									<input type="password" id="txtPW" placeholder="비밀번호 입력" title="비밀번호 입력" style="width:468px;" autocomplete="off"> 
								</div>

								
										<div id="login_g-recaptcha" class="g-recaptcha" style="display: none;"><div style="width: 304px; height: 78px;"><div><iframe src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LcyoDwUAAAAAG42mLWkJPNAs35QRLvnl2O0xOCJ&amp;co=aHR0cHM6Ly9mbHlhc2lhbmEuY29tOjQ0Mw..&amp;hl=ko&amp;v=eQmzkx3d5dtuXlLOA4pEID3I&amp;size=normal&amp;cb=o1yptad4otty" width="304" height="78" role="presentation" name="a-myz234i7wcb6" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div></div>
										<input type="hidden" id="login_recaptchaResponse" name="login_recaptchaResponse">
									

								<div class="id_save_wrap" id="memchk" style="padding-top:0px">
									<input type="checkbox" id="chkSaveID">
									<label for="chkSaveID" id="labelSaveID" class="id_save">아이디 저장</label> 
								</div>

								<div class="login_btn_wrap" style="position:initial">
									<button type="button" id="btnLogin" name="btnLogin" class="btn_L red">로그인</button> 
								</div>

								<div class="login_info_wrap">
									<div class="left">
										<ul class="login_link">
											<li>
												<a id="btnIDSearch" href="javascript:;"><span class="col_black">아이디 찾기</span></a> 
											</li>
											<li>
												<a id="btnAcnoSearch" href="javascript:;"><span class="col_black">회원번호 찾기</span></a> 
											</li>
											<li>
												<a id="btnPWSearch" href="javascript:;"><span class="col_black">비밀번호 찾기</span></a> 
											</li>
										</ul>
									</div>
									<div class="right">
										<button type="button" id="btnRegister" name="btnRegister" class="btn_M gray">회원가입</button> 
									</div>
								</div>

								

								<div class="sns_btn_wrap ">
									<ul>
										<li class="btn_kakao">
											<a href="javascript:;" id="btnSNSLogin_kakao"><strong>카카오톡</strong>간편로그인</a> 
										</li>
										
										<li class="btn_facebook">
											<a href="javascript:;" id="btnSNSLogin_facebook"><strong>페이스북</strong>간편로그인</a> 
										</li>
										
										<li class="btn_naver">
											<a href="javascript:;" id="btnSNSLogin_naver"><strong>네이버</strong>간편로그인</a> 
										</li>
									</ul>
								</div>
							</div>
							


							<div class="inner" id="noLogindiv" style="display:none; margin-top: 25px;">
								<h4 class="hidden">비로그인 예약조회</h4> 
								<div class="input_wrap">
									<input type="text" id="reservationId" placeholder="예약번호 입력 ex) 5XT9UU / 12345678" title="예약번호 입력" style="width:468px;"> 
									<div class="itinerary">
										<div class="itinerary_calendar">
											<div class="calendar_wrap">
												<label for="sCalendar" class="spot_place" name="calDesc">탑승일 선택</label> 
												<input type="text" id="sCalendar" class="datepicker" autocomplete="off" data-type="single" readonly="">
												<a href="javascript:sharpNothig();" class="btn_airport type2 calendar_focus"><span class="hidden">탑승일 선택 달력보기</span></a>
												<div class="txt_round_trip" name="txt_round_trip">
													<span></span>
													<span></span>
													<span></span>
													<span></span>
												</div>
											</div>
											
											<div class="calendar_layer">
												<h4 class="hidden">달력</h4> 
												<div class="calendar_top">
													<select name="" id="" class="white" title="탑승연도 및 월">
														<option value="">2017.08</option>
													</select>
												</div>
												<div class="compareCalendar"></div>
												<a href="javascript:sharpNothig();" class="cal_status">가는날</a><a href="javascript:sharpNothig();" class="cal_reset" name="cal_reset"><span class="hidden">달력 새로고침</span></a> 
												<a href="javascript:sharpNothig();" class="btn_cal_close"><span class="hidden">닫기</span></a> 
											</div>
											
										</div>
										<div class="itinerary_select spot_proven">
											<input type="hidden" id="departureArea1" name="departureArea1" value="">
											<input type="hidden" id="departureAirport1" name="departureAirport1" value="">
											<input type="hidden" id="departureCityName1" name="departureCityName1" value="">
											<label for="txtDepartureAirport1" class="spot_place" id="labelDepartureAirport1">출발지 선택</label> 
											<input type="text" id="txtDepartureAirport1" name="txtDepartureAirport1" class="spotentry" title="출발지 입력" deparrtype="dep"> 
											<input type="hidden" name="default" area="" airport="">
											<a href="javascript:sharpNothig();" class="btn_airport type2" id="btn_depAllAirport1" name="btn_layer1" seg="dep1" onclick="javascript:showAirportLayer(this);"><span class="hidden">전체도시보기</span></a> 
											<div class="shadow_layer search_flight" name="shadow_layer">
												<div class="inner">
													<div class="route_list search_auto" id="divDepAirportAC1" name="search_auto" target="txtDepartureAirport1">
														<p class="title">자동 완성</p> 
														<div class="empty_box" name="empty_box">매칭되는 공항이 없습니다.</div> 
													</div>
													<input type="hidden" name="default" area="" airport="">
													<button type="button" class="btn_popup" title="전체도시보기 새창으로 열기" id="btn_depAllAirport1" name="btn_layer1" seg="dep1" onclick="javascript:showAirportLayer(this);">전체도시보기</button> 
												</div>
												<a href="javascript:sharpNothig();" class="layer_close"><span class="hidden">닫기</span></a> 
											</div>
										</div>
										<div class="itinerary_select spot_destin">
											<input type="hidden" id="arrivalArea1" name="arrivalArea1" value="">
											<input type="hidden" id="arrivalAirport1" name="arrivalAirport1" value="">
											<input type="hidden" id="arrivalCityName1" name="arrivalCityName1" value="">
											<label for="txtArrivalAirport1" class="spot_place" id="labelArrivalAirport1" name="spot_place">도착지 선택</label> 
											<input type="text" id="txtArrivalAirport1" name="txtArrivalAirport1" class="spotentry" title="도착지 입력" deparrtype="Arr"> 
											<input type="hidden" name="default" area="" airport="">
											<a href="javascript:sharpNothig();" class="btn_airport type2" id="btn_arrAllAirport1" name="btn_layer1" seg="arr1" onclick="javascript:showAirportLayer(this);"><span class="hidden">전체도시보기</span></a> 
											<div class="shadow_layer search_flight" name="shadow_layer">
												<div class="inner">
													<div class="route_list search_auto" id="divArrAirportAC1" name="search_auto" target="txtArrivalAirport1">
														<p class="title">자동 완성</p> 
														<div class="empty_box" name="empty_box">매칭되는 공항이 없습니다.</div>  
													</div>
													<input type="hidden" name="default" area="" airport="">
													<button type="button" class="btn_popup" title="전체도시보기 새창으로 열기" id="btn_arrAllAirport1" name="btn_layer1" seg="arr1" onclick="javascript:showAirportLayer(this);">전체도시보기</button> 
												</div>
												<a href="javascript:sharpNothig();" class="layer_close"><span class="hidden">닫기</span></a> 
											</div>
										</div>
									</div>
									
									<input type="text" id="passengerName" placeholder="예약 시 입력한 영문/국문 성(Last Name, 姓) 입력" title="예약 시 입력한 영문/국문 성(Last Name, 姓) 입력" style="width:468px;"> 
								</div>

								
								<div id="captchaDiv" style="display:none;">
								
										<div id="noLogin_g-recaptcha" class="g-recaptcha" style="display: none;"><div style="width: 304px; height: 78px;"><div><iframe src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LcyoDwUAAAAAG42mLWkJPNAs35QRLvnl2O0xOCJ&amp;co=aHR0cHM6Ly9mbHlhc2lhbmEuY29tOjQ0Mw..&amp;hl=ko&amp;v=eQmzkx3d5dtuXlLOA4pEID3I&amp;size=normal&amp;cb=ygxeksn24wti" width="304" height="78" role="presentation" name="a-9zoch63k3dmq" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><textarea id="g-recaptcha-response-1" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div></div>
										<input type="hidden" id="noLogin_recaptchaResponse" name="noLogin_recaptchaResponse">
									
								</div>
								

								<div class="login_btn_wrap">
									<button type="button" id="btnNoLogin" class="btn_L red">예약조회</button> 
								</div>
							</div>
						
						</div>
					</fieldset>
				</form>

				
				<div id="divLayerNational" class="layer_wrap">
					<div class="dim_layer"></div>
					<div class="layer_pop" style="width:540px;">
						<div class="pop_cont">
							<h4>국적 확인</h4> 
							<p class="pop_tit st1">내/외국인 회원 유형별 <span id="spanLayerNationalType"></span>페이지로 이동 가능합니다. 회원님의 국적을 선택해주시기 바랍니다. <br>회원님의 국적을 선택해주시기 바랍니다.</p>
							
						</div>
						<div class="btn_wrap_ceType2 maxHalf">
							<button type="button" id="btnIdPwSearch_F" class="btn_M white">외국국적</button> 
							<button type="button" id="btnIdPwSearch_K" class="btn_M red">한국국적</button> 
						</div>
						<a href="javascript:sharpNothig();" id="divLayerNational_close" class="dim_close">
							<span class="hidden">닫기</span> 
						</a>
					</div>
				</div>
				
				<div id="depAllAirport1" name="allAirport" class="layer_wrap">
					<div class="dim_layer"></div>
					<div class="layer_pop select_airport">
						<div class="pop_header">
							<h3 class="tit">공항 선택</h3> 
						</div>
						<div class="pop_cont">
							<h5 class="mar_to20">국내선</h5> 
							<div class="flights_list domestic">
								
							</div>

							<h5 class="mar_to20">국제선</h5> 
							<div class="flights_list national">
								
							</div>
						</div>

						<a href="javascript:sharpNothig();" class="dim_close white"><span class="hidden">닫기</span></a> 
					</div>
				</div>
				
				<div id="divLayerTempPassword" class="layer_wrap">
					<div class="dim_layer"></div>
					<div class="layer_pop" style="width:500px;">
						<div class="pop_cont">
							<p class="pop_tit st1">임시비밀번호로 로그인한 회원님께서는 새로운 비밀번호로 변경 후 사용해주시기 바랍니다.</p> 
							<p>[비밀번호 변경하기] 버튼을 클릭 하시면, 비밀번호 변경을 위한 ‘마이 아시아나’의 비밀번호 변경페이지로 이동합니다.</p> 
						</div>
						<div class="btn_wrap_ceType2">
							<button type="button" id="btnAfterChange" class="btn_M white">나중에 변경하기</button> 
							<button type="button" id="btnChangePassword" class="btn_M red">비밀번호 변경하기</button> 
						</div>
						<a href="javascript:sharpNothig();" class="dim_close"><span class="hidden">닫기</span></a> 
					</div>
				</div>
				
				<div id="divLayerPassengetWarn" class="layer_wrap">
					<div class="dim_layer"></div>
					<div class="layer_pop" style="width:400px;">
						<div class="pop_cont">
							<br>
							<br>
							<p>탑승자 본인이 아닐 경우, 탑승자 본인의 동의 없이 탑승자의 예약 정보 및 관련 부가서비스 정보를 조회, 변경, 취소 할 경우 민·형사상 법적 책임을 질 수 있습니다. </p> 
						</div>
						<div class="btn_wrap_ceType2">
							<button type="button" id="btnAgreePassengetWarn" class="btn_M red">동의</button> 
						</div>
						<a href="javascript:sharpNothig();" class="dim_close"><span class="hidden">닫기</span></a> 
					</div>
				</div>
				
				
			</div>
		</form>
	</div>
	<footer>
		<div>
		</div>
	</footer>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/velocity.min.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/moment.min.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/set_calendar.js"></script>
<script type="text/javascript" src="https://flyasiana.com/resources/script/jquery-ui-custom.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/pc/IBECommon.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/rsa.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/jsbn.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/prng4.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/rng.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/IBEutil.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/jquery.countdown.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/IBESession.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/weblog.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/velocity.min.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/renewer.main.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/moment.min.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/dateUtil.js"></script>
<script type="text/javascript" src="https://flyasiana.com/resources/script/jquery-ui-custom.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/scrolloverflow.min.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/jquery.fullPage.min.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/ui.main.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/set_calendar.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/netfunnel.js" charset="UTF-8"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/netfunnel_skin.js" charset="UTF-8"></script>
<script type="text/javascript" src="https://flyasiana.com/js/common/IBESession.js"></script>
<script type="text/javascript" src="https://flyasiana.com/js/pc/IBEMain.js"></script>
<script type="text/javascript" src="https://flyasiana.com/C/pc/js/util.js"></script>
</body>
</html>