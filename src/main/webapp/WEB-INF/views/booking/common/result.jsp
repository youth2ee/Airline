<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 
<div id="deplocSearch"class="search">
 	<table id="deplocTable">
 	<c:forEach items="${arrLoc}" var="arrAirport">
 	<tr><td class="deploctd loctdd" id="oo">${arrAirport.arrAirportNm}</td></tr>
 	</c:forEach> 
 </table>
 </div>

<script>

/**** 도착지공항검색  ****/

	var a = false;
//-------------------- 검색어 필터 -----------------------------		
$("#arrloc").on("keyup", function(){
	
	var value = $(this).val().toLowerCase();
	a = false;
			
if(value ==""){
	$("#deplocSearch").css("display", "none");
	
	}else{
		$("#deplocSearch").css("display", "block");

		$("#deplocTable tr").filter(function(){

			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);		

			if($(this).text().toLowerCase().indexOf(value) > -1){
				a=true;

				}
					

			});
		}	
	});

//--------------------- 검색어 필터 -----------------------------	

	$("#deplocSearch").css("display","none");
 var loc= ""; 

//--------------------- click -----------------------------		
$('.deploctd').on("click", function(){
	
	 if($('#arrloc').val(loc) != ""){
			$('#arrloc').val("");
			a = false;
	} 

	 loc = $(this).text();
	
	$('#arrloc').val(loc);
	$("#deplocSearch").css("display","none");  

	}); 

//--------------------- blur -----------------------------		
	$('#arrloc').on("blur",function(){
	 			var v = $(".tab").text().trim();
	 			 console.log("a : "+ a); 
	
		var value = $('#arrloc').val();
			var check=false;
			
		 	if(a){	
			$(".deploctd").each(function(){
					if($(this).html()==value){
						 $("#deplocSearch").css("display","none"); 
						check=true; 
						}
				}); 
			 
			}else {

			 	var t = $('#arrloc').val();
						
				 <c:forEach items="${airportList}" var="airPort">	
				 				 
					if('${airPort}' == t){
						
					} else {	
						    $('#arrloc').val("");  
							$("#deplocSearch").css("display","none"); 
							a=false;     
							}
	
				 </c:forEach>
			 	
			}
		
	}); 





/**** 도착지공항검색 끝  ****/




</script>
 