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
<%-- <div class = "container">
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
	  				<option id="kt" value="kt">Title</option>
	  				<option id="kw" value="kw">Writer</option>
	  				<option id="kc" value="kc">Contents</option>
	  			</select>
	  			
	  			<input type="text" name="search" value="${pager.search}">
	  			<button>Search</button>
	  		</form>
	  	</div>


</div>
</div> --%>


<!----- new ------>
<div class="location_bar">
	<div class="inner">
		<a href="#" class="home"></a>
		<select onchange="if(this.value) location.href=(this.value);" id="location_select">
			<option>공지사항</option>
			<option>고객의말씀</option>
			<option></option>
		</select>
	
	</div>
</div>

<div id="container">
	<h3>공지사항</h3>
	<div class="total_search_input">
		<div class="search_inner">
			<select class="white common">
				<option>제목+내용</option>
				<option>제목</option>
				<option>내용</option>
			</select>
			<input type="text" id="searchText" placeholder="검색어를 입력하세요." class="common">
			<button id="btnSearch">검색</button>
		</div>
	</div>
	
	<div class="tab_wrap">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">
				<span>전체</span>
			</li>
			<li class="tab-link" data-tab="tab-2">
				<span>EveryAir소식</span>
			</li>
			<li class="tab-link" data-tab="tab-3">
				<span>유류할증료</span>
			</li>
			<li class="tab-link" data-tab="tab-4">
				<span>EveryAir클럽</span>
			</li>
			<li class="tab-link" data-tab="tab-5">
				<span>제휴사소식</span>
			</li>
			<li class="tab-link" data-tab="tab-6">
				<span>기타</span>
			</li>
		</ul>
		
		<div id="tab-1" class="tab-content current">
			<div class="bbs_list">
				<ul>
			<!-- 		<li class="bg_point">
						<div class="left">
							<div class="title">
								<p class="txt"></p>
							</div>
						</div>
						<div class="right">
							<span class="views"></span>
							<span class="date"></span>
						</div>
					</li> -->						
					
					<li>
						<div class="left">
							<div class="title">
								<a href="#">
									<em>온라인플랫폼 개인정보처리방침 변경 안내</em>
								</a>
							</div>
							<p class="txt">온라인플랫폼 개인정보처리방침 변경 안내</p>
						</div>
						<div class="right">
							<div class="right_sub">
							<span class="views">조회수:</span>
							<span class="date">2020.01.29</span>
							</div>
						</div>
					</li>
				 </ul>	
			</div>
		</div>
		<div id="tab-2" class="tab-content"></div>
		<div id="tab-3" class="tab-content"></div>
		<div id="tab-4" class="tab-content"></div>
		<div id="tab-5" class="tab-content"></div>
		<div id="tab-6" class="tab-content"></div>
		
	</div>
	<div class="paging">
			<a href="#" class="btn_prev">
			</a>			
			<c:forEach begin="${pager.startNum}" end = "${pager.lastNum}" var="i">
				<a href="./noticeList?curPage=${i}" class="pagingNo">${i}</a>
		</c:forEach>
			<a href="#" class="btn_next"></a>
	</div>
</div>



<!-- paging -->
	<script type="text/javascript">
	 	var kind = '${pager.kind}';
		if(kind == ''){
				kind = "kt";
			}
		$("#"+kind).prop("selected", true);
	
		$('.list').click(function(){
			$("#curPage").val($(this).attr("id"));
			$("#frm").submit();
			
			});
		
	</script>
	
	<script type="text/javascript">
	/* tab */
		$('ul.tabs li').click(function(){
			var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
	
	/*paging*/
		$('.pagingNo').click(function(){	
		
			/* $('.pagingNo').removeClass('on'); */	
			$(this).addClass('on');
			
			});
	
	
	
	</script>

</body>
</html>	
			
			
			
