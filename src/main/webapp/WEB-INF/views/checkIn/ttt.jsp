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
	box-shadow: 7px 7px 10px 1px rgba(0, 0, 0, 0.5);
}

.circle1 {
	width: 80px;
	height: 80px;
	top: 80px;
	left: 80px;
	/* 추가된 부분 */
	animation: scale1 2s;
}

@
keyframes scale1 { 0% {
	transform: scale(0)
}

100%
{
transform
:
 
scale
(1)
 
}
}
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 60px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	position: relative;
	background-color: #fefefe;
	margin: auto;
	padding: 0;
	border: 1px solid #888;
	width: 80%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.4s;
	animation-name: animatetop;
	animation-duration: 0.4s;
	width: 42%;
}

/* Add Animation */
@
-webkit-keyframes animatetop {
	from {top: -300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
@
keyframes animatetop {
	from {top: -300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}

/* The Close Button */
.close {
	color: white;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

.modal-header {
	padding: 5px 16px;
	background-color: #5cb85c;
	color: white;
}

.modal-body {
	padding: 2px 16px;
	margin-top: 20px;
	height: 550px;
}

.modal-footer {
	/*   padding: 2px 16px;
  background-color: #5cb85c;
  color: white; */
	padding: 15px 16px;
	background-color: #5cb85c;
	color: white;
	margin-bottom: 15px;
}

.modalInnerWrap {
	height: 100%;
}

.modalInnerLeft {
	width: 55%;
	height: 600px;
	background-color: red;
	float: left;
	height: 85%;
}

.modalInnerRight {
	width: 45%;
	height: 600px;
	background-color: #607D8B;
	float: left;
	height: 85%;
}

.modalInnerRightTop {
	height: 57%;
	background-color: cadetblue;
}

.modal-header2 {
	background-color: aquamarine;
	height: 95px;
}

.modalInnerBottom {
	background-color: chocolate;
	width: 45%;
	margin: 0 auto;
	display: inline-block;
	margin-left: 210px;
	height: 55px;
	margin-top: 15px;
}

.left1 {
	height: inherit;
}

.nameView {
	background-color: blueviolet;
	height: 50px;
}

.seatView {
	overflow-y: scroll;
	/* height: -webkit-fill-available; */
	height: 362px;
}

.seatWarning {
	height: 56px;
	background-color: burlywood;
}

.seatView input:not([type="checkbox"]) {
 	overflow: hidden;
    width: 0;
    height: 0;
    font-size: 0;
    line-height: 0;
    opacity: 0;
	-webkit-appearance: none;
}
</style>
</head>
<body>
	  <div class="wrapper">
	    <div class="circle1"></div>
	  </div>
	<form action="./ttt">
		<div><input type="checkBox" id="chk1"><input type="text" id="text1" ></div>
		<div><input type="checkBox" id="chk2"><input type="text" id="text2" name="text2"></div>
		<input type="button" value="테스트" id="btn">
	</form>
	<!-- Trigger/Open The Modal -->
<button id="myBtn">Open Modal</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>좌석선택</h2>
    </div>
    <div class="modal-header2">
      <h2>김포 -> 제주</h2>
    </div>
    <div class="modal-body">
		<div class="modalInnerWrap">
			<div class="modalInnerLeft">
				<div class="left1">
					<div class="nameView">이름</div>
						<div class="seatView">
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						ddd<br>
						</div>
						<div class="seatWarning"> 좌석지정 유의사항 안내</div>
					</div>
			</div>
			<div class="modalInnerRight">
				<div class="modalInnerRightTop"></div>
				<div class="modalInnerRightDown"></div>
			</div>
			<div class="modalInnerBottom">
			 	dddd
			</div>
		</div>
    </div>
    <div class="modal-footer">
      <h3>Modal Footer</h3>
    </div>
  </div>

</div>
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
		// Get the modal
		var modal = document.getElementById("myModal");

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 
		btn.onclick = function() {
		  modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		  modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		  if (event.target == modal) {
		    modal.style.display = "none";
		  }
		}
	</script>
</body>
</html>