<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../template/boot.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/board/boardList.css">
<link rel="stylesheet" href="../resources/css/asiana/reset.css">
<link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">

</head>
<body>

<header>
<c:import url="../layout/header.jsp"></c:import>
</header>



<!-- <div id="headerBottom">
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

</div> -->

<div id="container">
	<h3><a href="./noticeList">공지사항</a></h3>
	<form id="frm" action="./${board}List">
	<div class="total_search_input">
		<div class="search_inner">
			<select class="white common" name="kind" id="kind">
				<option id="ka" value="ka">제목+내용</option>
				<option id="kt" value="kt">제목</option>
				<option id="kc" value="kc">내용</option>
			</select>
			<input type="hidden" id="curPage" value="1" name="curPage">
			<input type="text" name="search" id="searchText" class="common" placeholder="검색어를 입력하세요." value="${pager.search}">
			<button id="btnSearch">검색</button>
		</div>
	</div>
	</form>	
		
	<div class="tab_wrap">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">
					<a href="./noticeList?curPage=1&search=${pager.search}&kind=${pager.kind}"><span>전체</span></a>		
			</li>
			
			<li class="tab-link" data-tab="tab-2">					
					<a href="./noticeList1?menu=EveryAir소식&curPage=1&search=${pager.search}&kind=${pager.kind}"><span class="val">EveryAir소식</span></a>		
			</li>
			
			<li class="tab-link" data-tab="tab-3">
				<a href="./noticeList1?menu=EveryAir클럽&curPage=1&search=${pager.search}&kind=${pager.kind}">  <span class="val">EveryAir클럽</span></a>
			</li>
			<li class="tab-link" data-tab="tab-4">
				<a href="./noticeList1?menu=유류할증료&curPage=1&search=${pager.search}&kind=${pager.kind}"><span>유류할증료</span></a>
			</li>
			<li class="tab-link" data-tab="tab-5">
				<a href="./noticeList1?menu=제휴사소식&curPage=1&search=${pager.search}&kind=${pager.kind}"><span>제휴사소식</span></a>
			</li>
			<li class="tab-link" data-tab="tab-6">
				<a href="./noticeList1?menu=기타&curPage=1&search=${pager.search}&kind=${pager.kind}"><span>기타</span></a>
			</li>
		</ul>
		</div>
		<div id="tab-1" class="tab-content current">
			<div class="bbs_list">
				<ul>					
					<c:choose>	
					<c:when test="${empty list and not empty pager.search}">
							<div>
							<div class="total_search_txt">
								<strong>조회하신 단어와 일치하는 게시물이 없습니다.</strong>
							</div>
							<div class="btn_wrap_ceType1">
								<a href="./noticeList" id="btnList" type="button">전체리스트</a>
							</div>
						</div>				
					</c:when>	
					
					<c:otherwise>	
					<c:forEach items="${list}" var = "vo">
						<c:if test="${not empty vo.fix}">
						<li class="bg_point">
						<div class="left">
							<div class="title">
								<a href="./noticeSelect?num=${vo.num}&dispCt=all&curPage=${pager.curPage}&search=${pager.search}&kind=${pager.kind}">
									<span class="txt_notice">공지</span>
									<em>${vo.title}</em>
								</a>
							</div>
							<p class="txt">${vo.textContents}</p>
						</div>
						<div class="right">
							<div class="right_sub">
							<span class="views">조회수: ${vo.hit}</span>
							<span class="date">${vo.regDate}</span>
							</div>
						</div>
					</li>
					</c:if>
					
						<c:if test="${empty vo.fix}">
						<li>
							<div class="left">
								<div class="title">
									<a href="./noticeSelect?num=${vo.num}&dispCt=all&curPage=${pager.curPage}&search=${pager.search}&kind=${pager.kind}">
										<em>${vo.title}</em>
									</a>
								</div>
								<p class="txt">${vo.textContents}</p>
							</div>
							<div class="right">
								<div class="right_sub">
								<span class="views">조회수: ${vo.hit}</span>
								<span class="date">${vo.regDate}</span>
								</div>
							</div>
						</li>
						</c:if>	
						</c:forEach>
						</c:otherwise>	
					</c:choose>
				 </ul>	
			</div>
			<c:choose>
				<c:when test="${not empty list}">
			<div class="paging">
			<a href="./noticeList?curPage=1" class="btn_first btn_common">
			</a>
		
		 	  <c:if test = "${pager.curBlock>1}"> 
				<a href="./noticeList?curPage=${pager.startNum-1}" class="btn_prev btn_common"></a>	
			 </c:if> 
						
			<c:forEach begin="${pager.startNum}" end = "${pager.lastNum}" var="i">
				<a href="./noticeList?curPage=${i}" class="pagingNo" id="page${i}">${i}</a>
			</c:forEach>
			
			<c:if test = "${pager.curBlock<pager.totalBlock}">
			<a href="./noticeList?curPage=${pager.lastNum+1}" class="btn_next btn_common"></a>			
			</c:if>		
			<fmt:parseNumber var="pages" integerOnly="true" value="${tc/10}"/>			
			<a href="./noticeList?curPage=${pages+1}" class="btn_last btn_common"></a>
		</div>
			</c:when>
			</c:choose>		
		</div>		


</div>

  




	<script type="text/javascript">		
/* 	$(document).ready(function() {
			var list = '${fn:length(list)}';
			var test = $('#searchText').val();

				alert(test);
				
	if(${fn:length(list)} = 0 && test !=''){
					alert('ok');
			}
	}); */
		
	
		/* paging  */
		$("#page${pager.curPage}").addClass("on");
		
	 	var kind = '${pager.kind}';
		if(kind == ''){
				kind = "kt";
			}
		$("#"+kind).prop("selected", true);
	
		 $('.list').click(function(){
			$("#curPage").val($(this).attr("id"));
			alert("ok");
			$("#frm").submit();
			
			}); 
		
		/* tab */
		$('ul.tabs li').click(function(){
			var tab_id = $(this).attr('data-tab');
		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');
		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
		});
		
		/* tab 넘기기 */
/* 	$('body').on('click','.tab-link',function(){
				var menu = $(this).find('.val').text();
				var curPage = 1;
				var search = $('#searchText').val();
				var aa = document.getElementById("kind");
				kind = aa.options[aa.selectedIndex].value;
								
 	$.ajax({
					data : {
						menu:menu,
						kind:kind,
						curPage:curPage,
						search:search						
						},
					type : "GET",
					url : "./subNoticeList",
					success : function(data){
						
							$('.test').html(data);
						}
					});
		
			});	 
 */

		
	</script>
	
</body>

</html>






