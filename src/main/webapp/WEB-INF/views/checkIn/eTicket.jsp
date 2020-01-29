<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.auto.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
<title>eTicket</title>
<meta name="robots" content="noindex,nofollow" />
<!-- <meta name="viewport" content="width=device-width; initial-scale=1.0;" /> -->


</head>
<body>
<div id="pdfDiv">
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
	<a id="target" style="display: none"></a>
		<tr>
			<td height="20"></td>
		</tr>
		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 10px 10px 0 0;">
					<tr class="hiddenMobile">
						<td height="40"></td>
					</tr>
					<tr class="visibleMobile">
						<td height="30"></td>
					</tr>

					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="left" class="col">
												<tbody>
													<tr>
														<td align="left"><a href="../"><img 
															src=""
															alt="logo" border="0" style="width: 50%"/></a></td>
													</tr>
													<tr class="hiddenMobile">
														<td height="40"></td>
													</tr>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td
															style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
															텍스트입력</td>
													</tr>
												</tbody>
											</table>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="right" class="col">
												<tbody>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td
															style="font-size: 21px; color: #ff0000; letter-spacing: -1px; font-family: 'Open Sans', sans-serif; line-height: 1; vertical-align: top; text-align: right;">
															Receipt</td>
													</tr>
													<tr>
													<tr class="hiddenMobile">
														<td height="50"></td>
													</tr>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td
															style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: right;">
															<small>ORDER</small>항목1<br /> <small>항목2</small>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<!-- /Header -->
	<!-- Order Details -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
										<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 10px 0;"
														class="article">항목</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"><small>CGV성인</small></td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"
														align="center">1</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 10px 0;"
														align="right">₩ 10,000</td>
												</tr>
											<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 10px 0;"
														class="article">항목2</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"><small>CGV청소년</small></td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"
														align="center">1</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 10px 0;"
														align="right">₩ 8,000</td>
												</tr>
													<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
										
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Order Details -->
	<!-- Total -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
								<td>
									<!-- Table Total -->
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: right;">
													<strong>Grand Total (Incl.Tax)</strong>
												</td>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: right;">
												</td>
											</tr>
										</tbody>
									</table> <!-- /Table Total -->

								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Total -->
	<!-- Information -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td>
													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="left" class="col">

														<tbody>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>예매 정보</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	항목<br>항목<br>
																	항목<br>항목
																</td>
															</tr>
														</tbody>
													</table>


													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="right" class="col">
														<tbody>
															<tr class="visibleMobile">
																<td height="20"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>결제 방식</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	항목<br>항목<br>
																	승인 번호 : 항목<br>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<!-- <tr>
												<td>
													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="left" class="col">
														<tbody>
															<tr class="hiddenMobile">
																<td height="35"></td>
															</tr>
															<tr class="visibleMobile">
																<td height="20"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>판매자 정보</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	CEO KimAmugae<br> corporate 
																	<br> 000-00-00000<br> Amumal <br>
																	111-11-11111
																</td>
															</tr>
														</tbody>
													</table>
													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="right" class="col">
														<tbody>
															<tr class="hiddenMobile">
																<td height="35"></td>
															</tr>
															<tr class="visibleMobile">
																<td height="20"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>SNS</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	FaceBook<br> https://www.facebook.com/CJCGV<br>Twitter<br> https://twitter.com/cj_cgv<br>Insta<br> https://www.instagram.com/cgv_korea</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr> -->
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="30"></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Information -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">

		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 0 0 10px 10px;">
					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td
											style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
											텍스트
											<div
												style="transform: rotate(-268deg); display: inline-block;margin-left: 5px;">
												;)</div>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr class="spacer">
						<td height="50"></td>
					</tr>

				</table>
			</td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr>
	</table>
	</td>
	</tr>
	</tbody>
	</table>
	</div>
	<button id="imgSave">이미지로 저장</button>
	<button id="pdfSave">pdf로 저장</button>
	<script type="text/javascript">
		var doc = new jsPDF();
		var pdfHandlers = {
			'#editor' : function (element, renderer) {
			return true;
			}	
		};
		$("#imgSave").on('click', function(e) {
			html2canvas(document.querySelector("#pdfDiv")).then(canvas => {
			    var el = document.getElementById("target");
				el.href = canvas.toDataURL("image/png");
				el.download = '파일명.png';
				el.click();
			});
		});
		$("#pdfSave").click(function(){
			html2canvas(document.querySelector("#pdfDiv")).then(canvas => {
			    var el = document.getElementById("target");
				var imgData = canvas.toDataURL("image/png");
				var doc = new jsPDF('p','mm',[297,210]);
				doc.addImage(imgData, 'png', 0,0,100,50);
				doc.save('테스트.pdf');
			});
		});
	</script>
</body>
</html>