<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<!-- <meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colrolib Templates">
<meta name="author" content="Colrolib">
<meta name="keywords" content="Colrolib Templates"> -->

    <link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/header.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>

<!-- Title Page-->
<title>EVERY AIR / Booking</title>

<!-- Icons font CSS-->
<link href="../resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
<link href="../resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
<!-- Font special for pages-->
<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- .../resources/vendor CSS-->
<link href="../resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="../resources/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
<link rel="stylesheet" href="../resources/vendor/booking.css">

<!-- Main CSS-->
<link href="../resources/vendor/css/bookingMain.css" rel="stylesheet" media="all">


</head>

<body>
<header><c:import url="../layout/header.jsp"></c:import></header>
<div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<!-- <select onchange="location.href=this.value">
<option selected="selected" value="./main">나의 Every Air</option>
<option value="./memberUpdate">회원정보수정</option>
<option value="./mileage">마일리지</option>
<option value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select> -->
</div>
</div>
</div>

<section>

	
	<div class="card card-4">
		<div class="tab-content">
			<div class="tab-pane active" id="tab1">
			<div class="tab_wrap">

				<form method="post" action="./bookingMain" id="frm">

					<div class="radio-row" style="margin-bottom: 20px;">
						<label class="radio-container m-r-45">왕복 <input
							type="radio" name="kind" value="왕복" id="round" checked="checked">
							<span class="radio-checkmark"></span>
						</label> <label class="radio-container m-r-45">편도 <input
							type="radio" name="kind" value="편도" id="eachWay"> <span
							class="radio-checkmark"></span>
						</label>
					</div>

					<div id="body">
						<div class="input-group mid small">
							<label class="label">출발지:</label> <input
								class="input--style-1 t1" type="text" name="depLoc"
								placeholder="지역 또는 공항명" required="required" id="loc">
						</div>

						<div class="input-group mid small">
							<label class="label">도착지:</label> <input class="input--style-1"
								type="text" name="arrLoc" placeholder="지역 또는 공항명"
								required="required" id="arrloc">
						</div>


						<div class="input-group mid large">
							<label class="label">탑승일:</label> <input class="input--style-12"
								type="text" name="date" placeholder="yyyy/mm/dd"
								id="input-start">
						</div>

						<div class="input-group mid last">

							<label class="label">탑승객:</label>
							<div class="input-group-icon" id="js-select-special">
								<input class="input--style-1-small" type="text"
									name="traveller" value="성인 1, 아이 0" disabled="disabled"
									id="info"> <i class="zmdi zmdi-chevron-down input-icon"
									style="height: 100%; background-color: transparent;"></i>
							</div>


							<div class="dropdown-select">
								<ul class="list-room">
									<li class="list-room__item">
										<ul class="list-person">
											<li class="list-person__item"><span class="name">성인</span>
												<div class="quantity quantity1">
													<span class="minus" id="a_minus">-</span> 
													<input class="inputQty" type="number" min="0" value="1" name="adult" id="adult"> 
													<span class="plus">+</span>
												</div>
											</li>
											
											<li class="list-person__item"><span class="name">아이</span>
												<div class="quantity quantity2">
													<span class="minus">-</span> 
													<input class="inputQty" type="number" min="0" value="0" name="child" id="child">
													<span class="plus">+</span>
												</div>
											</li>
										</ul>
									</li>
								</ul>
								
							</div>
						</div>

						<div class="col-2">
							<button class="btn-submit" id="booking_btn" type="button">검색</button>
						</div>

					</div>
				</form>
			</div>
			</div>
		</div>
	</div>
	
	<!-- 항공편 띄우기 -->
	<div style="width: 100%;">
	<div style="width: 70%; margin: 0 auto; text-align: center; padding: 50px 0;">
	<h5 style="font-size: 40px;color: black;">출도착 항공편</h5>
	<div class="nowtime" style="padding-top: 20px;">현재시간 넣기</div>
	</div>


	<table class="table_list tb_type2" id="table_0" style=" width: 1200px; margin-left: 385px; text-align: center; margin-bottom: 50px;">
   	<tr>
	<th scope="row" style="text-align: center;">편명</th>
	<th scope="row" style="text-align: center;">항공사명</th>
	<th scope="row" style="text-align: center;">출발시간</th>
	<th scope="row" style="text-align: center;">도착시간</th>
	<th scope="row" style="text-align: center;">출발지</th>
	<th scope="row" style="text-align: center;">도착지</th>
	<th scope="row" style="text-align: center;">탑승현황</th>
	</tr>

	

	<c:forEach items="${flist}" var="f">
	<c:set var="date" value="${f.depPlandTime}"/>
	<c:set var="date2" value="${f.arrPlandTime}"/>
	
	<tr class="lasttime">
	<td>${f.vihicleId}</td>
	<td>${f.airlineNm}</td>
	<td class="deptime">${fn:substring(date,0,4)}년${fn:substring(date,4,6)}월${fn:substring(date,6,8)}일 ${fn:substring(date,8,10)}시${fn:substring(date,10,12)}분</td>
	<td class="arrtime">${fn:substring(date2,0,4)}년${fn:substring(date2,4,6)}월${fn:substring(date2,6,8)}일 ${fn:substring(date2,8,10)}시${fn:substring(date2,10,12)}분</td>
	<td>${f.depAirportNm}</td>
	<td>${f.arrAirportNm}</td>
	<td class="arrived">
	<img src="../images/booking/13.png" style="width: 40px;">
	</td>
	</tr>
	</c:forEach>	
	
	</table>
	

