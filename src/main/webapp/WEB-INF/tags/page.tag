<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="/resources/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="/resources/vendors/selectFX/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="/resources/vendors/jqvmap/dist/jqvmap.min.css">


    <link rel="stylesheet" href="/resources/assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

</head>
   <body>
     <jsp:doBody />
      
     <script src="/resources/vendors/jquery/dist/jquery.min.js"></script>
  	 <script src="/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script> 
  	 <script src="/resources/assets/js/main.js"></script>
  	 
  	<script src="/resources/vendors/chart.js/dist/Chart.bundle.min.js"></script>
    <script src="/resources/assets/js/dashboard.js"></script>
    <script src="/resources/assets/js/widgets.js"></script>
    <script src="/resources/vendors/jqvmap/dist/jquery.vmap.min.js"></script>
    <script src="/resources/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <script src="/resources/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
 
  	<script>
	$('.data_nav_link').on('click', function() {
		var href = $(this).attr("href");
		if (href != "#") {
			setTimeout(function() {
				$.get(href, function(data, status) {
					$(".workplace").html(data);
				});
			}, 500);
		}
		return false;
	});

	</script>
   </body>
</html>