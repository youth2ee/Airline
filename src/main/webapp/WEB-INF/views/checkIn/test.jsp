<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="KO">
<head>

<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com/C/pc/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com//C/pc/css/layout.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com//C/pc/css/common.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com//C/pc/css/flyasiana.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com//C/pc/css/calendar.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com//C/pc/css/corp.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<title>체크인/좌석배정│아시아나항공</title>
<body>

<!-- util_wrap -->
	<div class="container" id="container">
		<h3>체크인</h3>

		<div class="title_wrap_type3">
			<h4>조회</h4>
		</div>
		<ul class="list_type3">
			<li>예약정보를 입력하시면 로그인 없이도 체크인/좌석배정이 가능합니다.</li>
			<li>팝업 차단 해제 후 이용해주시기 바랍니다.</li>
		</ul>
		<div class="search_box mar_to10">
		<form id="frm" action="./seat">
			<div class="inner alC">
				<select id="numTypeSelect" style="width: 200px" title="종류별 번호">
					<option value="reservNo">예약번호</option>
					<option value="ticketNo">항공권번호</option>
				</select> <input type="text" id="input_reservNo" name="bookingNum" maxlength="8" placeholder="영문/숫자 조합 6자리 또는 숫자 8자리" title="번호 입력 예시 : 영문/숫자 조합 6자리 또는 숫자 8자리"
					style="width: 280px; text-transform: uppercase;">


				<div class="relative_calendar">
					<div class="calendar_wrap">
						<input type="text" id="departureDate1"
							class="datepicker input_cal" placeholder="탑승일 선택" title="탑승일"
							data-dateformat="y.mm.dd D" style="width: 158px;"
							data-type="single_checkin"> <a
							class="btn_airport type2 calendar_focus" id="calendar_focus1"><span
							class="hidden">탑승일 선택 달력보기</span></a>
					</div>

					<div class="calendar_layer">
						<h4 class="hidden">달력</h4>
						<div class="calendar_top">
							<select title="탑승연도 및 월" class="white"></select>
						</div>
						<div class="compareCalendar"></div>
						<a href="javascript:sharpNothig();" class="cal_status02">탑승일</a> <a
							href="javascript:sharpNothig();" class="cal_reset"><span
							class="hidden">달력 새로고침</span></a> <a href="javascript:sharpNothig();"
							class="btn_cal_close"><span class="hidden">닫기</span></a>
					</div>
				</div>
				<button type="button" id="btn_search" class="btn_M red">조회하기</button>
			</div>
			</form>
		</div>


		<div id="div_captcha" style="display: none;">

			<div id="g-recaptcha" class="g-recaptcha"
				style="display: inline-block;">
				<div style="width: 304px; height: 78px;">
					<div>
						<iframe
							src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LcyoDwUAAAAAG42mLWkJPNAs35QRLvnl2O0xOCJ&amp;co=aHR0cHM6Ly9mbHlhc2lhbmEuY29tOjQ0Mw..&amp;hl=ko&amp;v=A1Aard-wURuGsXRGA7JMOqVO&amp;size=normal&amp;cb=vf1g44civ4lq"
							width="304" height="78" role="presentation" name="a-sqpi35n32am6"
							frameborder="0" scrolling="no"
							sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe>
					</div>
					<textarea id="g-recaptcha-response" name="g-recaptcha-response"
						class="g-recaptcha-response"
						style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea>
				</div>
			</div>

		</div>

		<p class="col_brown">
			* 회원 로그인 후 예약을 조회할 수 있습니다.<a href="javascript:sharpNothig();"
				id="btnMoveLogin" class="btn_arrow">로그인</a>
		</p>
		<div class="title_wrap_type3">
			<h4>체크인 안내</h4>
		</div>

		<div class="line_row_wrap">
			<dl class="line_row">
				<dt>
					<span class="tit">체크인이란?</span>
				</dt>
				<dd>
					<p>체크인은 항공기 탑승을 위해 누구나 거쳐야 하는 필수 과정입니다.</p>
					<p class="col_black">원하는 좌석으로 미리 체크인하고, 탑승권까지 사전에 받으세요! 공항에서의
						대기시간을 줄일 수 있습니다.</p>
					<p>모든 준비를 마쳤다면, 공항에서는 짐만 부치시면 됩니다.</p>
				</dd>
			</dl>
			<dl class="line_row">
				<dt>
					<span class="tit">다양한 체크인 방법</span>
				</dt>
				<dd>
					<p>체크인은 집이나 사무실에서 또는 이동 중 모바일 기기에서도 언제든지 가능합니다.</p>
					<p class="col_black">어디서나 편리한 방법으로 체크인 하세요~</p>
				</dd>
				<dd class="full">
					<div class="icon_wrap type03 col3">
						<dl>
							<dt>
								<span class="icoset_m booking ico_ckin_01"></span>
								<p class="tit">온라인 체크인</p>
							</dt>
							<dd class="desc">탑승권도 쉽고 빠르게</dd>
							<dd>
								<button type="button" class="btn_XS white"
									id="btn_movePage_onlineCheckIn">자세히보기</button>
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="icoset_m booking ico_ckin_02"></span>
								<p class="tit">오토체크인</p>
							</dt>
							<dd class="desc">
								언제든지 신청만 해놓으면<br>출발 24시간 전에 자동으로!
							</dd>
							<dd>
								<button type="button" class="btn_XS white"
									id="btn_movePage_autoCheckIn">자세히보기</button>
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="icoset_m booking ico_ckin_03"></span>
								<p class="tit">키오스크</p>
							</dt>
							<dd class="desc">
								사전 체크인을 못했더라도,<br>공항에서도 빠르고 편리하게!
							</dd>
							<dd>
								<button type="button" class="btn_XS white"
									id="btn_movePage_keyOsk">자세히보기</button>
							</dd>
						</dl>
					</div>
				</dd>
			</dl>
		</div>

		<div class="title_wrap_type3">
			<h5>체크인/좌석배정 이용 가능 시간</h5>
		</div>
		<table class="table_list" id="tb_checkInTimeNotice">
			<caption>
				<strong>체크인/좌석배정 이용 가능 시간 표</strong>

				<p>서비스 구분,국제선,국내선,온라인 체크인,좌석배정/오토체크인 로 구성된 표입니다.</p>
			</caption>
			<colgroup>
				<col style="width: 33.3%" span="3">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">서비스 구분</th>
					<th scope="col">국제선</th>
					<th scope="col">국내선</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row" class="bg_gray">온라인 체크인</th>
					<td>출발 48시간 전 ~ 1시간 전</td>
					<td>출발 24시간 전 ~ 30분 전</td>
				</tr>
				<tr>
					<th scope="row" class="bg_gray">좌석배정/오토체크인</th>
					<td>출발 361일 전 ~ 48시간 전</td>
					<td>출발 30일 전 ~ 24시간 전</td>
				</tr>
			</tbody>
		</table>
		<p class="col_brown mar_to10">* * 단, 미주 노선의 온라인 체크인은 출발 24시간 전부터
			가능합니다.</p>



		<div class="gray_box">
			<h5>유의사항</h5>
			<ul class="list_type2">
				<li class="col_red">여권정보가 부정확하거나 유효하지 않을 경우 사전심사 결과에 따라 체크인 및
					탑승권 발급이 불가할 수 있습니다.</li>
				<li>모바일 탑승권이 허용되지 않는 일부 해외공항에서는 탑승권 전송이 제한됩니다.</li>
				<li><span class="col_black">이용 제한 대상</span>
					<ul>
						<li>체크인 : 부산 출발 국내선 및 일부 부정기편은 체크인이 제한됩니다.</li>
						<li>좌석배정 : 10인 이상 단체예약, 24개월 미만 소아 동반시 48시간 이전 좌석배정이 제한됩니다.
							(체크인은 가능)</li>
					</ul></li>
				<li>타사 항공기로 운항하는 공동운항편을 이용하실 경우 체크인 및 좌석배정 이용이 제한됩니다. (운항 항공사로
					문의)</li>
				<li>이미 좌석배정 및 체크인을 마치신 경우에도 입력 정보 확인 및 변경이 가능합니다.</li>
				<li>온라인 체크인에 대해 더 궁금한 점이 있으신가요?<a id="btnOnlineCheckInfo"
					href="javascript:sharpNothig();" class="btn_arrow">온라인 체크인 안내</a></li>

			</ul>
		</div>

	</div>
	<script type="text/javascript">
		$("#btn_search").click(function(){
			$("#frm").submit();
		});
			
	</script>
</body>
</html>
