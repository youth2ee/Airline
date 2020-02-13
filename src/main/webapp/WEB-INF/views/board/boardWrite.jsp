<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<c:import url="../template/boot.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/board/boardWrite.css">
<link rel="stylesheet" href="../resources/css/asiana/reset.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">
 <!-- summerNote -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>

</head>
<body>

<header>
<c:import url="../layout/header.jsp"></c:import>
</header>



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

<!---- container ---->
<div id="wrap_container">
	<h3>글 작성하기</h3>
</div>
<div class="writeForm">
<h5>내용 작성</h5>	
<div class="mar">
<span>*은 필수항목입니다.</span>
</div>

<form action="${board}Write" method="post" enctype="multipart/form-data" id = "frm">
<table class="table_form">
		<tr>
		<th scope="row">
				주요공지
		</th>
		<td>
			<input type="checkbox" name="fix" id="fix" value="Y">
			<label for="fix" class="chk"></label>
		</td>	
	</tr>
	
	<tr>
		<th scope="row">
				제목
			<span>*</span>
		</th>
		<td>
			<input type="text" name="title" id="title" class="full common textWrite" style="100%;">
			<input type="hidden" id="writer" name="writer" value = "${member.id}">
		</td>	
	</tr>
	
	<tr>
		<th scope="row">
				분류선택
			<span>*</span>
		</th>
		<td>
			<select id="cate" name="cate" class=" cate common textWrite">
				<option>선택하세요</option>
				<option value="EveryAir소식">EveryAir소식</option>
				<option value="EveryAir클럽">EveryAir클럽</option>
				<option value="유류할증료">유류할증료</option>	
				<option value="제휴사소식">제휴사소식</option>
				<option value="기타">기타</option>		
			</select>
		</td>
	</tr>
	
	<tr>
		<th scope="row">
			내용
			<span>*</span>
		</th>
		<td>
			<div class="textarea_wrap">

				<textarea name="contents" class="common textWrite summernote" id="contents" rows="4" cols="50" style="position: relative;"></textarea>	

				
				<div class="txt_count">
					<em id="counter"></em>
					/4000자
				</div>	
			</div>
		</td>
	</tr>	
	<tr>
		<th scope="row">
			파일첨부 
		</th>
			<td>
				<div class="jfile_wrap">
						<input type="file" title="파일첨부" class = "addfile" id="attfile1" name="file">
						<div class="jfilestyle jfilestyle-corner ">
							<div 
								style="position: absolute; width: 100%; height: 0px; z-index: -1;">
							</div>
							<input type="text" style="width: 646px" placeholder="파일첨부"
								 class="common addFileName" id="fileName1" readonly="readonly">
							<button type="button"class="btn_detlete" id="btn_delete1">
								<span class="hidden">삭제</span>
							</button>
							<span class="focus-jfilestyle" tabindex="0"> 
							<label	for="attfile1"> 
									<span class= "search">찾아보기</span>
							</label>
							</span>
						</div>
				 </div>
					
					<div class="jfile_wrap"> 
						<input type="file" title="파일첨부" class = "addfile" id="attfile2" name="file">
						<div class="jfilestyle jfilestyle-corner ">
							<div 
								style="position: absolute; width: 100%; height: 0px; z-index: -1;">
							</div>
							<input type="text" style="width: 646px" placeholder="파일첨부"
								 class="common addFileName" id="fileName2" readonly="readonly">
							<button type="button"class="btn_detlete" id="btn_delete2">
								<span class="hidden">삭제</span>
							</button>
							<span class="focus-jfilestyle" tabindex="0"> 
							<label	for="attfile2"> 
									<span class= "search">찾아보기</span>
							</label>
							</span>
						</div>
					</div>
					
					<div class="jfile_wrap">
						<input type="file" title="파일첨부" class = "addfile" id="attfile3" name="file">
						<div class="jfilestyle jfilestyle-corner ">
							<div 
								style="position: absolute; width: 100%; height: 0px; z-index: -1;">
							</div>
							<input type="text" style="width: 646px" placeholder="파일첨부"
								 class="common addFileName" id="fileName3" readonly="readonly" >
							<button type="button"class="btn_detlete" id="btn_delete3">
								<span class="hidden">삭제</span>
							</button>
							<span class="focus-jfilestyle" tabindex="0"> 
							<label	for="attfile3"> 
									<span class= "search">찾아보기</span>
							</label>
							</span>
						</div>
				 	</div>
					
					<ul class= "list_type">
						<li>
							ㆍ 고객정보의 보호를 위해 첨부파일 기능 이용시, 개인정보 내용이 포함된 자료의 첨부는 지양하여 주십시오.(※ 탑승권, 항공권, 신분증 등)
						</li>									
						<li>
							ㆍ 파일명이 한글, 영문, 숫자를 제외한 다른 나라의 언어일 경우, 등록된 파일에 손상이 발생할 수 있습니다.
						</li>						
						<li>
							ㆍ JPG, JPEG, DOC, DOCX, PPT, PPTX, TXT, PDF, PNG, XPS, XLS, XLSX, 파일 형태로 첨부하시기 바랍니다.
						</li>
						<li>
							ㆍ 파일당 최대 5MB(음성/영상 파일은 최대 20MB)까지 첨부 가능합니다.
						</li>
					</ul>
				</td>
	</tr>
	<tr>
		<th scope="row">
				인증번호
				<span>*</span>
		</th>
		<td>
			<div>
				<p class="txt_capcha">보안을 위해 아래 캡차 인증을 진행하세요</p>
			</div>
			<div class ="capcha_wrap">
							<div id="captchaDiv"></div>
							<div>
								<button type="button" id="capReload">
									<span class="sp"><i class="fa fa-repeat"></i>새로고침</span>
								</button>
						
								<input type="text" name="captcha_key" id="value" required
									class="captcha_box required common textWrite"> 
								<button type="button" id="checkNo">확인</button>
							
							<input type="hidden" id="key" name="key">
							</div>
						</div>
		</td>
	</tr>
