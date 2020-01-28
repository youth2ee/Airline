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
	<div class="container">
	  <h2>${board} Write Form</h2>
	  <form action="${board}Write" method="post" enctype="multipart/form-data">
	  	
	    <div class="form-group">
	      <label for="title">Title:</label>
	      <input type="text" class="form-control" id="title" placeholder="Enter title" name="title">
	    </div>
	    
	    <div class="form-group">
	      <label for="writer">Writer:</label>
	      <input type="text" class="form-control" id="writer" placeholder="Enter Writer" readonly="readonly"  name="writer" value = "${member.id}">
	    </div>
	    
	    <div class="form-group">
	      <label for="contents">Contents:</label>
	      <textarea  rows="30" cols="50" class="form-control" id="contents" placeholder="Enter Contents" name="contents"></textarea>
	    </div>
	    
	    
	    <div id = "filesForm">
	    	<div class = "form-group" title = "parent" >
	    	 	 <label for="file" class = "control-label col-sm-2" >File:</label>
	     	 <div class = "col-sm-9">
	      			<input type="file" class="form-control " id="file" name="file">
	      	</div>
	     	 <div class = "col-sm-1">
	      		<input type="button" class="form-control btn btn-danger del" value="del">
	     	 </div>
	    	</div>
	    </div>
	    
	   
			<input type="button" class = "btn btn-success" value="Add File" id = "add">
	    	 <button class="btn btn-info">Submit</button>
	    <!--  <input type="button" value = "test" id = "btn"> -->
	    </form>
	</div>



<!------- new --------->
<div id="wrap_container">
	<h3>글 작성하기</h3>
</div>
<div class="writeForm">
<h5>내용 작성</h5>	
<div class="mar">
<span style="font-weight: bold;">*은 필수항목입니다.</span>
</div>

<table class="table_form">
	<tr>
		<th scope="row">
			<label style="font-weight: normal;">제목</label>
			<span>*</span>
		</th>
		<td>
			<input type="text" name="title" id="title" class="full common textWrite" style="100%;">
		</td>	
	</tr>
	
	<tr>
		<th scope="row">
			<label style="font-weight: normal;">내용</label>
			<span>*</span>
		</th>
		<td>
			<div class="textarea_wrap">
				<textarea name="contents" class="common textWrite" id="content" rows="4" cols="50" style="position: relative;"></textarea>	
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
						<input type="file" title="파일첨부" class = "addfile" id="attfile1">
						<div class="jfilestyle jfilestyle-corner ">
							<div name ="filedrag"
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
						<input type="file" title="파일첨부" class = "addfile" id="attfile2">
						<div class="jfilestyle jfilestyle-corner ">
							<div name ="filedrag"
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
						<input type="file" title="파일첨부" class = "addfile" id="attfile3">
						<div class="jfilestyle jfilestyle-corner ">
							<div name ="filedrag"
								style="position: absolute; width: 100%; height: 0px; z-index: -1;">
							</div>
							<input type="text" style="width: 646px" placeholder="파일첨부"
								 class="common addFileName" id="fileName3" readonly="readonly" disabled text="파일첨부01">
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
	<button type="button" id="btnTransfer">등록</button>
</div>





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

$('#content').keyup(function(){
	var content = $(this).val();
	$('#counter').html(content.length);
	
});


</script>






<!------script ------->
<script type="text/javascript">
		var filesForm = $("#filesForm").html();  //click event 밖에 선언 
		$("#filesForm").empty(); 	
		var count =0; 					//안에 선언하면 초기화
		var index =0;	//index선언
		
		$("#filesForm").on("click",".del",function(){
			//$(this).parent().parent().remove();
			$(this).parents(".form-group").remove(); 
			count--;
		});
			
		
		$("#add").click(function () {
				if(count<5){
			//var filesForm = '<div id = "f'+index+''"><input><input type="button" title="f"></div>';
				$("#filesForm").append(filesForm);
				count++;
				//connt++
				//index++ 자신과 상관 없는 속성 controll하기 
				}else{
					alert("최대 5개 가능");
				}
		});
		
		$("#contents").summernote({
			 height: 500,
			 callbacks:{
				 onImageUpload:function(filesForm,editor){
					uploadFile(filesForm[0], this);
				 }, //upload 끝 
				 onMediaDelete:function(filesForm, editor){
					 deleteFile(filesForm[0],this);
				 }// delete 끝 
			 }//callBack 끝
		});
		
		
		
		function deleteFile(file, editor){
				var fileName = $(file).attr("src");
				fileName = fileName.substring(fileName.lastIndexOf("/")+1);
				//console.log(fileName);
			
				$.ajax({
					type:"POST",
					url: "summerfileDelete",
					data: {
						file:fileName
						
					},
					success: function(data) {
						console.log(data);
					}
					
				});
		}
		
		function uploadFile(file, editor) {
			var formData = new FormData();
			formData.append('file', file);		/* 파라미터 처리 form 생성 해서 input*/
			
			$.ajax({
				data: formData,
				type:"POST", 
				url:"./summerFile", 
				enctype: "multipart/form-data",
				contentType: false,
				cache: false,
				processData: false,
				success:function(data){
						/* console.log(data); data -> filename */
					data = data.trim();
						console.log(data);
					data = '../resources/upload/summerfile/'+data;
					$(editor).summernote('insertImage', data);
				}
				/* ,
				error:function(){							
				} */
				
			});
		}
		
		
		$("#btn").click(function() {
				alert($("#contents").summernote('code'));
		});
		
		//$("#contents").summernote('code','Hello');
			
</script>
	
</body>
</html>