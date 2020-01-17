<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="loading_oh" style="position:absolute; top:10px; left:10px;">
<table width="1500" height="800" align="center" cellpadding="0" cellspacing="0">
<tr>
    <td align="center"><img src="이미지 경로" border="0"><br><b><font color="black">잠시만 기다려 주세요</font></b></td>
</tr>
</table>
</div>


<script>

function onloadevent(){
    document.getElementById("loading_oh").style.visibility="hidden"
}

window.onload=function()
{
    onloadevent();
}

</script>

</body>
</html>