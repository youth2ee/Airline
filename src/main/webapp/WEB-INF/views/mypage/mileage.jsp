<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/reset.css" rel="stylesheet">
    <link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">
<link href="../resources/css/mypage/mileage.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<header><c:import url="../layout/header.jsp"></c:import></header>
<div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<select onchange="location.href=this.value">
<option value="./main">나의 Every Air</option>
<option value="./memberUpdate">회원정보수정</option>
<option selected="selected" value="./mileage">마일리지</option>
<option value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>


<section>

<div style="width: 100%; text-align: center;"><h3 style="font-size: 40px; color: black;">마일리지 내역</h3></div>

<table class="table_list tb_type2" id="table_0" style="margin: 50px 0;">
<tr><th scope="row">현재 나의 마일리지</th><td>${member.mileage}</td></tr>
</table>


<table class="table_list tb_type2 showt" id="table_0" style="margin-bottom: 30px;">
<tr>
<th scope="row" style="width: 20%;
    vertical-align: middle;">예매일</th>
<th scope="row" style="width: 20%;
    vertical-align: middle;">예매번호</th>
<th scope="row" style="vertical-align: middle;
    width: 30%;">사용한 마일리지</th>
<th scope="row" style="width: 30%;">적립한 마일리지<br>
<span style="font-size: 12px;">(클릭하면 마일리지가 적립된 아이디를 확인하실 수 있습니다.)</span>
</th>

</tr>
<c:forEach items="${blist}" var="bl">
<tr style="border: 1px solid #ddd;" class="mtr"><td style="text-align: center;
    font-size: 15px;
    text-align: center;
    height: 40px;
    line-height: 40px;
    padding-left: 20px;">${bl.couName}</td>
<td class="btd">${bl.bookingNum}</td>
<td>- ${bl.mileageMin}</td>
<td>+ <span class="mplus" style="cursor: pointer; padding: 6px;">${bl.mileagePlus}</span></td>
</tr>


</c:forEach>

</table>


		<div id="myModal" class="modal">

			<!-- Modal content -->
			<div class="modal-content">
				<span class="close" style="font-size: 34px;">&times;</span>

				<div id="mtitle">적립된 회원번호</div>
				<div id="mcon">

					<table style="margin: 0 auto;">
						<tr>
							<td class="mbth">예매번호</td>
							<td class="mbtb mbnum"></td>
						</tr>

						<tr>
							<td class="mbth">회원번호</td>
							<td class="mbtb mbmnum"></td>
						</tr>

					</table>
				</div>
			</div>
		</div>

<div style="width: 100%; text-align: center;">  
  <button id="next">더보기</button>
</div>


</section>



<script type="text/javascript">

$('.mplus').click(function(){

	$('.mbnum').text('');
	$('.mbmnum').text('');

	$('#myModal').css('display','block');

	$('.close').click(function(){
		$('#myModal').css('display','none');
	});

	window.onclick = function(event) {
		  if (event.target == $('#myModal')) {
			  $('#myModal').css('display','none');
		  }
		}
	
	var bpnum = $(this).closest('.mtr').find('.btd').text();

 	$.ajax({
		data : {
			id : '${member.id}',
			bookingNum : $(this).closest('.mtr').find('.btd').text()
		},
		type : "GET",
		url : "./milplus",
		success : function(data) {

			$('.mbnum').text(bpnum);
			$('.mbmnum').text(data);

		}
	}); 
	
});


//더보기
$(document).ready(function(){

      var list = $(".showt tr");
      var numToShow = 6;
      var button = $("#next");
      var numInList = list.length;
      list.hide();
      if (numInList > numToShow) {
        button.show();
      }
      list.slice(0, numToShow).show();

      button.click(function(){
          var showing = list.filter(':visible').length;
          list.slice(showing - 1, showing + numToShow).fadeIn();
          var nowShowing = list.filter(':visible').length;
          if (nowShowing >= numInList) {
            button.hide();
          }
      });

});


</script>


</body>
</html>