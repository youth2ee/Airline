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

<link rel="stylesheet" href="../resources/css/board/boardList.css">
</head>
<body>
<div class = "container">
<div class = "contents">
	<table class = "table table-hover">
		<tr>
			<td>NUM</td>
			<td>TITLE</td>
			<td>WRITER</td>
			<td>DATE</td>
			<td>HIT</td>
		
		</tr>
		<c:forEach items="${list}" var = "vo">
			<tr>
				<td>${vo.num}</td>
				<td>${vo.title}</td>
				<td>${vo.writer}</td>
				<td>${vo.regDate}</td>
				<td>${vo.hit}</td>		
			</tr>		
		</c:forEach>
	
	</table>
	
	<div class= "contents">
		
		<c:if test = "${pager.curBlock>1}">
			<a href="./noticeList?curPage=${pager.startNum-1}">[이전]</a>
		
		</c:if>
		
		
		<c:forEach begin="${pager.startNum}" end = "${pager.lastNum}" var="i">
				<a href="./noticeList?curPage=${i}">${i}</a>
		</c:forEach>
		
		
		<c:if test = "${pager.curBlock<pager.totalBlock}">
			<a href="./noticeList?curPage=${pager.lastNum+1}">[다음]</a>
			
		</c:if>
	</div>
	
	<div> <!-- 검색창 -->
	  		<form id="frm" action="./${board}List">
	  			<input type="hidden" id="curPage" value="1" name="curPage">
	  			<select name="kind">
	  				<option id="kT" value="kT">Title</option>
	  				<option id="kW" value="kW">Writer</option>
	  				<option id="kC" value="kC">Contents</option>
	  			</select>
	  			
	  			<input type="text" name="search" value="${pager.search}">
	  			<button>Search</button>
	  		</form>
	  	</div>


</div>
</div>


	<script type="text/javascript">
	 	var kind = '${pager.kind}';
		if(kind == ''){
				kind = "kT";
			}
		$("#"+kind).prop("selected", true);
	
		$('.list').click(function(){
			$("#curPage").val($(this).attr("id"));
			$("#frm").sumit();
			
			});
		
	</script>

</body>
</html>