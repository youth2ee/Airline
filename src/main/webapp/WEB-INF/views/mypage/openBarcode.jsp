<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../resources/newni/jquery-barcode.js"></script> 
</head>
<body>
	<div class="mem_barcode_wrap">
		<p class="barcode_top">
			<span class="hidden membershipCardName"></span>
		</p>
		<div class="mem_barcode_info">
			<div id="bcTarget" style="margin-left: 90px;"></div>
				<p class="mem_name">${member.name}</p>
				<p class="mem_num">
					<span>${member.memberNum}</span>
				</p>
			</div>
			<p class="barcode_bottom"
				style="background: url('../images/index/index_2.png'); background-size: contain;">
			</p>
		</div>
</body>
<script type="text/javascript">
	$("#bcTarget").barcode("${memberNum}", "codabar",{barWidth:1, barHeight:30});
	console.log("${arrInfo}");
	function getUUID() { // UUID v4 generator in JavaScript (RFC4122 compliant)
		  return 'xxxxxxxxxxxx4xxxyxxxxxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
		    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 3 | 8);
		   
		return v.toString(16);
			});
		}
</script>
</html>