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

<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,600,700' rel='stylesheet' type='text/css'>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>

<button id="toggleButton">Toggle</button>

<ul class="timeline" id="timeline">
  <li class="li complete">
    <div class="timestamp">
      <span class="author">온라인 체크인</span>
      <span class="date">11/15/2014<span>
    </div>
    <div class="status">
      <h4> Shift Created </h4>
    </div>
  </li>
  <li class="li complete">
    <div class="timestamp">
      <span class="author">체크인 마감</span>
      <span class="date">11/15/2014<span>
    </div>
    <div class="status">
      <h4> Email Sent </h4>
    </div>
  </li>
  <li class="li complete">
    <div class="timestamp">
      <span class="author">탑승마감</span>
      <span class="date">11/15/2014<span>
    </div>
    <div class="status">
      <h4> SIC Approval </h4>
    </div>
  </li>
  <li class="li">
    <div class="timestamp">
      <span class="author">출발</span>
      <span class="date">TBD<span>
    </div>
    <div class="status">
      <h4> Shift Completed </h4>
    </div>
  </li>
    <li class="li">
    <div class="timestamp">
      <span class="author">도착</span>
      <span class="date">TBD<span>
    </div>
    <div class="status">
      <h4> Shift Completed </h4>
    </div>
  </li>
 </ul>      


<script type="text/javascript">
var completes = document.querySelectorAll(".complete");
var toggleButton = document.getElementById("toggleButton");


function toggleComplete(){
  var lastComplete = completes[completes.length - 1];
  lastComplete.classList.toggle('complete');
}

toggleButton.onclick = toggleComplete;
</script>

</body>
</html>