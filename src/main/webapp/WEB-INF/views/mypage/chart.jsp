<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>jQuery Circle Bars Plugin Demos</title>
    <link href="//www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/assets/circle.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/demo.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/skins/yellowcircle.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/skins/purplecircle.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/skins/firecircle.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/skins/whitecircle.css">
    <link rel="stylesheet" type="text/css" href="../resources/assets/skins/simplecircle.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400" rel="stylesheet">
    <script type="text/javascript" src="../resources/assets/circle.js"></script>
</head>

<body>
   

<!-- <div class="jquery-script-center">


<div class="jquery-script-ads"> -->
<!-- <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> -->
<!-- jQuery_demo -->
<!-- <ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-2783044520727903"
     data-ad-slot="2780937993"></ins> -->
<!-- <script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script></div> -->

<!-- </div>
</div> -->


    <div class="page">
<!--         <div class="circles-container">
            <div id="circle-1" data-circle-dialWidth=10 data-circle-skin="yellow">
                <div class="loader-bg">
                    <div class="text">00:00:00</div>
                </div>
            </div>
            
            
            <div class="circle-2" data-circle-counter=1000 data-circle-size="300px">
                <div class="loader-bg">
                    <div class="text">0%</div>
                </div>
            </div>
            
            
            <div class="circlebar" data-circle-startTime=0 data-circle-dialWidth=20 data-circle-size="250px">
                <div class="loader-bg">
                    <div class="text">00:00:00</div>
                </div>
            </div>
        </div> -->
        
        
        <div class="circles-container bg-white">
<!--             <div id="circle-3" data-circle-dialWidth=10 data-circle-skin="purple">
                <div class="loader-bg">
                    <div class="text">00:00:00</div>
                </div>
            </div> -->
            
            
            <div class="circlebar" data-circle-startTime=0 data-circle-maxValue="80" data-circle-dialWidth=10 data-circle-size="400px" data-circle-type="progress">
                <div class="loader-bg">
                    <div class="text">00:00:00</div>
                </div>
            </div>
            
        </div>
        
        </div>
        
        <script>
        $(document).ready(function() {
/*             $("#circle-1").Circlebar({
                maxValue: 20,
                fontSize: "14px",
                triggerPercentage: true
            }); */
            
            var t2 = new Circlebar({
                element: ".circlebar",
                maxValue: 100,
                fontColor: "#777",
                fontSize: "30px",
                skin: "fire",
                type: "progress"
            });

/*             new Circlebar({
                element: ".circlebar",
                maxValue: 100,
                dialWidth: 40,
                size: "500px",
                fontSize: "30px",
                type: "progress"
            }); */
        });
        </script>
        
 <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>

</html>
