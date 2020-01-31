<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="main_header_wrap">
	<div class="skip_navi">
		<a href="#fullMenu">컨텐츠 바로가기</a>
		<a href="#nav">주요메뉴 바로가기</a>
	</div>
	


<div class="main_notibox" style="display:block;">
	
		<div class="cookie notice gray" id="cookieNotice" style="">
			<div class="noti_inner">
				<div class="fl">
					<p class="text_type2 white"> 본 사이트는 보다 나은 서비스 제공을 위해 쿠키를 사용합니다. 안내를 확인하시고 사이트를 이용하세요.
					<a href="javascript:cms.goToLink('/C/KR/KO/contents/cookies?menuId=CM201802220000728526','_blank');" class="btn_arrow black" onclick="javascript:action_logging({pagecode:'01_TOP_08'});">
						자세히보기
					</a></p>
				</div>
				<div class="fr">
					<a href="javascript:sharpNothig();" class="noti_check" onclick="javascript:action_logging({pagecode:'01_TOP_08'});"><span>확인</span></a>
				</div>
			</div>
		</div>
	

	<!-- 태블릿 전용 -->
	
	
</div>

	<!-- util_wrap -->
	<div class="util_wrap">
		<div class="inner">
			<div class="fav_link">
				<ul>
				
					<li><a href="javascript:sharpNothig();" onclick="action_logging_common('TOP_01'); cms.goToLink('/C/KR/KO/club/earn-mileage-mall?menuId=CM201802220000728447');">마일리지 적립몰</a></li>
				
					<li><a href="javascript:sharpNothig();" onclick="action_logging_common('TOP_02'); cms.goToLink('http://dutyfree.flyasiana.com/ko', '_blank');">기내 면세점</a></li>
				
					<li>
						<a href="javascript:sharpNothig();" id="corporatePlusGo">기업우대</a>
						<div class="corporate_layer_wrap" id="corporatePlus" style="display:none;">
							<div class="dim_layer corporatePlusClose"></div>
							<div class="layer_pop" style="position:fixed;width:600px; left:50%; top:50%; margin:0; transform:translateX(-300px) translateY(-50.2%)" tabindex="0">
								<div class="pop_cont">
									<h4>Asiana Corporate Plus 로 이동</h4>
									<p class="pop_tit st3">Asiana Corporate Plus 는 중소·중견기업 고객을 위한 아시아나의 특별한 기업 우대 프로그램입니다. 개인 특가와 혜택 및 조건이 상이하므로 예매시 참고하시기 바랍니다.(단, 기업우대혜택은 기업우대 발권시에만 적용)</p>
								</div>
								<div class="btn_wrap_ceType2">
									<button type="button" class="btn_M white confirm-cancel corporatePlusClose">취소</button>
									<button type="button" onclick="action_logging_common('TOP_09');cms.goToLink('/I/KR/KO/ACTQuick.do', '_blank');" class="btn_M red confirm-ok ">확인</button>
								</div>
								<button class="dim_close corporatePlusClose"><span class="hidden">닫기</span></button>
							</div>
						</div>
						<script>
						document.addEventListener("DOMContentLoaded", function(){
							$('#corporatePlusGo').on('click', function(e){								
								e.preventDefault();								
								$('#corporatePlus').css('display','block').find('.confirm-ok').on('click', function(e){									
									$('#corporatePlus').css('display','none');
								});
							});
							$('.corporatePlusClose').on('click',function(e){
								e.preventDefault();						
								$('#corporatePlus').css('display','none');
								
							});
						});
						</script>
					</li>
				
				</ul>
			</div>
			<div class="util_menu">
				<ul>
			    
			    	<li><a href="javascript:sharpNothig();" onclick="action_logging_common('TOP_03'); cms.goToLink('/I/KR/KO/viewLogin.do?callType=IBE&amp;menuId=CM201802220000728453');">로그인</a></li>
			    	
					<li>
						<a href="javascript:sharpNothig();" onclick="action_logging_common('TOP_05'); cms.goToLink('/C/KR/KO/event/index?menuId=CM201802220000728482');">이벤트</a>
					</li>
					<li>
						<a href="javascript:sharpNothig();" onclick="action_logging_common('TOP_06'); cms.goToLink('/C/KR/KO/customer/main?menuId=CM201802220000728474');">고객서비스</a>
						<ul>
						
								<li><a href="javascript:sharpNothig();" onclick="cms.goToLink('/C/KR/KO//customer/notice/list');">공지사항</a></li>
							
								<li><a href="javascript:sharpNothig();" onclick="cms.goToLink('/C/KR/KO//customer/guidance/index');">자주찾는질문</a></li>
							
								<li><a href="javascript:sharpNothig();" onclick="cms.goToLink('/C/KR/KO//customer/voc');">고객의 말씀</a></li>
							
								<li><a href="javascript:sharpNothig();" onclick="cms.goToLink('/C/KR/KO//customer/form-download/list');">양식다운로드</a></li>
							
						</ul>
					</li>
					
					<li class="lang_select01">
							<!-- 언어 별 클래스 -->
							<!-- <span class="country kor">대한민국</span>
							<span class="country usa">USA</span>
							<span class="country jpn">일본</span>
							<span class="country chn">중국</span>
							<span class="country eas">동남아</span>
							<span class="country eur">유럽</span>
							<span class="country oce">오세아니아</span>
							<span class="country rus">러시아</span> -->
							<!-- 언어 별 클래스 -->
							
									<a class="btn_language" href="javascript:sharpNothig();" onclick="action_logging_common('TOP_07');" title="지역/언어 선택 열기">
									<span class="country01">대한민국</span>
									</a>
								


						<a href="javascript:sharpNothig();" onclick="action_logging_common('TOP_07');cms.setNatLng('KR','KO');" title="언어 선택"><span class="lang01 on">한국어</span></a><a href="javascript:sharpNothig();" onclick="action_logging_common('TOP_07');cms.setNatLng('KR','EN');" title="언어 선택"><span class="lang01">English</span></a><div class="layer_pop type2 right" id="layerLanguage" style="display:none; width:auto;min-height:135px;">
							<form name="frmRegLan" id="frmRegLan">
								<input type="hidden" name="changeLangCode" value="false">
							</form>
							<div class="pop_cont01">
								<p class="pop_tit st1">선택하세요</p>
								<div class="mar_to20">
									
											<select id="nation" title="국가" onchange="cms.setLang(this);" style="width:200px;">
												
														<option value="KR">대한민국</option>
														<option value="DE">독일</option>
														
														<option value="US">미국</option>
														<option value="VN">베트남</option>
														<option value="ES">스페인</option>
														<option value="SG">싱가포르</option>
														<option value="GB">영국</option>
														<option value="UZ">우즈베키스탄</option>
														<option value="IT">이탈리아</option>
														
														<option value="ID">인도네시아</option>
														<option value="JP">일본</option>
														<option value="CN">중국</option>
														<option value="HK">중국, 홍콩</option>
														<option value="KZ">카자흐스탄</option>
														<option value="KH">캄보디아</option>
														<option value="TH">태국</option>
														<option value="TR">터키</option>
														<option value="FR">프랑스</option>
														<option value="PH">필리핀</option>
														<option value="AU">호주</option>
														<option value="MN">몽골</option>
													
											</select>
										
									<select id="lang" title="언어" style="width:160px;"><option value="KO">한국어</option><option value="EN">English</option></select>
									<button type="button" class="btn_M red" onclick="cms.setNatLng();">적용하기</button>
								</div>
								<!-- <div class="mar_to15">
									<input type="checkbox" id="chkSave" checked>
									<label for="chkSave">설정저장</label>
								</div> -->
							</div>
							<a href="javascript:sharpNothig();" class="lang_close top25"><span class="hidden">닫기</span></a>
						</div>
					</li>
					
			    	
					
				</ul>
			</div>

		</div>
	</div>
	<!--// util_wrap -->

	<!-- header -->
	<header class="main">
		<div class="header_bg"></div>
		<div class="h_inner">

			<h1 class="logo"><a href="javascript:sharpNothig();" onclick="action_logging_common('GNB_01'); cms.goToLink('/C/KR/KO/index');"><span class="hidden">ASIANA AIRLINES</span></a></h1>

			<!-- nav -->
			

