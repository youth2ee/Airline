<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colrolib Templates">
    <meta name="author" content="Colrolib">
    <meta name="keywords" content="Colrolib Templates">
	<c:import url="../template/boot.jsp"></c:import>
	
    <!-- Title Page-->
    <title>Au Form Wizard</title>
	
    <!-- Icons font CSS-->
    <link href="../resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- .../resources/vendor CSS-->
    <link href="../resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../resources/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="../resources/vendor/booking.css">

    <!-- Main CSS-->
    <link href="../resources/vendor/css/main.css" rel="stylesheet" media="all">
    
    
</head>

<body>

<form method="post">
<input type="hidden" name = "depLoc">
</form>
             <div class="card card-4">         
                     <div class="tab-content">
                       <div class="tab-pane active" id="tab1"> 

                            <form method="post" action="./bookingMain" id = "frm">
                            	
                            	<div class="radio-row" style="margin-bottom: 20px;">
                                    <label class="radio-container m-r-45">왕복
                                        <input type="radio" name="kind" value ="왕복" id = "round" checked="checked">
                                        <span class="radio-checkmark"></span>
                                    </label>     
                                                               
                                    <label class="radio-container m-r-45">편도
                                        <input type="radio" name="kind" value="편도"  id="eachWay">
                                        <span class="radio-checkmark"></span>
                                    </label> 
                                </div>
                            	
                            	<div id="body">
                                <div class="input-group mid" >
                                    <label class="label">출발지:</label>
                                    <input class="input--style-1 t1" type="text" name = "depLoc" placeholder="City, region or airport" required="required" id="loc">
                                  <!--   <input type="hidden" id="t2" readonly="readonly" name = "depLoc"> -->
                                </div>
                                
                                  <div class="input-group mid">
                                    <label class="label">도착지:</label>
                                    <input class="input--style-1" type="text" name="arrLoc" placeholder="City, region or airport" required="required" id = "arrloc" >         
                                </div>
                                                      
                              <div class="input-group mid">
                                            <label class="label">Date:</label>
                                            <input class="input--style-1" type="text" name="date" placeholder="yyyy/mm/dd" id="input-start">
                                        </div>
                                
                                        <div class="input-group mid">
                                            <label class="label">travellers:</label>
                                            <div class="input-group-icon" id="js-select-special">
                                                <input class="input--style-1 input--style-1-small" type="text" name="traveller" value="1 Adult, 0 Children" disabled="disabled" id="info">
                                                <i class="zmdi zmdi-chevron-down input-icon" style="height: 100%; background-color: transparent;"></i>
                                            </div>
                                            
                                            
                                            <div class="dropdown-select">
                                                <ul class="list-room">
                                                    <li class="list-room__item">
                                                     
                                                        <ul class="list-person">
                                                            <li class="list-person__item">
                                                                <span class="name">Adult</span>
                                                                <div class="quantity quantity1">
                                                                    <span class="minus">-</span>
                                                                    <input class="inputQty" type="number" min="0" value="1" name = "adult">
                                                                    <span class="plus">+</span>
                                                                </div>
                                                            </li>
                                                            <li class="list-person__item">
                                                                <span class="name">Child</span>
                                                                <div class="quantity quantity2">
                                                                    <span class="minus">-</span>
                                                                    <input class="inputQty" type="number" min="0" value="0" name = "child">
                                                                    <span class="plus">+</span>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                                <div class="list-room__footer">
                                                </div>
                                            </div>
                                        </div>
                                        
                                   
                                    <div class="col-2">
                                        <button class="btn-submit" id ="booking_btn" type="button">search</button>
                                    </div>
                    
                                </div>
                            </form>
                        </div>             
                    </div>
                </div>
                 
 
 
 <!-- 공항검색 -->
  <div id="locSearch" class = "search">
 	<table id="locTable" class = "tab">
 	<c:forEach items="${airportList}" var="airPort">
 	<tr><td class="loctd loctdd" >${airPort}</td></tr>
 	</c:forEach>
 </table>
 </div> 


<div id="depLocDiv">

