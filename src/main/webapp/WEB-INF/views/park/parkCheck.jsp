<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input[type="radio"] { /* 실제 라디오는 화면에서 숨김 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}
label { /* 주차구역 */
	cursor: pointer;
	width: 30px;
	height: 50px;
	font-size: 18px !important;
	border: 2px solid white;
	box-sizing: border-box;
}
.bookable { /*예매가능*/
	text-align: center;
	background-color: #eeefea;
	font-size: 12px;
}
.booked { /*이미 예매된 자리*/
	text-align: center;
	background-color: #666666;
	font-size: 12px;
}
.booking { /*선택한자리*/
	text-align: center;
	background-color: #e4620d !important;
	font-size: 12px;
}

.etc{ /* 장애인전용주차구역 */
	background-color: #2a6bcf;
	background-image: url("../images/disability.png");
	background-size: 26px 40px;
	background-position: center;
	background-repeat: no-repeat;
	opacity: 80%;
	
}
.인천공항{
	width: 1000px;
	height: 600px;
	background-image: url("../images/parkingarea/인천공항2.png");
	background-size: 80%;
	background-repeat: no-repeat;
	padding-top: 205px;
	padding-left: 130px;
}
.제주공항{
	width: 1000px;
	height: 630px;
	background-image: url("../images/parkingarea/김포공항.png");
	background-size: 90%;
	background-repeat: no-repeat;
	padding-top: 15px;
	padding-left: 220px;

}
.김포공항{
	width: 1400px;
	height: 900px;
	background-image: url("../images/parkingarea/제주공항.png");
	background-size: 90%;
	background-repeat: no-repeat;
	padding-top: 260px;
	padding-left: 220px;
	

}
</style>
</head>
<c:import url="../template/boot.jsp" />

<body>
<c:import url="../template/roading.jsp" />

<div class="container">

<form action="./parkCheck" method="get">
<input type="date" name="startDate" value="${param.startDate}" id="startDate">
<input type="date" name="endDate" value="${param.endDate}" id="endDate">
<select name="airport">
	<option id="인천공항" value="인천공항">인천공항</option>
	<option id="김포공항" value="김포공항">김포공항</option>
	<option id="제주공항" value="제주공항">제주공항</option>
</select>
<br>
<button class="btn btn-primary">검색하기</button>
</form>

<form action="resInsert" method="post">

<input type="date" name="startDate" value="${param.startDate}" style="display: none;">
<input type="date" name="endDate" value="${param.endDate}" style="display: none;">
<input type="hidden" name="airport" value="${param.airport}" >

<!-- 예약 못하는 자리  -->
<c:forEach items="${list}" var="vo">
<input type="hidden" value="${vo.areaNum}" class="check"><br>
</c:forEach>

<!-- 장애인 자리 -->
<c:forEach items="${etc}" var="vo">
<input type="hidden" value="${vo}" class="etc"><br>
</c:forEach>

<div class="container2 ${park.aName}">


<c:forEach begin="1" end="${park.total}" varStatus="vo">

<c:choose>
	
	<c:when test="${vo.current%park.margin2  eq park.margin && vo.current le park.nopattern}">
		<label for="${vo.current}" class="la bookable" style="margin-right: 68px;" id="r${vo.current}">
			<input type="radio" name="areaNum" value="${vo.current}" id="${vo.current}">
		</label>
	</c:when>
	
	<c:otherwise>
		<label for="${vo.current}" class="la bookable" id="r${vo.current}">
			<input type="radio" name="areaNum" value="${vo.current}" id="${vo.current}" >
		</label>
	</c:otherwise>
	
</c:choose>

<c:choose>

<c:when test="${vo.current gt park.nopattern}">
</c:when>
<c:otherwise>
<c:if test="${vo.current eq park.line || vo.current eq park.line*3 || vo.current eq park.line*5 || vo.current eq park.line*7 && vo.current lt park.nopattern}">
<br>
<br>
<br>
<br>
</c:if>
<c:if test="${vo.current eq park.line*2 || vo.current eq park.line*4 ||vo.current eq park.line*6 || vo.current eq park.line*7 && vo.current lt park.nopattern}">
<br>
</c:if>
</c:otherwise>

</c:choose>
</c:forEach>
</div>
<br>
<div style="">
예상요금 : <input type="text" id="rate" name="rate"><br>
차량번호 : <input type="text" id="carNum" name="carNum"><br>
차량종류 : <input type="text" id="carKind" name="carKind"><br>

<button>예약하기</button>
</div>
</form>
</div>

<button class="ls">LS</button>
<button class="le">LE</button>

<script type="text/javascript">

	//시작일데이터 받기
	var startDate = $("#startDate").val();
	var startDateArr = startDate.split('-');

 	//종료일 데이터 받기
	var endDate = $( "#endDate" ).val(); 
	var endDateArr = endDate.split('-');

    //파싱
	var startDateCompare = new Date(startDateArr[0], parseInt(startDateArr[1])-1, startDateArr[2]);
	var endDateCompare = new Date(endDateArr[0], parseInt(endDateArr[1])-1, endDateArr[2]);

	console.log('startDate :'+startDate);
	
	var count = 0;
	
	//날비교
	var day = endDateCompare - startDateCompare;
	var cday = 24*60*60*1000;
	day = day/cday+1;

	//선택기간 안에 주말이 몇번인가 체크
	for(var i = 0; i < day ; i++){
		var check = startDateCompare.getDay()+i;
		if(check%7 == 0 || check%7 ==6){
			count++;
		}else{

		}
	}
	console.log(count);

	
		//주차불가능지역 불가능하게 만들기
		$(".check").each(function(){
			var check = $(this).val();
			$("#"+check).attr('disabled',true);
			$("#r"+check).addClass('booked');

		});

		//장애인전용주차구역 표시
		$(".etc").each(function(){
			var etc = $(this).val();
			$("#r"+etc).addClass('etc');
		});
		
		//검색공항 select
		var airport = '${param.airport}';
		if(airport==''){
			airport='인천공항';
		}

		$("#"+airport).prop("selected", true);
	


	//좌석 선택 이벤트
	$(".la").click(function(){

		//예약가능여부 체크
		if($(this).hasClass('booked')){
			alert('예약불가능한 자리입니다.');
		}else{

			$(".la").each(function(){
				$(this).removeClass('booking');

			});
			
			$(this).addClass('booking');
			
			var per = 100;
			//요금계산
			var rate = (day-count) * ${park.perDay} + count*${park.perWeek};

			//장기이용 할인
			if(day>6){
				if(day>14){
					console.log('장기이용 10% 할인');
					per = 90;
				}else{
					console.log('장기이용 5% 할인');
					per = 95;
				}
			}

			if($(this).hasClass('etc')){
				alert('장애인 주차구역 선택');
				per = per - 50;
			}

			rate = rate*per/100;
			$("#rate").val(rate);
		}

		
	});

</script>
</body>
</html>