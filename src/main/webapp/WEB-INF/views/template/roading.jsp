<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 바디 바로 아래에 임포트 -->
<div id="loading_oh" style="position:absolute; top:10px; left:10px; width: 100%; height: 100%;">
<table width="100%" height="100%" align="center" cellpadding="0" cellspacing="0">
<tr>
    <td align="center" width="100%" height="100%"><img src="../images/loading2.gif" border="0"><br><b><font color="black">잠시만 기다려 주세요</font></b></td>
</tr>
</table>
</div>
<script type="text/javascript">
window.onload = function(){
	$("#loading_oh").css("display", "none");
	
}



</script>