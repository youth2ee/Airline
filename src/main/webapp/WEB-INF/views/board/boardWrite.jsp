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



<!------- new --------->	\
<div class="writeForm">
<h5 id="">내용작성</h5>	
<div class="mar">
<span>*은 필수항목입니다.</span>
</div>

<table class="table_form">
	<tr>
		<th scope="row">
			<label>제목</label>
			<span>*</span>
		</th>
		<td>
			<input type="text" name="title" id="title" class="full common" style="100%;">
		</td>	
	</tr>
	
	<tr>
		<th scope="row">
			<label>내용</label>
			<span>*</span>
		</th>
		<td>
			<div class="textarea_wrap">
				<textarea name="contents" class="common" id="contents" rows="4" cols="50" style="position: relative;"></textarea>	
				<div class="txt_count">
					<em></em>
					/4000자
				</div>	
			</div>
		</td>
	</tr>	
	<tr>
		<th>
			파일첨부 
		</th>
			<td>
				<div class="jfile_wrap">
						<input type="file" title="파일첨부" id="">
						<div class="jfilestyle jfilestyle-corner ">
							<div name="filedrag"
								style="position: absolute; width: 100%; height: 0px; z-index: -1;">
							</div>
							<input type="text" style="width: 646px" placeholder="파일첨부"
								disabled="" text="파일첨부01">
							<button type="button" onclick="javascript:jfileClear($(this));"
								class="btn_detlete">
								<span class="hidden">삭제</span>
							</button>
							<span class="focus-jfilestyle" tabindex="0"> 
							<label	for="attfile1"> 
									<span>찾아보기</span>
							</label>
							</span>
						</div>
					</div>






				</td>

	</tr>

</table>




</div>
	



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