// 편도 1회 예매 --------------------------------------------------------------------------------------------------------

	// 지난 날 막기 : date함수
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1;
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 
	today = yyyy+'-'+mm+'-'+dd;
	
	$(".datepicker").attr('min', today);

	$(".depLoc").change(function(){
		var depLoc = $(this).val();
		$(".person option:eq(0)").prop("selected", true);
		$(".limoTime option:eq(0)").prop("selected", true);
		$(".price").val("");
		$(".seat").val("");
		
		$.ajax({
			type:'get',
			url:"./arrLoc",
			data:{
				"depLoc":depLoc,
				"sec":"1"
			},
			success : function(data){
				data = data.trim();
				$(".place").empty();
				$(".place").append(data);
			}
		})	
	});
		
	$('.select').click(function(){
		$(".lim").each(function(){
			$(this).prop("checked", false);
			$(this).prop('disabled', false);
			$(this).parent().removeClass('abcd');
			$(this).parent().removeClass('booked');
			count = 0;
			$(".select_seat_text").html("");
		});
		
		// 각각의 요소 선택안되고 있을 시 alert 창 띄우기
		if($(".limoDate").val() == ""){
			alert("날짜를 선택해주세요");
		}else if($(".depLoc option:eq(0)").prop("selected")){
			alert("출발지가 선택되지 않았습니다.");
		}else if($(".arrLoc option:eq(0)").prop("selected")){
			alert("도착지가 선택되지 않았습니다.")
		}else if($(".person option:eq(0)").prop("selected")){
			alert("인원을 선택해주세요");
		}else if($(".limoTime option:eq(0)").prop("selected")){
			alert("출발시간을 선택해주세요");
		}else{
			$(".sel").click();
		}


		$.ajax({
			type:'get',
			url:"./disabled",
			async: false,
			data:{
				"depLoc":$(".depLoc").val(),
				"arrLoc":$(".arrLoc").val(),
				"limoDate":$(".limoDate").val(),
				"limoTime":$(".limoTime").val(),
				"sec":"1"
			},
			success : function(data){
				data = data.trim();
				console.log(data);
				$('.place2').html(data);
			}
		});

		// 모달창 열릴 때 값들 넘기기
		var limoDate_M = $(".limoDate").val();
		$(".select_limoDate_text").html(limoDate_M);
		var depLoc_M = $(".depLoc").val();
		$(".select_depLoc_text").html(depLoc_M);
		var arrLoc_M = $(".arrLoc").val();
		$(".select_arrLoc_text").html(arrLoc_M);
		var person_M = $(".person").val();
		$(".select_person_text").html(person_M+"명");
		var price_M = $(".price").val();
		$(".select_price_text").html(price_M+"원");
		var limoTime_M = $(".limoTime").val();
		$(".select_limoTime_text").html(limoTime_M);

		// 선택불가 좌석 
		 $(".dis").each(function(){
			var checked = $(this).val();
			$("#"+checked).attr('disabled', true);
			$("#"+checked).parent().addClass("booked");
		}); 
	});

	// 모달창 인원수에 맞게 좌석 선택시 선택완료 진행
	$(".complete").click(function(){
		var seat = "";
		if(count < person){
			alert("인원수에 맞게 좌석을 선택해주세요");
		}else{
		$('.lim').each(function(){
			if($(this).is(":checked")){
				seat = seat+this.value+'번';
			}
				$(".seat").val(seat);

				$(".com2").click();
			});
		}
	});
	
	// 출발지가 바뀌면 다른 값들 초기화
	var price = 0;
	$("body").on("change", ".arrLoc1", function(){
		$(".person option:eq(0)").prop("selected", true);
		$(".limoTime option:eq(0)").prop("selected", true);
		$(".price").val("");
		$(".seat").val("");
		price = $(".arrLoc1 option:selected").attr('id');
		price = price*1;
	});

	// 대인 & 소인 가격 산출하기 : 소인가격 = 대인가격 * 0.8
	var person = 0;
	var child = 0;
	var cal1 = 0;
	var totalperson = 0;
	var cal2 = 0;
	$("body").on("change", ".person1", function(){
		person = $(".person option:selected").val();
		person = person*1;
		cal1 = price * person;
		totalperson = person + child;
		$(".price").val(cal1+cal2);
		if(totalperson > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child option:eq(0)").prop("selected", true);
			$(".price").val(cal1);
		}
	});
	
	$("body").on("change", ".child1", function(){
		child = $(".child option:selected").val();
		child = child*1;
		cal2 = price * 0.8 * child;
		$(".price").val(cal1+cal2);
			totalperson = person + child;
		if(totalperson > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child option:eq(0)").prop("selected", true);
			$(".price").val(cal1);
		}
	});
	
	// 이용가능 좌석 빨간색 이미지로 바꾸기
	var count = 0;
	$(".lim").click(function(){
		var lim_M = $(this).val();
		if($(this).parent().hasClass('abcd')){
			$(this).parent().removeClass('abcd');
			// 모달 내 seat영역에 좌석번호 재 선택시 삭제
			$('#d'+lim_M).remove();
			count --;
		}else if(count < totalperson){
			$(this).parent().addClass('abcd');
			// 모달 내 seat영역에 좌석번호 추가
			$(".select_seat_text").append('<span id="d'+lim_M+'" class='+lim_M+'>'+lim_M+'번'+'</span>');
			count ++;
		}else{
			alert("더 이상 선택할 수 없습니다.");
			$(this).prop("checked", false);
		}
	});

	// 공항 -> 도시 추가
	var check = 0;
	var checkcheck = true;
	var parent = $(".frm_wrap").html();
		$(".add").click(function(){
		var frm = $(".frm_wrap2").html();
		if(check<1){
			if(checkcheck){
//				$(".hereeeer").append(frm);
				$(".frm_wrap2").parent().css("display", "block");
				check++;
			}else{
//				$(".hereeeer").append(parent);
				$(".frm_wrap2").parent().css("display", "block");
			alert(parent);
			}
		}else{
			alert("편도당 예매는 2번까지 가능합니다.");
		}
	});

	$(".del").click(function(){
		$(".checkbox").each(function(){
			if($(this).prop("checked")){
				var h = $(this).val();
				if(h == "frm_wrap"){
					console.log("frm_wrap");
					checkcheck = false;
				}else{
					checkcheck = true;
				}
				$(this).parent().remove();
				check --;
			}
		});
	});
	
	$(".gobooks").click(function(){

		var check_count = 0;
		var check_total = $(".checkbox").length;
		var check_none = 0;
		var checked_total = 0;
		$(".checkbox").each(function(){
			var this_check = $(this);
			if($(this).prop("checked")){
				checked_total = checked_total+1;
				if(this_check.siblings("input[name=limoDate]").val()==""){
					alert('날짜를 선택해주세요');
				}else if(this_check.siblings("select[name=depLoc]").val()==""){
					alert("출발지가 선택되지 않았습니다.");
				}else if(this_check.siblings("span").children("select[name=arrLoc]").val()==""){
					alert("도착지가 선택되지 않았습니다.");
				}else if(this_check.siblings("span").children("select[name=person]").val()=="" && this_check.siblings("span").children("select[name=child]").val()==""){
					alert('탑승인원을 선택해주세요.');
				}else if(this_check.siblings("select[name=limoTime]").val()==""){
					alert('출발시간을 선택해주세요.');
				}else if(this_check.siblings("input[name=seat]").val()==""){
					alert('좌석을 선택해주세요.');
				}else{
					check_count = check_count+1;
				}
			}else{
				check_none = check_none + 1;

				if(check_total == check_none){
					alert('결제할 버스를 선택해주세요.');
				}
			}
		});
		console.log('체크한 수(검증완) :' +check_count);
		console.log('체크박스 수 :' +check_total);
		console.log('논체크 수 :' +check_none);
		console.log('체크한 수 :' +checked_total);
		if(check_count == checked_total && check_count != 0){
			alert('결제 진행');
			window.open("../imPay/imPayList2?name=리무진버스&amount="+100,"이니시스", "width=825px, height=600px");
		}
	});
	
	$(".gobooks2").click(function(){

		var check_count = 0;
		var check_total = $(".checkbox").length;
		var check_none = 0;
		var checked_total = 0;
		$(".checkbox").each(function(){
			var this_check = $(this);
			if($(this).prop("checked")){
				checked_total = checked_total+1;
				if(this_check.siblings("input[name=limoDate]").val()==""){
					alert('날짜를 선택해주세요');
				}else if(this_check.siblings("select[name=depLoc]").val()==""){
					alert("도착지가 선택되지 않았습니다.");
				}else if(this_check.siblings("span").children("select[name=arrLoc]").val()==""){
					alert("출발지가 선택되지 않았습니다.");
				}else if(this_check.siblings("span").children("select[name=person]").val()=="" && this_check.siblings("span").children("select[name=child]").val()==""){
					alert('탑승인원을 선택해주세요.');
				}else if(this_check.siblings("select[name=limoTime]").val()==""){
					alert('출발시간을 선택해주세요.');
				}else if(this_check.siblings("input[name=seat]").val()==""){
					alert('좌석을 선택해주세요.');
				}else{
					check_count = check_count+1;
				}
			}else{
				check_none = check_none + 1;

				if(check_total == check_none){
					alert('결제할 버스를 선택해주세요.');
				}
			}
		});
		console.log('체크한 수(검증완) :' +check_count);
		console.log('체크박스 수 :' +check_total);
		console.log('논체크 수 :' +check_none);
		console.log('체크한 수 :' +checked_total);
		if(check_count == checked_total && check_count != 0){
			alert('결제 진행');
			window.open("../imPay/imPayList2?name=리무진버스&amount="+100,"이니시스", "width=825px, height=600px");
		}
	});


	function yongju(){
			if($("#hidden").val() =="용주형아"){
				$(".checkbox").each(function(){
					if(!$(this).prop("checked")){
						$(this).parent().remove();
					}
				$(".frm").submit();
			});
		}
	}
				
				

