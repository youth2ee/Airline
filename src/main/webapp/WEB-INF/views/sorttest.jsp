<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

   <title>jQuery UI Sortable - Example</title>

   <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">

   <script src="http://code.jquery.com/jquery-1.10.2.js"></script>

   <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

   <style>

      #sortable-8{ list-style-type: none; margin: 0; 

         padding: 0; width: 25%; float:left;}

      #sortable-8 li{ margin: 0 3px 3px 3px; padding: 0.4em; 

         padding-left: 1.5em; font-size: 17px; height: 16px; }

      .default {

         background: #cedc98;

         border: 1px solid #DDDDDD;

         color: #333333;

      }
	#sortable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
  #sortable li { margin: 0 5px 5px 5px; padding: 5px; font-size: 1.2em; height: 1.5em; }
  html>body #sortable li { height: 1.5em; line-height: 1.2em; }
  .ui-state-highlight { height: 1.5em; line-height: 1.2em; }
	
   </style>

   <script>

      $(function() {

         $('#sortable-8').sortable({

            update: function(event, ui) {    

               var productOrder = $(this).sortable('toArray').toString();

               $("#sortable-9").text (productOrder);

            }

         });

      });

   </script>

</head>

<body>

   <ul id="sortable-8">

      <li id="5" class="default">Product 1</li>

      <li id="2" class="default">Product 2</li>

      <li id="3" class="default">Product 3</li>

      <li id="4" class="default">Product 4</li>

   </ul>

   <br>

   <h3><span id="sortable-9"></span></h3>
<button class="btn">sort</button>

<ul id="sortable">
  <li id="ts" class="ui-state-default">Item 1</li>
  <li class="ui-state-default">Item 2</li>
  <li class="ui-state-default">Item 3</li>
  <li class="ui-state-default">Item 4</li>
  <li class="ui-state-default">Item 5</li>
  <li class="ui-state-default">Item 6</li>
  <li class="ui-state-default">Item 7</li>
</ul>
<script type="text/javascript">

$(".btn").click(function(){
	$("#ts").offset({top:100});
});

$( function() {
    $( "#sortable" ).sortable({
      placeholder: "ui-state-highlight"
    });
    $( "#sortable" ).disableSelection();
  } );
</script>
</body>

</html>