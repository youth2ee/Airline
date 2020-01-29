<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
    <link href="../resources/css/reset.css" rel="stylesheet">
    <link href="../resources/css/mypage/main.css" rel="stylesheet">
	<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link href="//www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/assets/circle.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/demo.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/skins/yellowcircle.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/skins/purplecircle.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/skins/firecircle.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/skins/whitecircle.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/skins/simplecircle.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400" rel="stylesheet">
    <script type="text/javascript" src="../resources/assets/circle.js"></script>
	
	
	
</head>
<body>




<header></header>
<div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<select onchange="location.href=this.value">
<option selected="selected" value="./main">나의 Every Air</option>
<option value="./memberUpdate">회원정보수정</option>
<option value="./mileage">마일리지</option>
<option value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>

	<div class="myinfo">
	<div class="myinfoWrap">
	
		<div class="myInfoLeft">
			<div> 
				<div id="miname">이가영 님</div> 
				<span id="miEname">Lee Ga Young</span>
			</div>
			
			<div id="cardInfo">
				<div>레벨</div>
				<div>card 번호</div>
				<div>바코드 / QR코드 / SMS</div>
			</div>
			
			<div style="height: 30px; background-color: green;">
				여기에는 공지사항을 넣어야하는데 하기싫다.
			</div>
			
		</div>
		
		
		<div class="myInfoMiddle">
			<div class="page" style="width: 500px; margin: 0 auto;">
				<div class="circles-container bg-white">
					<div class="circlebar" data-circle-startTime=0
						data-circle-maxValue="80" data-circle-dialWidth=10
						data-circle-size="300px" data-circle-type="progress">
						<div class="loader-bg">
							<div class="text">00:00:00</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="myInfoRight"></div>
		
	</div>
	</div>

<section>


mypage

</section>
<footer></footer>

 <script type="text/javascript">

 $(document).ready(function() {
	 /*             $("#circle-1").Circlebar({
	                 maxValue: 20,
	                 fontSize: "14px",
	                 triggerPercentage: true
	             }); */
	             
	             var t2 = new Circlebar({
	                 element: ".circlebar",
	                 maxValue: 100,
	                 fontColor: "#777",
	                 fontSize: "25px",
	                 skin: "white",
	                 type: "progress"
	             });

	 /*             new Circlebar({
	                 element: ".circlebar",
	                 maxValue: 100,
	                 dialWidth: 40,
	                 size: "500px",
	                 fontSize: "30px",
	                 type: "progress"
	             }); */
	         });

 

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>



</body>
</html>