// 편도 2회 예매 --------------------------------------------------------------------------------------------------------
// 지난 날 막기 : date함수
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1;
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 
	today = yyyy+'-'+mm+'-'+dd;
	
	$(".limoDate2").attr('min', today);
	
	var depLoc2 = "";
	var limoDate2 = "";
	var arrLoc2 = "";
	var limoTime2 = "";
	$("body").on("change", ".depLoc2", function(){
//		var depLoc = $(this).val();
		$(".depLoc2 > option").each(function(){
			if($(this).prop("selected")){
				depLoc2 = $(this).attr("value");
			}
		});
		$(".person2 option:eq(0)").prop("selected", true);
		$(".limoTime2 option:eq(0)").prop("selected", true);
		$(".price2").val("");
		$(".seat2").val("");
		
		$.ajax({
			type:'get',
			url:"./arrLoc",
			data:{
				"depLoc":depLoc2,
				"sec":"2"
			},
			success : function(data){
				data = data.trim();
				$(".place4").empty();
				$(".place4").append(data);
			}
		})	
	});

	$("body").on("click", ".select2", function(){
		$(".lim2").each(function(){
			console.log('lim2');
			$(this).prop('disabled', false);
			$(this).prop("checked", false);
			$(this).parent().removeClass('abcd');
			$(this).parent().removeClass('booked');
			count2 = 0;
			$(".select_seat_text2").html("");
		});
		
		// 각각의 요소 선택안되고 있을 시 alert 창 띄우기
		if($(".limoDate2").val() == ""){
			alert("날짜를 선택해주세요");
		}else if($(".depLoc2 option:eq(0)").prop("selected")){
			alert("출발지가 선택되지 않았습니다.");
		}else if($(".arrLoc2 option:eq(0)").prop("selected")){
			alert("도착지가 선택되지 않았습니다.")
		}else if($(".person2 option:eq(0)").prop("selected")){
			alert("인원을 선택해주세요");
		}else if($(".limoTime2 option:eq(0)").prop("selected")){
			alert("출발시간을 선택해주세요");
		}else{
			$("#sel3").click();
		}
		
		$(".depLoc2 > option").each(function(){
			if($(this).prop("selected")){
				depLoc2 = $(this).attr("value");
			}
		});
		$(".arrLoc2 > option").each(function(){
			if($(this).prop("selected")){
				arrLoc2 = $(this).attr("value");
			}
		});
		
		limoDate2 = $("#d2").val();
		
		$(".limoTime2 > option").each(function(){
			if($(this).prop("selected")){
				limoTime2 = $(this).attr("value");
			}
		});	
		$.ajax({
			type:'get',
			url:"./disabled",
			async: false,
			data:{
				"depLoc":depLoc2,
				"arrLoc":arrLoc2,
				"limoDate":limoDate2,
				"limoTime":limoTime2,
				"sec":"2"
			},
			success : function(data){
				data = data.trim();
				console.log(data);
				$('.place2').html(data);
			}
		});

		// 모달창 열릴 때 값들 넘기기
		var limoDate_M = $(".limoDate2").val();
		$(".select_limoDate_text2").html(limoDate_M);
		var depLoc_M = $(".depLoc2").val();
		$(".select_depLoc_text2").html(depLoc_M);
		var arrLoc_M = $(".arrLoc2").val();
		$(".select_arrLoc_text2").html(arrLoc_M);
		var person_M = $(".person2").val();
		$(".select_person_text2").html(person_M+"명");
		var price_M = $(".price2").val();
		$(".select_price_text2").html(price_M+"원");
		var limoTime_M = $(".limoTime2").val();
		$(".select_limoTime_text2").html(limoTime_M);

		// 선택불가 좌석 
		 $(".dis").each(function(){
			 console.log('dis');
			var checked = $(this).val();
			$("#two"+checked).attr('disabled', true);
			$("#two"+checked).parent().addClass("booked");
		}); 
	});

	// 모달창 인원수에 맞게 좌석 선택시 선택완료 진행
	$(".complete2").click(function(){
		var seat2 = "";
		if(count2 < person2){
			alert("인원수에 맞게 좌석을 선택해주세요");
		}else{
		$('.lim2').each(function(){
			if($(this).is(":checked")){
				seat2 = seat2+this.value+'번';
			}
				$(".seat2").val(seat2);

				$(".com2").click();
			});
		}
	});
	
	// 출발지가 바뀌면 다른 값들 초기화
	var price2 = 0;
	$("body").on("change", ".arrLoc2", function(){
		$(".person2 option:eq(0)").prop("selected", true);
		$(".limoTime2 option:eq(0)").prop("selected", true);
		$(".price2").val("");
		$(".seat2").val("");
// 		price2 = $(".arrLoc2 option:selected").prop("title");
// 		price2 = $(".arrLoc2 option:selected").prop("title");
		$(".arrLoc2 > option").each(function(){
			if($(this).prop("selected")){
				price2 = $(this).attr("title");
			}
		})
		price2 = price2*1;
		console.log(price2);	
	});

	// 대인 & 소인 가격 산출하기 : 소인가격 = 대인가격 * 0.8
	var person2 = 0;
	var child2 = 0;
	var cal3 = 0;
	var totalperson2 = 0;
	var cal4 = 0;
	$("body").on("change", ".person2", function(){
// 		person2 = $(".person2 option:selected").val();
		$(".person2 > option").each(function(){
			if($(this).prop("selected")){
				person2 = $(this).attr("value");
			}
		})
		person2 = person2*1;
		cal3 = price2 * person2;
		$(".price2").val(cal3+cal4);
		totalperson2 = person2 + child2;
		if(totalperson2 > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child2 option:eq(0)").prop("selected", true);
			$(".price2").val(cal3);
		}
	});
	
	$("body").on("change", ".child2", function(){
//		child2 = $(".child2 option:selected").val();
		$(".child2 > option").each(function(){
			if($(this).prop("selected")){
				child2 = $(this).attr("value");
			}
		})
		child2 = child2*1;
		cal4 = price2 * 0.8 * child2;
		$(".price2").val(cal3+cal4);
		totalperson2 = person2 + child2;
		if(totalperson2 > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child2 option:eq(0)").prop("selected", true);
			$(".price2").val(cal3);
		}
	});
	
	// 이용가능 좌석 빨간색 이미지로 바꾸기
	var count2 = 0;
	$(".lim2").click(function(){
		var lim_M = $(this).val();
		if($(this).parent().hasClass('abcd')){
			$(this).parent().removeClass('abcd');
			// 모달 내 seat영역에 좌석번호 재 선택시 삭제
			$('#c'+lim_M).remove();
			count2 --;
		}else if(count2 < totalperson2){
			$(this).parent().addClass('abcd');
			// 모달 내 seat영역에 좌석번호 추가
			$(".select_seat_text2").append('<span id="c'+lim_M+'" class='+lim_M+'>'+lim_M+'번'+'</span>');
			count2 ++;
		}else{
			alert("더 이상 선택할 수 없습니다.");
			$(this).prop("checked", false);
		}
	});

	// 공항 -> 도시 추가
	var frm2 = $(".frm_wrap2").html();
	var check2 = 0;
	$(".add2").click(function(){
		if(check2<1){
			$(".frm_wrap2").parent().style("display", "block");
			check2++;
		}else{
			alert("편도당 예매는 2번까지 가능합니다.");
		}
	});

	$(".del2").click(function(){
		$(".checkbox2").each(function(){
			if($(this).prop("checked")){
				$(this).remove();
				check2 --;
			}
		});
	});
	
	