<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
</head>
<body>

	<!-- <script> 
		var g5_captcha_url = "https://openapi.naver.com/v1/captcha/nkey";
	</script>
	<script src="https://openapi.naver.com/v1/captcha/nkey"></script> -->
	<fieldset id="captcha" class="captcha">
		<legend>
			<label for="captcha_key">자동등록방지</label>
		</legend>
		<div class="col-md-6" id="captchaDiv">
		<!-- <img src=""
			alt="" id="captcha_img" style="float:right"> -->
		<br>
		
		</div>
		<div class="col-md-5">
		<br>
		<button type="button" id="checkNo"  >
			확인
		</button>
		<button type="button" id="capReload">
			<span></span>새로고침
		</button>
		<input type="text" name="captcha_key" id="value"
			required class="captcha_box required" size="15"
			maxlength="15" style="float:left"> <br><span id="captcha_info"style="float:left">자동등록방지
			숫자를 순서대로 입력하세요.</span>
		</div>
		<input type="hidden" id="key" name="key">
	</fieldset>
	
<script type="text/javascript">

 	$('#capReload').on('click', function(){

		$("#submit").attr('disabled',true);
		$.ajax({
			 url : "captchaKey.do", 
		//	dataType:"json",
			success : function(data) {
				console.log(data);
	//			var key = data;
	//			location.href = "captchaImg.do?key="+key;
				$('#key').val(data);
				
				getCaptchaImg();
	
			}, error : function(data){
				console.log("error : "+data);
			}
		});
	});
	
	$(document).ready(function() {
		$.ajax({
			url : "captchaKey.do",
		//	dataType:"json",
			success : function(data) {
				console.log(data);
	//			var key = data;
	//			location.href = "captchaImg.do?key="+key;
				$('#key').val(data);
				
				getCaptchaImg();
	
			}, error : function(data){
				console.log("error : "+data);
			}
		});
		
	});
	function getCaptchaImg(){
		$(function(){
		//	alert("이미지 캡차 메소드 실행 ");
		var key = $("#key").val();
			$.ajax({
				url: "captchaImg.do",
				data: {key: key},
				success: function(data){
					$("#captchaDiv").html("<img src='${ contextPath }/resources/captchaImg/"+data+"'>").css('float','left');
				}
			});
		});
	}
	
	 $("#checkNo").on("click",function(){
	//	var form01Data = $("#form01").serialize();
	//	console.log(form01Data);
		var key = $("#key").val();
		var value = $("#value").val();
		$.ajax({
			url : "checkNo.do",
			data : {key:key,value:value},
			dataType:"json",
			success : function(data) {
				console.log(data.result);
				if(data.result){
					alert("성공");
					$("#submit").attr('disabled',false);
				}else{
					alert("일치하지 않습니다. 다시 확인해주세요.");
				}
			},error : function(data){
				alert("에러");
				console.log(data);
			}
		});
	}); 
	 
	
</script>
	
</body>
</html>