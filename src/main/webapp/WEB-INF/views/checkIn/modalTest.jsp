<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
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
	height: 80%;
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
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}

.modal-body {
	padding: 2px 16px;
	height: 100%;
}

.modal-footer {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
	bottom: 50px;
	top: -50px;
}

.inner1 {
	width: 60%;
	background-color: aqua;
	height: 555px;
	overflow-y: scroll;
	float: left;
	margin-top: 16px;
}

.innerMenu {
	background-color: cornflowerblue;
	height: 30%;
}

.innerInfo {
	background-color: coral;
	height: 350px;
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
</style>
</head>
<body>

<h2>Animated Modal with Header and Footer</h2>

<!-- Trigger/Open The Modal -->
<button id="myBtn">Open Modal</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
			<div class="modal-header">
				<span class="close">&times;</span>
				<p>좌석 예매하기</p>
			</div>
			<div class="modal-body">
				<div class="innerHeader">text</div>
				<div class="inner1">
					<p>d</p>
					<p>d</p>
					<p>d</p>
					<p>d</p>
					<p>d</p>
					<p>d</p>
					<p>d</p>
					<p>d</p>
					<p>d</p>
					<p>d</p>
					<p>d</p>
				</div>
				<div style="width: 38%; float: right;">
					<div class="innerMenu">
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
					</div>
					<div class="innerInfo">
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
						<p>a</p>
					</div>
				</div>
			</div>
			<!-- 	    <div class="modal-footer">
	      <h3>Modal Footer</h3>
	    </div>  -->
  </div>

</div>

<script>
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
