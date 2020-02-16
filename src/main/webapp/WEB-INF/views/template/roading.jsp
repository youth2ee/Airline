<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 바디 바로 아래에 임포트 -->
<div id="loading_oh" style="position:absolute; top:0px; left:0px; width: 100%; height: 100%; z-index: 1000; background-color:rgba(243,243,243,0.5);">
<table width="100%" height="100%" align="center" cellpadding="0" cellspacing="0">
<tr>
    <td align="center" width="100%" height="100%"><img src="${pageContext.request.contextPath}/images/loading2.gif" border="0"><br><b><font color="black">잠시만 기다려 주세요</font></b></td>
</tr>
</table>
</div>
<script type="text/javascript">
window.onload = function(){
	$("#loading_oh").css("display", "none");
}
//페이지 로딩완료 이후 로딩이미지 다시 필요하면 함수 호출
//로딩이미지 띄우기
function LS(){
	$("#loading_oh").css("display", "block");
}
//로딩이미지 없애기
function LE(){
	$("#loading_oh").css("display", "none");
}

</script>