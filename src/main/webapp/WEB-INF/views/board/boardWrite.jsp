<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../resources/css/board/boardWrite.css">
</head>
<body>

<!------- new --------->
<div id="wrap_container">
	<h3>글 작성하기</h3>
</div>
<div class="writeForm">
<h5>내용 작성</h5>	
<div class="mar">
<span style="font-weight: bold;">*은 필수항목입니다.</span>
</div>

<form action="${board}Write" method="post" enctype="multipart/form-data">
<table class="table_form">
	<tr>
		<th scope="row">
			<label style="font-weight: normal;">제목</label>
			<span>*</span>
		</th>
		<td>
			<input type="text" name="title" id="title" class="full common textWrite" style="100%;">
			<input type="hidden" id="writer" name="writer" value = "${member.id}">
		</td>	
	</tr>
	
	<tr>
		<th scope="row">
			<label style="font-weight: normal;">내용</label>
			<span>*</span>
		</th>
		<td>
			<div class="textarea_wrap">
				<textarea name="contents" class="common textWrite" id="contents" rows="4" cols="50" style="position: relative;"></textarea>	
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
							고객정보의 보호를 위해 첨부파일 기능 이용시, 개인정보 내용이 포함된 자료의 첨부는 지양하여 주십시오.(※ 탑승권, 항공권, 신분증 등)
						</li>				
					
						<li>
						파일명이 한글, 영문, 숫자를 제외한 다른 나라의 언어일 경우, 등록된 파일에 손상이 발생할 수 있습니다.
						</li>
						
						<li>
							JPG, JPEG, DOC, DOCX, PPT, PPTX, TXT, PDF, PNG, XPS, XLS, XLSX, 파일 형태로 첨부하시기 바랍니다.
						</li>
						<li>
						파일당 최대 5MB(음성/영상 파일은 최대 20MB)까지 첨부 가능합니다.
						</li>
					</ul>
				</td>
	</tr>
</table>
<div class="btn_wrap">
	<button id="btnTransfer">등록</button>
</div>
</form>




</div>
	
<!------ new script ------->
<script type="text/javascript">

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
	
/**** 글자수세기 ****/

$('#contents').keyup(function(){
	var content = $(this).val();
	$('#counter').html(content.length);
	
});


</script>

</body>
</html>