</div>


	<!-- 공항검색 -->
	<div id="locSearch" class="search">
		<table id="locTable" class="tab">
			<c:forEach items="${airportList}" var="airPort">
				<tr>
					<td class="loctd loctdd">${airPort}</td>
				</tr>
			</c:forEach>
		</table>
	</div>


	<div id="depLocDiv"></div>
	<!-- 공항검색끝 -->
	
	
	
	
</section>

	<!-- Jquery JS-->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<!-- .../resources/vendor JS-->
	<script src="../resources/vendor/select2/select2.min.js"></script>
	<script
		src="../resources/vendor/jquery-validate/jquery.validate.min.js"></script>
	<script src="../resources/vendor/bootstrap-wizard/bootstrap.min.js"></script>
	<script
		src="../resources/vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
	<script src="../resources/vendor/datepicker/moment.min.js"></script>
	<script src="../resources/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="../resources/vendor/js/global.js"></script>

	<script type="text/javascript">
/*** dateRangePicker ***/
 $('#input-start').daterangepicker({
	singleDatePicker:false,
	autoApply: true,
	  minDate: new Date() 
	});
$('input:radio[name=kind]').click(function(){
	if($('input:radio[id=eachWay]').is(":checked")){
			 $('#input-start').daterangepicker({
				singleDatePicker:true,
				 minDate: new Date()
				}); 
		}else{
			$('#input-start').daterangepicker({
				singleDatePicker:false,	
				autoApply: true,
				 minDate: new Date()
				}); 	
		}
});
/*** dateRangePicker 끝  ***/

/**** 공항검색 ****/
 	 var a = false;
//-------------------- 검색어 필터 -----------------------------		
	$("#loc").on("keyup", function(){
		var value = $(this).val().toLowerCase();
		a = false;
	if(value ==""){
		$("#locSearch").css("display", "none");
		}else{
			$("#locSearch").css("display", "block");
			$("#locTable tr").filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);		
				if($(this).text().toLowerCase().indexOf(value) > -1){
					a=true;
					}
				});
			}	
		});
	//--------------------- 검색어 필터 -----------------------------	
 	$("#locSearch").css("display","none");
	 var loc= ""; 
	//--------------------- click -----------------------------		
  $('.loctd').on("click", function(){
		if($('#loc').val(loc) != ""){
				$('#loc').val("");
				a = false;
		} 

		 loc = $(this).text();
		$('#loc').val(loc);
		$("#locSearch").css("display","none"); 
		}); 
 
//--------------------- blur -----------------------------		
 	$('#loc').on("blur",function(){
 	 			var v = $(".tab").text().trim();
 	 			 console.log("a : "+ a); 
		
			var value = $('#loc').val();
				var check=false;
			 	if(a){	
				$(".loctd").each(function(){
						if($(this).html()==value){
							 $("#locSearch").css("display","none"); 
							check=true; 
							}
					}); 
				}else {

				 	var t = $('#loc').val();
							
					 <c:forEach items="${airportList}" var="airPort">	
					 				 
						if('${airPort}' == t){
							
						} else {	
							    $('#loc').val("");  
								$("#locSearch").css("display","none"); 
								a=false;     
								}
		
					 </c:forEach>
				}
		}); 
/**** 공항검색 끝 ****/

 /***** 공항유효성검사 *****/
	  $('body').on("click",'#booking_btn',function(){
			var loc = $('#loc').val().trim();
			var arrloc = $('#arrloc').val().trim();

			var child = $('#child').val();
			var adult = $('#adult').val();

			  $.ajax({
				url : "airportCheck",
				data :{
						depLoc:loc,
						arrLoc:arrloc
					},
				type : "GET",
				success : function(data){
					if(data == true){
						
						if(child <= adult){
							if(adult < 6){
								$('#frm').submit();	

								}else{
									alert("예약인원은 성인5명 아이5명까지 가능합니다.")									
									}							
							}else{												
								alert("성인 한 사람당 아이 1명만 허용됩니다.")
							}
						
						}else{
							alert("출발지나 도착지를 올바르게 입력하세요.");
							}
					},error:function(){
							alert("fail");
						}
		  });
	  });
 /***** 공항유효성검사  끝*****/
 
 $('#loc').keydown(function(){
		 $("#arrloc").val("");	
	 });
 
/****** 도착지  *******/

$('#arrloc').focus(function(){
	
	var depLoc = $("#loc").val(); 
	var query = {depLoc : $("#loc").val()};
			
			$.ajax({
					url : "airportDepList",
					data : query,
					type : "POST",
					success : function(data){
					
						$("#depLocDiv").html(data);
												
						},error:function(){

							console.log("fail");
							}	
				});	 			
});


$('.deptime').each(function(){

	
	var time = $(this).text().replace('년','').replace('월','').replace('일','').replace(' ','').replace('시','').replace('분','');

	time = Number(time);

	var today = Number(${ttime});
	var later = Number(${later});

	if(time < today){
		$(this).closest('.lasttime').find('td').css('color','#c7c2c2');
		$(this).siblings('.arrived').html('<i class="material-icons" style="font-size:36px">airplanemode_active</i>');

		$(this).siblings('.arrived').html('<img src="../images/booking/11.png" style="width: 40px;">')
	}

	if(time >= today && time < later){
		$(this).closest('.lasttime').find('td').css('color','#d60815');
		$(this).closest('.lasttime').find('td').css('font-weight','bolder');

		$(this).siblings('.arrived').html('<img src="../images/booking/12.png" style="width: 40px;">')
	}
	
});


//현재시간
let today = new Date();   
$('.nowtime').text("현재시간 "+": "+today.toLocaleDateString()+" "+today.toLocaleTimeString());





</script>


</body>

</html>