</table>

<div class="btn_wrap">
	<button id="btnTransfer" type="button">등록</button>
</div>


<div id="hidden" style="display: none;"></div>
<input type="hidden" id="ihidden" name="textContents">

</form>

</div>
	
	
	
	
	
<!---------------------------------- Script ------------------------------------>
<script type="text/javascript">

	/**** SummerNote *****/
	
	$(document).ready(function(){
		var markupStr = '${vo.textContents}';
		$('#counter').html(markupStr.length);
		
			$('.summernote').summernote({
					height:300,				
				}); 			
		});


	$('.summernote').on('summernote.keyup', function() {
		var markupStr = $('#contents').val();
		$('#contents').val("");
		$('#contents').val(markupStr.trim());	
		$('#hidden').html(markupStr.trim());
		markupStr = $('#hidden').text();	
		$('#ihidden').val(markupStr.trim());
		//글자수 세기
		$('#counter').html(markupStr.length);	
	});
	
/* 	function uploadFile(file, editor) {
		var formData = new FormData();
		
		formData.append('file', file);		
		
		$.ajax({
			data: formData,
			type:"POST", 
			url:"./summerFile", 
			enctype: "multipart/form-data",
			contentType: false,
			cache: false,
			processData: false,
			
			success:function(data){
					
				data = data.trim();
					console.log(data);
				data = '../resources/upload/summerfile/'+data;
				$(editor).summernote('insertImage', data);
			}
			 ,
			error:function(){		
							
			} 
			
		}); */
	//}
	
	
	
	
	/***** 파일 추가 삭제 *****/
	
	$('#attfile1').change(function(){
		
	 	 if(window.FileReader){
			var filename = $(this)[0].files[0].name;
				}else{
					var filename =$(this).val().split('/').pop().split('\\').pop();
	 	 	 	}	 	
			$('#fileName1').val(filename); 	
	});
	
	$('#btn_delete1').click(function(){
				$("#attfile1").val("");
				$("#fileName1").val("");	
	});

	$('#attfile2').change(function(){
		
	 	 if(window.FileReader){
			var filename = $(this)[0].files[0].name;
				}else{
					var filename =$(this).val().split('/').pop().split('\\').pop();
	 	 	 	}	 	
			$('#fileName2').val(filename); 	
	});
	
	$('#btn_delete2').click(function(){
				$("#attfile2").val("");
				$("#fileName2").val("");	
	});
	$('#attfile3').change(function(){
		
	 	 if(window.FileReader){
			var filename = $(this)[0].files[0].name;
				}else{
					var filename =$(this).val().split('/').pop().split('\\').pop();
	 	 	 	}	 	
			$('#fileName3').val(filename); 	
	});
	
	$('#btn_delete3').click(function(){
				$("#attfile3").val("");
				$("#fileName3").val("");	
	});



	
	/**** Null여부 ****/
	var check = false;
	
	$('#btnTransfer').click(function(){
	
		var title = $('#title').val();
		var cate = $("select[name=cate]").val();
		var contents = $('#contents').val();

		if(title !=="" && cate !=="" && contents !=="" && check == true){
					 $('#frm').submit();
						/* $("#btnTransfer").attr('disabled',false); */
		}else{
					alert('필수항목을 확인해주세요.')
			} 

	});



	
	/**** captcha ****/
	
		$('#capReload').on('click', function(){

		/* $("#btnTransfer").attr('disabled',true); */
		
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
					alert("인증되었습니다.");
					check=true;
					/* $("#btnTransfer").attr('disabled',false); */
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