<nav id="nav">
	<span class="nav_line" style=""></span>
	<ul class="nav_list">


		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728253" target="_self" data-id="CM201802220000728253">예약</a>
				
    		<div class="nav_cont col5 wide">
    	
		<ul class="nav_d2">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728254" target="_self" data-id="CM201802220000728254">항공권 예약</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728255" target="_self" data-id="CM201802220000728255">항공권 예약</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728256" target="_self" data-id="CM201802220000728256">최저가 간편조회</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728257" target="_self" data-id="CM201802220000728257">오즈드림페어</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728260" target="_self" data-id="CM201802220000728260">신용카드 혜택</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728261" target="_self" data-id="CM201802220000728261">예약 안내</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728267" target="_self" data-id="CM201802220000728267">운임 안내</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728270" target="_self" data-id="CM201802220000728270">예약 조회</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728271" target="_self" data-id="CM201802220000728271">예약 내역</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728272" target="_self" data-id="CM201802220000728272">항공권 구매 내역</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728273" target="_self" data-id="CM201802220000728273">체크인</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728274" target="_self" data-id="CM201802220000728274">운항정보</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728275" target="_self" data-id="CM201802220000728275">스케줄 조회</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728276" target="_self" data-id="CM201802220000728276">출도착 조회</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728277" target="_self" data-id="CM201802220000728277">취항지정보</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728278" target="_self" data-id="CM201802220000728278">운항 노선</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728279" target="_self" data-id="CM201802220000728279">여행 정보</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201901160001126270" target="_self" data-id="CM201901160001126270">캐빈승무원 여행일기</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201906280001141751" target="_self" data-id="CM201906280001141751">아시아도 아시아나!</a>
				
		</li>
	
				</ul>
			
			</li>
		
				</ul>
			

				</div>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728284" target="_self" data-id="CM201802220000728284">여행 준비</a>
				
    		<div class="nav_cont col5 wide">
    	
		<ul class="nav_d2">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728285" target="_self" data-id="CM201802220000728285">체크인</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728286" target="_self" data-id="CM201802220000728286">사전 체크인</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728289" target="_self" data-id="CM201802220000728289">공항 체크인</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201909240001147374" target="_self" data-id="CM201909240001147374">사전 좌석 배정</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728296" target="_self" data-id="CM201802220000728296">수하물</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728297" target="_self" data-id="CM201802220000728297">이용 안내</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728298" target="_self" data-id="CM201802220000728298">위탁 수하물</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728304" target="_self" data-id="CM201802220000728304">휴대 수하물</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728306" target="_self" data-id="CM201802220000728306">수하물 계산기</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728308" target="_self" data-id="CM201802220000728308">운송제한 물품</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728309" target="_self" data-id="CM201802220000728309">수하물 보상</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728312" target="_self" data-id="CM201802220000728312">도움이 필요한 고객</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728313" target="_self" data-id="CM201802220000728313">유아여행 안내</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728316" target="_self" data-id="CM201802220000728316">혼자 여행하는 어린이/청소년</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728319" target="_self" data-id="CM201802220000728319">임신 중 여행</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728320" target="_self" data-id="CM201802220000728320">장애인 고객</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728321" target="_self" data-id="CM201802220000728321">패밀리 서비스</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728322" target="_self" data-id="CM201802220000728322">반려동물 동반</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728325" target="_self" data-id="CM201802220000728325">의료도움이 필요한 고객</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728328" target="_self" data-id="CM201802220000728328">출입국 신고서</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728329" target="_self" data-id="CM201802220000728329">출입국 신고서</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728330" target="_self" data-id="CM201802220000728330">미국 입출국 기록(I-94)전자열람</a>
				
		</li>
	
				</ul>
			
			</li>
		
				</ul>
			

				</div>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728331" target="_self" data-id="CM201802220000728331">여행</a>
				
    		<div class="nav_cont col5 wide">
    	
		<ul class="nav_d2">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728332" target="_self" data-id="CM201802220000728332">공항에서</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728333" target="_self" data-id="CM201802220000728333">공항 안내</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728334" target="_self" data-id="CM201802220000728334">탑승수속 절차</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728337" target="_self" data-id="CM201802220000728337">라운지 이용</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728342" target="_self" data-id="CM201802220000728342">기내에서</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728343" target="_self" data-id="CM201802220000728343">클래스별안내</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728358" target="_self" data-id="CM201802220000728358">기내식/음료</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728363" target="_self" data-id="CM201802220000728363">기내서비스순서</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728364" target="_self" data-id="CM201802220000728364">기내특별서비스</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728367" target="_self" data-id="CM201802220000728367">기내유실물조회</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728368" target="_self" data-id="CM201802220000728368">기내 엔터테인먼트</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728371" target="_self" data-id="CM201802220000728371">기내지 ASIANA 모바일앱</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728372" target="_self" data-id="CM201802220000728372">국제선 기내면세품</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728373" target="_self" data-id="CM201802220000728373">국내선 기내통신 판매</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728374" target="_self" data-id="CM201802220000728374">기내건강</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728375" target="_self" data-id="CM201802220000728375">휴대용전자기기 사용안내</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728376" target="_self" data-id="CM201802220000728376">항공기 정보</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728377" target="_self" data-id="CM201802220000728377">A380-800</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728379" target="_self" data-id="CM201802220000728379">B747-400</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728378" target="_self" data-id="CM201802220000728378">A350-900</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728380" target="_self" data-id="CM201802220000728380">B777-200ER</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728381" target="_self" data-id="CM201802220000728381">B767-300</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728382" target="_self" data-id="CM201802220000728382">A330-300</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201906120001140983" target="_self" data-id="CM201906120001140983">A321-neo</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728383" target="_self" data-id="CM201802220000728383">A321-100/200</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728384" target="_self" data-id="CM201802220000728384">A320-200</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728386" target="_self" data-id="CM201802220000728386">유료 부가서비스</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728390" target="_self" data-id="CM201802220000728390">레그룸 좌석</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201907300001143699" target="_self" data-id="CM201907300001143699">국내선 비즈니스 존</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201907300001143700" target="_self" data-id="CM201907300001143700">프론트 존</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201907300001143701" target="_self" data-id="CM201907300001143701">듀오 좌석</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728388" target="_self" data-id="CM201802220000728388">이코노미 스마티움</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728387" target="_self" data-id="CM201802220000728387">로얄 비즈니스</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201901080001124226" target="_self" data-id="CM201901080001124226">업그레이드 스탠바이</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728393" target="_self" data-id="CM201802220000728393">기내 Wi-Fi</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728392" target="_self" data-id="CM201802220000728392">도움이 필요한 고객</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728385" target="_self" data-id="CM201802220000728385">매직보딩패스</a>
				
		</li>
	
				</ul>
			

				</div>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728394" target="_self" data-id="CM201802220000728394">아시아나클럽</a>
				
    		<div class="nav_cont col3">
    	
		<ul class="nav_d2">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728395" target="_self" data-id="CM201802220000728395">회원제도</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728396" target="_self" data-id="CM201802220000728396">회원안내</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728403" target="_self" data-id="CM201802220000728403">특별 프로그램</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728407" target="_self" data-id="CM201802220000728407">할인제휴사</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728410" target="_self" data-id="CM201802220000728410">마일리지적립</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728411" target="_self" data-id="CM201802220000728411">아시아나항공</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728416" target="_self" data-id="CM201802220000728416">스타얼라이언스/제휴항공사</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201811260001094805" target="_self" data-id="CM201811260001094805">마일리지 적립몰</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728420" target="_self" data-id="CM201802220000728420">금융(신용카드,환전)</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728424" target="_self" data-id="CM201802220000728424">쇼핑</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728421" target="_self" data-id="CM201802220000728421">여행(호텔,렌터카,여행자보험)</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728425" target="_self" data-id="CM201802220000728425">라이프(통신,보험)</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728426" target="_self" data-id="CM201802220000728426">누락마일리지적립</a>
				
		</li>
	
				</ul>
			
			</li>
		
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728429" target="_self" data-id="CM201802220000728429">마일리지사용</a>
				
		<ul class="nav_d3">
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728430" target="_self" data-id="CM201802220000728430">아시아나항공</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728434" target="_self" data-id="CM201802220000728434">스타얼라이언스/제휴항공사</a>
				
		</li>
	
		<li>
			
					<a onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;" href="/C/KR/KO/menu/id/CM201802220000728439" target="_self" data-id="CM201802220000728439">마일리지사용몰</a>
				
		</li>
	
			</ul>

			
			</li>
		
			</ul>

			

					<!-- gnb banner -->
					<div class="gnb_banner type2">
						
								<a onclick="loadingOpen('entire');" href="https://www.flyasiana.com/C/KR/KO/customer/notice/detail?id=CM201910250001150469" target="_self">
									<div class="img_wrap">

										<img src="https://ozimg.flyasiana.com/temp/image/20191128/7a726cd7-2db8-4448-9bb9-01fb4d754be7.jpeg" alt="아사아니클럽 우수회원 제도 안내" style="height:100%;">
									</div>
									
								</a>
							

					</div>
					<!--// gnb banner -->
					
				</div>
			
			</li>
		
	</ul>
