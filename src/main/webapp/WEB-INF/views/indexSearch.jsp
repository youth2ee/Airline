<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="./template/boot.jsp"></c:import>

<link rel="stylesheet" href="../resources/css/index/indexSearch.css">
<link rel="stylesheet" href="../resources/css/reset.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<header></header>
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


<!----- new ------>

<div id="container">
	<h3>공지사항</h3>
	
	<form id="frm" action="./${board}List">
	<div class="total_search_input">
		<div class="search_inner">
			<select class="white common" name="kind">
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
		</div>
		<div id="tab-2" class="tab-content"></div>
		<div id="tab-3" class="tab-content"></div>
		<div id="tab-4" class="tab-content"></div>
		<div id="tab-5" class="tab-content"></div>
		<div id="tab-6" class="tab-content"></div>
		
	</div>
	
	<div class="paging">
			<a href="#" class="btn_first btn_common">
			</a>
		    <c:if test = "${pager.curBlock>1}">
				<a href="./noticeList?curPage=${pager.startNum-1}" class="btn_prev btn_common"></a>	
			</c:if>
			
			<c:forEach begin="${pager.startNum}" end = "${pager.lastNum}" var="i">
				<a href="./noticeList?curPage=${i}" class="pagingNo on">${i}</a>
			</c:forEach>
			
			<c:if test = "${pager.curBlock<pager.totalBlock}">
			<a href="./noticeList?curPage=${pager.lastNum+1}" class="btn_next btn_common"></a>			
			</c:if>
			<a href="#" class="btn_last btn_common"></a>
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
			var a = $(this).val();                 
			});
	
	</script>

</body>
</html>	
			
			
			
