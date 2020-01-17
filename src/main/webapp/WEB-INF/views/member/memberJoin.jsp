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
<c:import url="../template/hhhhheader.jsp" />
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
							<input type="text" id="input_koreanLastName" name="koreanLastName" placeholder="한글 성 입력 (예 : 홍)" title="한글 성 입력 (예 : 홍)" style="width:314px;"> 
							<input type="text" id="input_koreanFirstName" name="koreanFirstName" placeholder="한글 이름 입력 (예 : 길동)" title="한글 이름 입력 (예 : 길동)" style="width:314px;"> 
							<p class="txt_error_Msg" id="error_koreanName" style="display: none;"></p>
						</td>
					</tr>
					<tr>
						<th scope="row">영문명</th> 
						<td>
							<input type="text" id="input_koreanLastName" name="EnglishLastName" placeholder="영문 성 입력 (예 : HONG)" title="한글 성 입력 (예 : 홍)" style="width:314px;"> 
							<input type="text" id="input_koreanFirstName" name="EnglishFirstName" placeholder="영문 이름 입력 (예 : GILDONG)" title="한글 이름 입력 (예 : 길동)" style="width:314px;">
							<p class="txt_error_Msg" id="error_EnglishName" style="display: none;"></p>
						</td>
					</tr>
	
					<tr>
						<th scope="row">성별</th> 
						<td>
							<select id="select_residentCountry">
								<option value="남">남</option>
								<option value="여">여</option>
							</select>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="select_residentCountry">거주지역</label></th> 
						<td>
							<select id="select_residentCountry" style="width:421px">

							<option value="KR">대한민국</option>

							<option value="US">미국</option>

							<option value="JP">일본</option>

							<option value="CN">중국</option>

							<optgroup label="------------------------------------------">

							<option value="GH">가나</option>

							<option value="GA">가봉</option>

							<option value="GY">가이아나</option>

							<option value="GM">감비아</option>

							<option value="GP">과들루프</option>

							<option value="GT">과테말라</option>

							<option value="GU">괌</option>

							<option value="GD">그레나다</option>

							<option value="GR">그리스</option>

							<option value="GL">그린랜드</option>

							<option value="GN">기니</option>

							<option value="GW">기니 비사우</option>

							<option value="NA">나미비아</option>

							<option value="NR">나우루</option>

							<option value="NG">나이지리아</option>

							<option value="NI">나카라과</option>

							<option value="AQ">남극대륙</option>

							<option value="ZA">남아프리카공화국</option>

							<option value="NL">네덜란드</option>

							<option value="AN">네덜란드령 안틸레스</option>

							<option value="NP">네팔</option>

							<option value="NO">노르웨이</option>

							<option value="NF">노르퍽</option>

							<option value="NZ">뉴질랜드</option>

							<option value="NC">뉴칼레도니아</option>

							<option value="NU">니우에섬</option>

							<option value="NE">니제르</option>

							<option value="TW">대만</option>

							<option value="DK">덴마크</option>

							<option value="DM">도미니카</option>

							<option value="DO">도미니카 공화국</option>

							<option value="DE">독일</option>

							<option value="TL">동티모르</option>

							<option value="LA">라오스</option>

							<option value="LR">라이베리아</option>

							<option value="LV">라트비아</option>

							<option value="RU">러시아</option>

							<option value="LB">레바논</option>

							<option value="LS">레소토</option>

							<option value="RE">레위니옹</option>

							<option value="RO">루마니아</option>

							<option value="LU">룩셈부르크</option>

							<option value="RW">르완다</option>

							<option value="LY">리비아</option>

							<option value="LT">리투아니아</option>

							<option value="LI">리히텐슈타인</option>

							<option value="MG">마다가스카르</option>

							<option value="MQ">마르티니크</option>

							<option value="MH">마셜제도</option>

							<option value="YT">마요트</option>

							<option value="MO">마카오</option>

							<option value="MK">마케도니아</option>

							<option value="MW">말라위</option>

							<option value="MY">말레이시아</option>

							<option value="ML">말리</option>

							<option value="MX">멕시코</option>

							<option value="MC">모나코</option>

							<option value="MA">모로코</option>

							<option value="MU">모리셔스</option>

							<option value="MR">모리타니아</option>

							<option value="MZ">모잠비크</option>

							<option value="MS">몬테세라트</option>

							<option value="MD">몰도바</option>

							<option value="MV">몰디브</option>

							<option value="MT">몰타</option>

							<option value="MN">몽골</option>

							<option value="UM">미국령 군소 제도</option>

							<option value="VI">미국령버진군도</option>

							<option value="MM">미얀마</option>

							<option value="FM">미크로네시아 연방</option>

							<option value="VU">바누아투</option>

							<option value="BH">바레인</option>

							<option value="BB">바베이도즈</option>

							<option value="VA">바티칸시티</option>

							<option value="BS">바하마</option>

							<option value="BD">방글라데시</option>

							<option value="BM">버뮤다 제도</option>

							<option value="BJ">베냉</option>

							<option value="VE">베네수엘라</option>

							<option value="VN">베트남</option>

							<option value="BE">벨기에</option>

							<option value="BY">벨라루스</option>

							<option value="BZ">벨리즈</option>

							<option value="BA">보스니아 헤르체고비나</option>

							<option value="BW">보츠와나</option>

							<option value="BO">볼리비아</option>

							<option value="BI">부룬디</option>

							<option value="BF">부르키나 파소</option>

							<option value="BV">부베 섬</option>

							<option value="BT">부탄</option>

							<option value="MP">북마리아나 제도</option>

							<option value="KP">북한</option>

							<option value="BG">불가리아</option>

							<option value="BR">브라질</option>

							<option value="BN">브루나이</option>

							<option value="WS">사모아</option>

							<option value="SA">사우디아라비아</option>

							<option value="GS">사우스조지아&amp;사우스샌드위치섬</option>

							<option value="CY">사이프러스</option>

							<option value="SM">산마리노</option>

							<option value="ST">상투메 프린시페</option>

							<option value="PM">생피에르 미클롱</option>

							<option value="EH">서사하라</option>

							<option value="SN">세네갈</option>

							<option value="RS">세르비아</option>

							<option value="SC">세이셸</option>

							<option value="LC">세인트루시아</option>

							<option value="VC">세인트빈센트 그레나딘</option>

							<option value="KN">세인트키츠 네비스</option>

							<option value="SH">세인트헬레나</option>

							<option value="SO">소말리아</option>

							<option value="SB">솔로몬제도</option>

							<option value="SD">수단</option>

							<option value="SR">수리남</option>

							<option value="LK">스리랑카</option>

							<option value="SJ">스발바르 얀마옌 제도</option>

							<option value="SZ">스와질란드</option>

							<option value="SE">스웨덴</option>

							<option value="CH">스위스</option>

							<option value="ES">스페인</option>

							<option value="SK">슬로바키아</option>

							<option value="SI">슬로베니아</option>

							<option value="SY">시리아</option>

							<option value="SL">시에라리온</option>

							<option value="SG">싱가포르</option>

							<option value="AE">아랍에미리트</option>

							<option value="AW">아루바</option>

							<option value="AM">아르메니아</option>

							<option value="AR">아르헨티나</option>

							<option value="AS">아메리칸 사모아</option>

							<option value="IS">아이슬란드</option>

							<option value="HT">아이티</option>

							<option value="IE">아일랜드</option>

							<option value="AZ">아제르바이잔</option>

							<option value="AF">아프가니스탄</option>

							<option value="AD">안도라</option>

							<option value="AI">안퀼라</option>

							<option value="AG">안티가 바부다</option>

							<option value="AL">알바니아</option>

							<option value="DZ">알제리</option>

							<option value="AO">앙골라</option>

							<option value="ER">에리트레아</option>

							<option value="EE">에스토니아</option>

							<option value="EC">에콰도르</option>

							<option value="ET">에티오피아</option>

							<option value="SV">엘살바도르</option>

							<option value="GB">영국</option>

							<option value="IO">영국령 인도양 지역</option>

							<option value="VG">영국령버진군도</option>

							<option value="YE">예멘</option>

							<option value="OM">오만</option>

							<option value="AT">오스트리아</option>

							<option value="HN">온두라스</option>

							<option value="WF">왈리스 퓌튀나</option>

							<option value="JO">요르단</option>

							<option value="UG">우간다</option>

							<option value="UY">우르과이</option>

							<option value="UZ">우즈베키스탄</option>

							<option value="UA">우크라이나</option>

							<option value="IQ">이라크</option>

							<option value="IR">이란</option>

							<option value="IL">이스라엘</option>

							<option value="EG">이집트</option>

							<option value="IT">이탈리아</option>

							<option value="IN">인도</option>

							<option value="ID">인도네시아</option>

							<option value="JM">자마이카</option>

							<option value="ZM">잠비아</option>

							<option value="GQ">적도기니</option>

							<option value="GE">조지아</option>

							<option value="CF">중앙아프리카</option>

							<option value="DJ">지부티</option>

							<option value="GI">지브롤터</option>

							<option value="ZW">짐바브웨</option>

							<option value="TD">차드</option>

							<option value="CZ">체코</option>

							<option value="CL">칠레</option>

							<option value="CM">카메룬</option>

							<option value="KZ">카자흐스탄</option>

							<option value="QA">카타르</option>

							<option value="CV">카푸버데</option>

							<option value="KH">캄보디아</option>

							<option value="CA">캐나다</option>

							<option value="KE">케냐</option>

							<option value="KY">케이맨</option>

							<option value="KM">코모로</option>

							<option value="CR">코스타리카</option>

							<option value="CC">코코스제도</option>

							<option value="CI">코트 디브아르</option>

							<option value="CO">콜롬비아</option>

							<option value="CG">콩고</option>

							<option value="CD">콩고콩고민주공화국</option>

							<option value="CU">쿠바</option>

							<option value="KW">쿠웨이트</option>

							<option value="CK">쿡제도</option>

							<option value="HR">크로아티아</option>

							<option value="CX">크리스마스섬</option>

							<option value="KG">키르기스탄</option>

							<option value="KI">키리바시</option>

							<option value="TJ">타지키스탄 공화국</option>

							<option value="TZ">탄자니아</option>

							<option value="TH">태국</option>

							<option value="TR">터키</option>

							<option value="TC">턱스케이코스 제도</option>

							<option value="TG">토고</option>

							<option value="TK">토켈라우</option>

							<option value="TO">통가</option>

							<option value="TM">투르크메니스탄</option>

							<option value="TV">투발루</option>

							<option value="TN">튀니지</option>

							<option value="TT">트리니다드 토바고</option>

							<option value="PA">파나마</option>

							<option value="PY">파라과이</option>

							<option value="FO">파뢰제도</option>

							<option value="PK">파키스탄</option>

							<option value="PG">파푸아 뉴기니</option>

							<option value="PW">팔라우</option>

							<option value="PS">팔레스타인 영토</option>

							<option value="PE">페루</option>

							<option value="PT">포르투갈</option>

							<option value="FK">포클랜드제도</option>

							<option value="PL">폴란드</option>

							<option value="PR">푸에르토리코</option>

							<option value="FR">프랑스</option>

							<option value="GF">프랑스령 기아나</option>

							<option value="TF">프랑스령 남방 및 남극</option>

							<option value="PF">프랑스령 폴리네시아</option>

							<option value="FJ">피지</option>

							<option value="FI">핀란드</option>

							<option value="PH">필리핀</option>

							<option value="PN">핏케언 제도</option>

							<option value="HM">허드 맥도널드 제도</option>

							<option value="HU">헝가리</option>

							<option value="AU">호주</option>

							<option value="HK">홍콩</option>

							<option value="ME"></option>
	
							</optgroup>
							</select>
							<button type="button" class="btn_S white" id="btn_changeResidentCountry">변경</button> 
							<p class="txt_error_Msg" id="error_residentCountry" style="display: none;"></p>
						</td>
					</tr>

					<tr>
						<th scope="row"><label for="input_id">아이디</label></th> 
						<td>
							<input type="text" id="input_id" name="input_id" placeholder="6~15자리 영문+숫자" title="6~15자리 영문+숫자" style="width:298px;"> 
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
							<input type="password" id="input_pw" autocomplete="off" name="input_pw" placeholder="영문+숫자+특수문자 8~20자리" title="영문+숫자+특수문자 8~20자리" style="width:298px;"> 
							<div class="tooltip_wrap">
								<a href="javascript:sharpNothig();" class="btn_info">도움말</a> 
								<div class="layer_tooltip" style="width: 348px;">
									<div class="inner">
										<ul class="pwd_rule">
											<li>8자 이상<span class="unable">불가</span></li> 	
											<li>영문 대/소문자<span class="unable">불가</span></li>		
											<li>숫자<span class="unable">불가</span></li>		
											<li>특수문자<span class="unable">불가</span></li> 	
											<li>한글, 공백 입력 불가<span class="able">가능</span></li> 		
											<li>아이디, 회원번호 불가<span class="able">가능</span></li> 		
											<li>생년월일, 휴대전화 번호 불가<span class="able">가능</span></li> 		
											<li>이메일주소 불가<span class="able">가능</span></li> 		
											<li>20자 이내<span class="able">가능</span></li> 		
										<li>보안정책상 사용 불가<span class="able">가능</span></li></ul>
									</div>
									<a href="javascript:sharpNothig();" class="tooltip_close"><span class="hidden">닫기</span></a> 
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
							<select id="select_koreaPhone" style="width:120px" title="휴대전화 번호 앞자리" disabled=""> 
								<option value="">선택</option> 
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>
							<input type="text" id="input_koreaPhoneMiddle" placeholder="중간번호" title="휴대전화 번호 가운데 자리" maxlength="4" style="width:150px;" readonly="">- 	
							<input type="text" id="input_koreaPhoneLast" placeholder="끝 번호" title="휴대전화번호 끝자리" maxlength="4" style="width:150px;" readonly=""> 		
							<p class="txt_error_Msg" id="error_koreaPhone" style="display: none;"></p>
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
						</td>
					</tr>
					
					<tr>
						<th scope="row"><label>(선택) 유선전화</label></th> 
						<td id="korea_homephone">
							<select id="select_koreaHomephone" title="유선전화 국제번호" style="width:120px"> 
								<option value="02">02</option>

								<option value="031">031</option>

								<option value="032">032</option>

								<option value="033">033</option>

								<option value="041">041</option>

								<option value="042">042</option>

								<option value="043">043</option>

								<option value="044">044</option>

								<option value="051">051</option>

								<option value="052">052</option>

								<option value="053">053</option>

								<option value="054">054</option>

								<option value="055">055</option>

								<option value="061">061</option>

								<option value="062">062</option>

								<option value="063">063</option>

								<option value="064">064</option>

								<option value="070">070</option>

							</select>
							<input type="text" id="input_koreaHomephoneMiddle" placeholder="중간번호" title="유선전화번호 가운데 자리" style="width:150px;">- 	
							<input type="text" id="input_koreaHomephoneLast" placeholder="끝 번호" title="유선전화번호 끝 자리" style="width:150px;"> 		
							<p class="txt_error_Msg" id="error_koreaHomephone" style="display: none;"></p>
						</td>
						<td id="foreign_homephone" style="display: none;">
							

							<input type="hidden" id="input_foreignHomephoneNationCode" value="82">
	
							<input type="text" id="input_foreignHomephoneFirst" placeholder="앞 번호" title="유선전화번호 앞자리" style="width:150px;">- 		
							<input type="text" id="input_foreignHomephoneMiddle" placeholder="중간번호" title="유선전화번호 가운데 자리" style="width:150px;">- 	
							<input type="text" id="input_foreignHomephoneLast" placeholder="끝 번호" title="유선전화번호 끝 자리" style="width:150px;"> 		
							<p class="txt_error_Msg" id="error_foreignHomePhone" style="display: none;"></p>
						</td>
					</tr>

					<tr>
						<th scope="row"><label for="input_defaultAddress">주소</label></th> 
						<td id="korea_address">
							<p><input type="text" id="input_zipCode" placeholder="우편번호" title="우편번호" style="width:108px;" readonly="readonly"> 
							<button type="button" class="btn_popup" id="btn_zipCode">우편번호 검색</button></p> 
							<p class="mar_to15"><input type="text" id="input_defaultAddress" placeholder="기본 주소" title="기본 주소" style="width:400px;" readonly="readonly"> 
								<input type="text" id="input_detailAddress" placeholder="상세 주소" title="상세 주소" style="width:400px;"> 
							</p>
							<p class="txt_error_Msg" id="error_koreaAddress" style="display: none;"></p>
						</td>
						<td id="usa_address" style="display: none;">
							<p>
								<input type="text" id="input_usDefaultAddress" placeholder="기본 주소" title="기본 주소" style="width:400px;"> 
								<input type="text" id="input_usDetailAddress" placeholder="상세 주소" title="상세 주소" style="width:400px;"> 
							</p>
							<p class="mar_to15">
								<input type="text" id="input_usCity" placeholder="도시(City)" title="도시(City)" style="width:257px;"> 
								<input type="text" id="input_usState" placeholder="주(State)" title="주(State)" style="width:257px;"> 
								<input type="text" id="input_usZipCode" placeholder="우편번호(Zip Code)" title="우편번호(Zip Code)" style="width:257px;"> 
							</p>
							<p class="txt_error_Msg" id="error_usAddress" style="display: none;"></p>
						</td>
						<td id="foreign_address" style="display: none;">
							<p>
								<input type="text" id="input_abroadDefaultAddress" placeholder="기본 주소" title="기본 주소" style="width:400px;"> 
								<input type="text" id="input_abroadDetailAddress" placeholder="상세 주소" title="상세 주소" style="width:400px;"> 
							</p> 
							<p class="mar_to15">
								<input type="text" id="input_abroadCity" placeholder="도시(City)" title="도시(City)" style="width:257px;"> 
								<input type="text" id="input_abroadZipCode" placeholder="우편번호(Zip Code)" title="우편번호(Zip Code)" style="width:257px;"> 
							</p>
							<p class="txt_error_Msg" id="error_abroadAddress" style="display: none;"></p>
						</td>	
					</tr><tr>
						<th scope="row">뉴스레터 및 상품정보,<br>이벤트 등 수신</th> 
						<td>
							<input type="checkbox" id="check_receiveEmail">
							<label for="check_receiveEmail">이메일</label> 
							<input type="checkbox" id="check_receiveSms">
							<label for="check_receiveSms">SMS</label> 
							<ul class="list_type3 fsz_14 mar_to15">
								<li>수신에 동의하시면 아시아나항공의 뉴스레터 및 상품정보, 이벤트 등의 안내를 받아보실 수 있습니다.</li> 
								
								<li>회원정보, 예약 및 항공기 운항정보, 서비스 주요정책 관련내용은 수신동의 여부와 관계 없이 발송됩니다.</li> 
								
							</ul>
						</td>
					</tr>
				</tbody>
			</table>

			<h4>패밀리사이트 가입 (선택)</h4> 
			<ul class="list_type2">
				<li>하나의 ID와 비밀번호로 운영하는 사이트를 동시에 가입하실 수 있습니다.</li> 
				
				<li>아시아나 인터넷 면세점에 동시 가입을 원하시면 하단에서 선택하시기 바랍니다.</li> 
				
			</ul>
			<div class="txt_borderBox">
				<input type="checkbox" id="check_duty">
				<label for="check_duty">아시아나 인터넷 면세점 가입 (http://dutyfree.flyasiana.com)</label> 
			</div>
			<p class="mar_to15">
				<input type="checkbox" id="check_agree">
				<label for="check_agree">약관에 동의합니다.</label> 
				<button type="button" class="btn_popup" id="btn_familyTerms">내용보기</button> 
			</p>

			<h4>간편로그인 연결</h4> 
			<div class="csl_sns_wrap">
	
				<ul>
					<li>
						<span class="sns_login icon_kakao"><strong>카카오톡 </strong>간편로그인</span> 
						<div class="sns_login_on" id="div_connectKakao" style="display: none;">
							<span class="fl"></span>
							<span class="fr"></span>
						</div>
						<p class="btn_sns_login"><button type="button" id="btn_disconnectKakao" class="btn_XS gray" style="display: none;">연결끊기</button></p> 
						<p class="btn_sns_login"><button type="button" id="btn_connectKakao" onclick="ConnectSns('KAKAO')" class="btn_XS btn_check white">연결하기</button></p> 
					</li>

					<li>
						<span class="sns_login icon_facebook"><strong>페이스북 </strong>간편로그인</span> 
						<div class="sns_login_on" id="div_connectFaceBook" style="display: none;">
							<span class="fl"></span>
							<span class="fr"></span>
						</div>
						<p class="btn_sns_login"><button type="button" id="btn_disconnectFaceBook" class="btn_XS gray" style="display: none;">연결끊기</button></p> 
						<p class="btn_sns_login"><button type="button" id="btn_connectFaceBook" onclick="ConnectSns('FACEBOOK')" class="btn_XS btn_check white">연결하기</button></p> 
					</li>					

					<li>
						<span class="sns_login icon_naver"><strong>네이버 </strong>간편로그인</span> 
						<div class="sns_login_on" id="div_connectNaver" style="display: none;">
							<span class="fl"></span>
							<span class="fr"></span>
						</div>
						<p class="btn_sns_login"><button type="button" id="btn_disconnectNaver" class="btn_XS gray" style="display: none;">연결끊기</button></p> 
						<p class="btn_sns_login"><button type="button" id="btn_connectNaver" onclick="ConnectSns('NAVER')" class="btn_XS btn_check white">연결하기</button></p> 
					</li>
				</ul>
			</div>
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
		
		<div class="layer_wrap" id="familyTerms">
			<div class="dim_layer"></div>
			<div class="layer_pop" style="width:600px">
				
				<div class="pop_cont">
					<h4>패밀리사이트 가입</h4> 
					<div class="gray_box border3" name="familyTermsDiv" tabindex="0">
					</div>
				</div>
				<div class="btn_wrap_ceType2">
					<button type="button" class="btn_M red" id="btn_familyTermsConfirm">확인</button> 	
				</div>
				<a href="javascript:sharpNothig();" class="dim_close"><span class="hidden">닫기</span></a> 	
			</div>
		</div>
		
		<div class="layer_wrap" id="layer_snsInfo">
			<div class="dim_layer"></div>
			<div class="layer_pop" style="width:490px;">
				<div class="pop_cont">
					<p class="pop_tit st1">타인의 SNS 계정을 등록하는 일이 없도록 주의해 주시기 바랍니다.</p> 
				</div>
				<div class="btn_wrap_ceType2">
					<button type="button" class="btn_M white" id="btn_snsCancel">취소</button> 
					<button type="button" class="btn_M red" id="btn_snsConfirm">확인</button> 
				</div> 
				<a href="javascript:sharpNothig();" class="dim_close"><span class="hidden"></span></a> 
			</div>
		</div>
		
<div class="layer_wrap" id="zipCodeLayer" calltype="JOIN" currentpage="1" countperpage="20" countpergroup="10" confmkey="U01TX0FVVEgyMDE2MDMwODE1MDIzODA=">
	<div class="dim_layer"></div>
	<div class="layer_pop" style="width:700px; height:750px;">
		<div class="pop_cont">
			<h4>우편번호 검색</h4> 
			<p>도로명, 건물명, 지번 통합검색 가능 (예: 반포대로 58, 국립중앙박물관, 삼성동 25)</p>
			
			<div class="form_area3">
				<input type="text" id="input_addressForZipCode" onkeyup="javascript:keyUpAddressInput(event);" placeholder="도로명 또는 건물명을 입력" title="도로명 또는 건물명을 입력" style="width:412px;">
				
				<button type="button" class="btn_M red btn_minwidth" id="btn_searchZipCode" onclick="javascript:searchZipCode();">검색</button>
				
			</div>
			<div id="existAddress" style="display: none;">
				<p>도로명 또는 지번 주소를 선택해주시기 바랍니다.</p>
				
				<table class="table_list tb_zipCode tb_left" id="table_address">
					<caption>
						<strong>우편번호 검색 표로 도로명 또는 지번 주소를 선택할 수 있습니다.</strong>
						
						<p></p>
					</caption>
					<colgroup>
						<col style="width:88px">
						<col style="width:265px">
						<col style="width:auto">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">우편번호</th>	
							<th scope="col">도로명 주소</th> 
							<th scope="col">지번 주소</th>	
						</tr>
					</thead>
				</table>
				<div style="overflow-x:hidden; overflow-y:auto; height:350px;">
					<table id="table_zipCode" class="table_list tb_zipCode tb_left">
						<colgroup>
							<col style="width:88px">
							<col style="width:265px">
							<col style="width:auto">
						</colgroup>
						<tbody></tbody>
					</table>
				</div>
			</div>
			
			<div id="nonExistAddress" class="border_box mar_to15" style="display: none;">
				<p class="icon_empty"><span class="col_brown2">#0</span> 대한 검색결과가 없습니다. <br>확인 후 다시 검색해주시기 바랍니다.</p>
				
			</div>

			<div id="div_paging" class="paging" style="display: none;">
			</div>
		</div>
		<a href="javascript:sharpNothig();" class="dim_close" id="btn_layerZipCodeClose" onclick="javascript:closeZipCodeLayer"><span class="hidden">닫기</span></a> 
	</div>
</div>

		
	</div>
<c:import url="../template/fffooter.jsp" />
</body>
</html>