</nav>

			<!--// nav -->

		    <!-- nav_right -->
            

<div class="nav_right">
	
		<div class="chatbot_area">
			<a class="btn_chatbot" href="#" title="새창" onclick="fnOpenChatbot('All_PC_CB');return false;">
				<span class="btn_chatbot-text">쳇봇</span>
				<div class="hdlayer_wrap">
					<span class="arrow"></span>
					<div class="hdlayer">챗봇 '아론' 에게 물어보세요</div>
				</div>			
				
			</a>
		</div>
		
	<div class="myasiana_area">
	
	
			<!-- <a href="#none" class="btn_myasiana" id="btnMyasiana"> -->
			<a href="/I/KR/KO/viewLogin.do?callType=IBE&amp;menuId=CM201802220000728453" class="btn_myasiana" title="마이 아시아나">
				<span class="hidden">마이 아시아나</span>
			</a>
		
		<div class="hdlayer_wrap" id="layerMyasiana">
			<span class="arrow"></span>
			<div class="hdlayer">
				<div class="inner">
					<!-- myinfo_wrap -->
					<div class="myinfo_wrap">
						<div class="myinfo">
							
									<a href="javascript:cms.goToLink('/I/KR/KO/MyasianaDashboard.do');" class="name">
										<span class="tit">. </span>
										<span class="hidden">회원정보 수정</span>
									</a>
								

							<div class="desc">
								<span class="grade">
									
								</span>
								
								<span class="mem_number">OZ </span>
							</div>
						</div>
						<div class="detail_box">
							<dl>
								<dt><span class="tit">마일리지</span></dt>
								<dd>
									<a class="mile_more" href="javascript:sharpNothig();" onclick="action_logging_common('GNB_06_01'); cms.goToLink('/I/KR/KO/GetMileageDetail.do')">
										<span class="num"></span><!--<span class="unit">M</span>-->
										<span class="hidden">내역보기</span>
									</a>
								</dd>
							</dl>
							<dl>
								<dt><span class="tit">보유 쿠폰</span></dt>
								<dd>
									<a class="data" href="javascript:sharpNothig();" onclick="action_logging_common('GNB_06_02'); cms.goToLink('/I/KR/KO/ShowCouponList.do', '_post')">
										<span class="num" id="headerCouponCnt">0</span><span class="unit">건</span>
										<span class="hidden">전체보기</span>
									</a>
								</dd>
							</dl>
						</div>
						<button type="button" class="btn_S gray" onclick="action_logging_common('GNB_06_03'); cms.goToLink('/I/KR/KO/MyasianaDashboard.do?menuId=CM201803060000729176')">마이 아시아나</button>
						
						 <!-- 한국어인 경우에만 노출 -->						
							<a class="mar_to10" href="/C/KR/KO/event/asianalike"><img src="/C/pc/image/common/btn_aisianalike.png" alt="방문할수록 커지는 행운 아시아나 LIKE"></a>
						
						
					</div>
					<!--// myinfo_wrap -->
					<!-- alert_wrap -->
					<div class="alert_wrap">

					</div>
					<!--// alert_wrap -->
				</div>

				<a href="javascript:sharpNothig();" class="myasiana_close"><span class="hidden">마이아시아나 레이어 닫기</span></a>
			</div>
		</div>
	</div>
	
		<div class="search_area">
			<a href="javascript:sharpNothig();" class="btn_search" title="검색"><span class="hidden">검색</span></a>
			<div class="hdlayer_wrap" id="layerSearch">
				<span class="arrow"></span>
				<div class="hdlayer">
					<div class="inner">
						<form name="" action="/search/search.do">
							<input type="text" name="query" placeholder="검색어를 입력하세요" title="검색어를 입력하세요">
							<input type="hidden" name="nationCode" value="KR">
							<input type="hidden" name="langCode" value="KO">
							<button type="button" class="btn_M gray" onclick="action_logging_common('GNB_07'); cms.doSearchGet(this);">검색</button>
						</form>
					</div>
					<a href="javascript:sharpNothig();" class="search_close"><span class="hidden">검색 레이어 닫기</span></a>
				</div>
			</div>
		</div>
	
</div>

		    <!-- nav_right -->
		</div>

	<!-- //header -->
</div>