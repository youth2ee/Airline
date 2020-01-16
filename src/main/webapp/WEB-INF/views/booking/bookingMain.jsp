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
             <div class="card card-4">         
                     <div class="tab-content">
                       <div class="tab-pane active" id="tab1"> 

                            <form method="post" action="./bookingMain">
                            	
                            	<div class="radio-row" style="margin-bottom: 20px;">
                                    <label class="radio-container m-r-45">왕복
                                        <input type="radio" name="kind" value ="2" id = "round" checked="checked">
                                        <span class="radio-checkmark"></span>
                                    </label>     
                                                               
                                    <label class="radio-container m-r-45">편도
                                        <input type="radio" name="kind" value="1"  id="eachWay">
                                        <span class="radio-checkmark"></span>
                                    </label> 
                                </div>
                            	
                            	<div id="body">
                                <div class="input-group mid" >
                                    <label class="label">출발지:</label>
                                    <input class="input--style-1 t1" type="text" name = "depLoc" placeholder="City, region or airport" required="required" id = "loc">
                                  <!--   <input type="hidden" id="t2" readonly="readonly" name = "depLoc"> -->
                                </div>
                                
                                  <div class="input-group mid">
                                    <label class="label">도착지:</label>
                                    <input class="input--style-1" type="text" name="arrLoc" placeholder="City, region or airport" required="required" >         
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
                                                                <span class="name">Adults</span>
                                                                <div class="quantity quantity1">
                                                                    <span class="minus">-</span>
                                                                    <input class="inputQty" type="number" min="0" value="1" name = "adults">
                                                                    <span class="plus">+</span>
                                                                </div>
                                                            </li>
                                                            <li class="list-person__item">
                                                                <span class="name">Children</span>
                                                                <div class="quantity quantity2">
                                                                    <span class="minus">-</span>
                                                                    <input class="inputQty" type="number" min="0" value="0" name = "children">
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
                                        <button class="btn-submit" id ="booking_btn" type="submit">search</button>
                                    </div>
                    
                                </div>
                            </form>
                        </div>             
                    </div>
                 
                </div>
 
 
 <!-- 영화검색 -->
  <div id="locSearch" style="width: 500px; height: 500px; background-color: aqua;">
 	<table id="locTable" class = "tab">
 	<c:forEach items="${airportList}" var="airPort">
 	<tr><td class="loctd">${airPort}</td></tr>
 </c:forEach>
 </table>
 </div> 
 <!-- 영화검색끝 -->
 
 <div style="width: 200px; height: 200px; background-color: RED; float: left;" ID="CHECK"> 
 HH
 </div>


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
	autoApply: true	

	});
 
$('input:radio[name=kind]').click(function(){
	
	if($('input:radio[id=eachWay]').is(":checked")){
								
			 $('#input-start').daterangepicker({
				singleDatePicker:true	
					
				}); 
		}else{
			
			$('#input-start').daterangepicker({
				singleDatePicker:false,	
				autoApply: true
							
				}); 	
		}
});


/*** dateRangePicker 끝  ***/



/**** 공항검색 ****/
  $(document).ready(function(){
	
	$("#loc").on("keyup", function(){
	var value = $(this).val().toLowerCase();

	if(value ==""){
		$(".tab").css("display", "none");

		}else{
			$(".tab").css("display", "inline");
			
			$("#locTable tr").filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				});
			}	
		});
}); 



 	$(".tab").css("display","none");
	 var loc= ""; 

	

/* 	$('.loctd').on("click", function() {

 		if ($('#loc').val(loc) != "") {
			$('#loc').val("");
		} 

		loc = $(this).text();

		$('#loc').val(loc);
		$(".tab").css("display", "none");

		if($('#loc').val() != ""){

			$(".tab").css("display","none");
			
		}
	});
 */



	$(document).mouseover(function(e){

	    if($(e.target).is('.loctd')){
	    	$('.loctd').on("click", function() {
	    		$('#loc').val($(this).text());
	    	})
		 }else{
				$('#CHECK').click(function(){
					var t = $('#loc').val();
					$(".tab").css("display","none");

					<c:set var="loop_flag" value="false" />
				 <c:forEach items="${airportList}" var="airPort">
				 <c:if test="${not loop_flag }">
					if('${airPort}' == t) {
						alert("찾음");
						 <c:set var="loop_flag" value="true" />
					} else {
						alert("gg");
					}
					</c:if>
				 </c:forEach>

					
					});

				
			 }

	});

	

	/**** 공항검색 끝 ****/
</script>


</body>

</html>
<!-- end document-->