</div>


 <!-- 공항검색끝 -->
 
    <!-- Jquery JS-->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<!-- .../resources/vendor JS-->
    <script src="../resources/vendor/select2/select2.min.js"></script>
    <script src="../resources/vendor/jquery-validate/jquery.validate.min.js"></script>
    <script src="../resources/vendor/bootstrap-wizard/bootstrap.min.js"></script>
    <script src="../resources/vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
    <script src="../resources/vendor/datepicker/moment.min.js"></script>
    <script src="../resources/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="../resources/vendor/js/global.js"></script>


<script type="text/javascript">



/*** dateRangePicker ***/
 
 $('#input-start').daterangepicker({

	singleDatePicker:false,
	autoApply: true,
	/*  minDate: new Date() */

	});
 
$('input:radio[name=kind]').click(function(){
	
	if($('input:radio[id=eachWay]').is(":checked")){
								
			 $('#input-start').daterangepicker({
				singleDatePicker:true,
				/* minDate: new Date() */	
					
				}); 
		}else{
			
			$('#input-start').daterangepicker({
				singleDatePicker:false,	
				autoApply: true,
				/* minDate: new Date() */
							
				}); 	
		}
});

/*** dateRangePicker 끝  ***/





/**** 공항검색 ****/

 	 var a = false;
//-------------------- 검색어 필터 -----------------------------		
	$("#loc").on("keyup", function(){
		
		var value = $(this).val().toLowerCase();
		a = false;
				
	if(value ==""){
		$("#locSearch").css("display", "none");
		
		}else{
			$("#locSearch").css("display", "block");

			$("#locTable tr").filter(function(){

				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);		

				if($(this).text().toLowerCase().indexOf(value) > -1){
					a=true;

					}
						

				});
			}	
		});

	//--------------------- 검색어 필터 -----------------------------	

 	$("#locSearch").css("display","none");
	 var loc= ""; 

	//--------------------- click -----------------------------		
  $('.loctd').on("click", function(){
		
		if($('#loc').val(loc) != ""){
				$('#loc').val("");
				a = false;
		} 

		 loc = $(this).text();
		
		$('#loc').val(loc);
		$("#locSearch").css("display","none"); 

		}); 
 
//--------------------- blur -----------------------------		
 	$('#loc').on("blur",function(){
 	 			var v = $(".tab").text().trim();
 	 			 console.log("a : "+ a); 
		
			var value = $('#loc').val();
				var check=false;
				
			 	if(a){	
				$(".loctd").each(function(){
						if($(this).html()==value){
							 $("#locSearch").css("display","none"); 
							check=true; 
							}
					}); 
				 
				}else {

				 	var t = $('#loc').val();
							
					 <c:forEach items="${airportList}" var="airPort">	
					 				 
						if('${airPort}' == t){
							
						} else {	
							    $('#loc').val("");  
								$("#locSearch").css("display","none"); 
								a=false;     
								}
		
					 </c:forEach>
				 	
				}
			
		}); 

/**** 공항검색 끝 ****/

 
 
 /***** 공항유효성검사 *****/

	  $('body').on("click",'#booking_btn',function(){
			var loc = $('#loc').val().trim();
			var arrloc = $('#arrloc').val().trim();

			  $.ajax({
				url : "airportCheck",
				data :{
						depLoc:loc,
						arrLoc:arrloc
					},
				type : "GET",
				success : function(data){
									
					if(data == true){
							$('#frm').submit();
						}else{
							alert("출발지나 도착지를 올바르게 입력하세요.");
							}
				

					},error:function(){
							alert("fail");

						}
		  });
	  
	  });
	  

 
 /***** 공항유효성검사  끝*****/
 
 
 
 
/****** 도착지  *******/

$('#arrloc').focus(function(){
	
	var depLoc = $("#loc").val(); 
	var query = {depLoc : $("#loc").val()};
			
			$.ajax({
					url : "airportDepList",
					data : query,
					type : "POST",
					success : function(data){
					
						$("#depLocDiv").html(data);
												
						},error:function(){

							console.log("fail");
							}	
				});	 			
});
 
</script>


</body>

</html>

