<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/mypage/ticketCheck.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>

</head>
<body>

<h1>Notable inventions, <span>1910–2000</span></h1>
<div class="flex-parent">
	<div class="input-flex-container">
		<div class="input">
			<span data-year="1910" data-info="headset"></span>
		</div>
		<div class="input">
			<span data-year="1920" data-info="jungle gym"></span>
		</div>
		<div class="input active">
			<span data-year="1930" data-info="chocolate chip cookie"></span>
		</div>
		<div class="input">
			<span data-year="1940" data-info="Jeep"></span>
		</div>
		<div class="input">
			<span data-year="1950" data-info="leaf blower"></span>
		</div>
		<div class="input">
			<span data-year="1960" data-info="magnetic stripe card"></span>
		</div>
		<div class="input">
			<span data-year="1970" data-info="wireless LAN"></span>
		</div>
		<div class="input">
			<span data-year="1980" data-info="flash memory"></span>
		</div>
		<div class="input">
			<span data-year="1990" data-info="World Wide Web"></span>
		</div>
		<div class="input">
			<span data-year="2000" data-info="Google AdWords"></span>
		</div>
	</div>
	<div class="description-flex-container">
		<p>And future Call of Duty players would thank them.</p>
		<p>Because every kid should get to be Tarzan for a day.</p>
		<p class="active">And the world rejoiced.</p>
		<p>Because building roads is inconvenient.</p>
		<p>Ain’t nobody got time to rake.</p>
		<p>Because paper currency is for noobs.</p>
		<p>Nobody likes cords. Nobody.</p>
		<p>Brighter than glow memory.</p>
		<p>To capitalize on an as-yet nascent market for cat photos.</p>
		<p>Because organic search rankings take work.</p>
	</div>
</div>




<script type="text/javascript">
$(function(){
	var inputs = $('.input');
	var paras = $('.description-flex-container').find('p');
	$(inputs).click(function(){
		var t = $(this),
				ind = t.index(),
				matchedPara = $(paras).eq(ind);
		
		$(t).add(matchedPara).addClass('active');
		$(inputs).not(t).add($(paras).not(matchedPara)).removeClass('active');
	});
});

</script>

</body>
</html>