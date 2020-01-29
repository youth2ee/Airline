<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
  padding: 0;
  margin: 0;
}

.wrapper {
    width: 250px;
    height: 250px;
    background: #C2185B;
}

.wrapper div {
  position: absolute;
  background: #ffffff;
  border-radius: 50%;
  box-shadow: 7px 7px 10px 1px rgba(0,0,0,0.5);
}

.circle1 {
  width: 80px;
  height: 80px;
  top: 80px;
  left: 80px;
  /* 추가된 부분 */
    animation: scale1 2s ;
}


@keyframes scale1 {
    0%   { transform: scale(0) }
    100%  { transform: scale(1) }
}


</style>
</head>
<body>
<div id="capture" style="padding: 10px; background: #f5da55">
    <h4 style="color: #000; ">Hello world!</h4>
</div>
	  <div class="wrapper">
	    <div class="circle1"></div>
	  </div>
	<form action="./ttt">
		<div><input type="checkBox" id="chk1"><input type="text" id="text1" ></div>
		<div><input type="checkBox" id="chk2"><input type="text" id="text2" name="text2"></div>
		<input type="button" value="테스트" id="btn">
		<input type="button" value="캡처테스트" id="btn2">
	</form>
	<script type="text/javascript">
	
	$("#chk1").change(function(){	
		if($("#chk1").is(":checked")){
			$("#text1").attr('name','123');
		}
		else{
			$("#text1").removeAttr('name');
		}
	});
		$("#btn").click(function(){
			window.open("./eTicket","eTicket","width=700, height=900, toolbar=no, menubar=no, scrollbars=no, resizable=yes")
			});
		$("#btn2").click(function(){
			html2canvas(document.querySelector("#capture")).then(canvas => {
			    document.body.appendChild(canvas)
			});
		});
		
	</script>
</body>
</html>