<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="../resources/css/board/boardList.css">
	<link rel="stylesheet" href="../resources/css/asiana/reset.css">
</head>
<body>

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
	
	<!--- 검색 --->
	<form id="frm" action="./${board}List3">
	<div class="total_search_input">
		<div class="search_inner">
			<select class="white common" name="kind" id="kind">
				<option id="ka" value="ka">제목+내용</option>
				<option id="kt" value="kt">제목</option>
				<option id="kc" value="kc">내용</option>
			</select>
			<input type="hidden" id="curPage" value="1" name="curPage">
			<input type="hidden" value="유류할증료" name="menu">
			<input type="text" name="search" id="searchText" class="common" placeholder="검색어를 입력하세요." value="${pager.search}">
			<button id="btnSearch">검색</button>
		</div>
	</div>
	</form>	
	
	<!--- tab --->	
	<div class="tab_wrap">
		<ul class="tabs">
		
			<li class="tab-link" data-tab="tab-1">
					<a href="./noticeList">
						<span> 전체 </span></a>
			</li>		
			<li class="tab-link" data-tab="tab-2">
					<a href="./noticeList1?menu=EveryAir소식">
						<span class="val"> EveryAir소식 </span></a>			
			</li>			
			<li class="tab-link" data-tab="tab-3">
					<a href="./noticeList2?menu=EveryAir클럽">
						 <span class="val"> EveryAir클럽 </span></a>
			</li>
			<li class="tab-link current" data-tab="tab-4">
				<a href="./noticeList3?menu=유류할증료">
					<span> 유류할증료 </span></a>
			</li>
			<li class="tab-link" data-tab="tab-5">
				<a href="./noticeList4?menu=제휴사소식">
					<span> 제휴사소식 </span></a>
			</li>
			<li class="tab-link" data-tab="tab-6">
				<a href="./noticeList5?menu=기타">
					<span> 기타 </span></a>
			</li>
		</ul>
		
		<!--- tab-content --->
		<div id="tab-4" class="tab-content test current">
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
					
				<c:forEach items="${list}" var = "vo">
					<li>
						<div class="left">
							<div class="title">
								<a href="#">
									<em>${vo.title}</em>
								</a>
							</div>
							<p class="txt">${vo.contents}</p>
						</div>
						<div class="right">
							<div class="right_sub">
							<span class="views">조회수: ${vo.hit}</span>
							<span class="date">${vo.regDate}</span>
							</div>
						</div>
					</li>
					</c:forEach>
				 </ul>	
			</div>
			
			<!--- paging --->
			<div class="paging">			
				<a href="./noticeList3?menu=유류할증료&curPage=1" class="btn_first btn_common"></a>
			<c:if test = "${pager.curBlock>1}"> 
				<a href="./noticeList3?menu=유류할증료&curPage=${pager.startNum-1}" class="btn_prev btn_common"></a>	
			 </c:if> 						
			<c:forEach begin="${pager.startNum}" end = "${pager.lastNum}" var="i">
				<a href="./noticeList3?menu=유류할증료&curPage=${i}" class="pagingNo" id="page${i}">${i}</a>
			</c:forEach>		
			<c:if test = "${pager.curBlock<pager.totalBlock}">
				<a href="./noticeList3?menu=유류할증료&curPage=${pager.lastNum+1}" class="btn_next btn_common"></a>			
			</c:if>		
			<fmt:parseNumber var="pages" integerOnly="true" value="${tc/10}"/>			
				<a href="./noticeList3?menu=유류할증료&curPage=${pages+1}" class="btn_last btn_common"></a>
			</div>
		</div>		
	</div>
</div>


<!--- script --->
	<script type="text/javascript">			

	/** paging **/
	$("#page${pager.curPage}").addClass("on");
		
	var kind = '${pager.kind}';
	if(kind == ''){
			kind = "kt";
		}
	$("#"+kind).prop("selected", true);
	

	/** tab **/
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');
		
		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	});
			
	</script>
	
</body>
</html>	