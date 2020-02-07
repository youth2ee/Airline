<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="../resources/css/board/boardSelect.css">
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

<!---- container ---->
<div class = "container">
	<h3>공지사항</h3>
	<!-- <div class="btn_area">
		<a href="#" id="delete_btn">삭제하기</a>
		<a href= "#" id="update_btn">수정하기</a>
	</div> -->
	<div class = "list_view">
		<div class="list_view_title">
			<div class="left">
				<p class="title">${vo.title}</p>
			</div>
			<div class="right">
				<div class= "hit"><span>조회수 ${vo.hit}</span></div>
				<span class="date">${vo.regDate}</span>
			</div>
		</div>
			<div class="list_view_cont">
				${vo.contents}
			</div>
			<div class="list_view_ctrl">
				<div>
					<span class="prev">다음글</span>
					<a>다음글이 없습니다.</a>
				</div>
				<div>
					<span class="next">이전글</span>
					<a>중국 일부 노선 비운항 및 감편 안내</a>
				</div>
			</div>
			<div class="btn_area">
					<a href="./noticeDelete?num=${vo.num}" id="delete_btn">삭제하기</a>
					<a href="./noticeUpdate?num=${vo.num}" id="update_btn">수정하기</a>
			</div>
			<div class="btn_wrap">
					<c:if test="${empty param.menu}">
					<a href="./noticeList?curPage=${param.curPage}&search=${param.search}&kind=${param.kind}" id="btnList" type="button">목록보기</a>
					</c:if>
					
					<c:if test="${not empty param.menu}">
					<a href="./noticeList1?menu=${param.menu}&curPage=${param.curPage}&search=${param.search}&kind=${param.kind}" id="btnList" type="button">목록보기</a>
					</c:if>
					<%-- <c:if test="${param.menu == 'EveryAir클럽'}">
					<a href="./noticeList2?menu=${param.menu}&curPage=${param.curPage}&search=${param.search}&kind=${param.kind}" id="btnList" type="button">목록보기</a>
					</c:if>
					<c:if test="${param.menu == '유류할증료'}">
					<a href="./noticeList3?menu=EveryAir소식&curPage=${param.curPage}&search=${param.search}&kind=${param.kind}" id="btnList" type="button">목록보기</a>
					</c:if> --%>
				<%-- 	<c:if test="${param.menu == '제휴사소식'}">
					<a href="./noticeList4?menu=EveryAir소식&curPage=${param.curPage}&search=${param.search}&kind=${param.kind}" id="btnList" type="button">목록보기</a>
					</c:if>
					<c:if test="${param.menu == '기타'}">
					<a href="./noticeList5?menu=EveryAir소식&curPage=${param.curPage}&search=${param.search}&kind=${param.kind}" id="btnList" type="button">목록보기</a>
					</c:if> --%>
			</div>
	</div>


</div>

<script type="text/javascript">

function getParam(sname) {
    var params = location.search.substr(location.search.indexOf("?") + 1);
    var sval = "";
	    params = params.split("&");

    	for(var i=0; i<params.length; i++){
	        temp = params[i].split("=");
        if([temp[0]] == sname){ 
            sval = temp[1]; 
            }
	    }
	    return sval;
	}

 /* 	$('#btnList').click(function(){
		var curpage= getParam("")
		
		if(getParam("dispCt") == 'all'){
			location.href="./boardList";
			}else{
				alert("no");
				}

		}); */
 

</script>




</body>
</html>