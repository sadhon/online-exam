<!--
	Name: Harun
	Project: Online exam system
	Date: 28/02/18
-->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="img/logoo.png">
	<title>Online Exam System</title>
	<link rel="stylesheet" href="css/style.css">
    <!--carousel style-->
    <script src="js/owl.carousel.min.js"></script>
	<link href="css/owl.carousel.min.css" rel="stylesheet"/>
	<link href="css/owl.theme.default.min.css" rel="stylesheet"/>
	<!--js-image-slider-->
    <link href="js/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="js/js-image-slider.js" type="text/javascript"></script>
</head>
<body>
	<div class="header">
		<!--Logo div in navbar start-->
		<div class="logoo">
			<a href="index.php" title="Online Quize">
				<img src="img/logoo.png" alt="" style="height:35px;width:100px;float: left;">
			</a>
		</div>
		<!--Logo div in navbar end-->

		<!--ul in navbar start-->
		<ul class="nav nav-pills menu pull-right" id="responsive_nav">
			<li><a href="welcome_page.php">Home</a></li>
			<li><a href="#">Contest</a></li>
			<li><a href="#">Problem Archive</a></li>
			<li><a href="#">Ranking</a></li>
			<li><a href="#">Skill Test</a></li>
			<li><a href="#" target="_blank">Forum</a></li>
			<li><a href="#">Blog</a></li>
			<li><a style="padding:8px 0 0;color:#666;">|</a></li>
			<li><a href="index.php">Sign In</a></li>
			<li><a href="index.php">Sign Up</a></li>
			<li><a href="signout.php" >Sign Out</a></li>
		</ul>
		<!--ul in navbar end-->
	</div>
	<script>
            $(document).ready(function() {
              var owl = $('.owl-carousel');
              owl.owlCarousel({
                margin: 0,
                nav: false,
                loop: true,
				autoplay:true,
				autoplayTimeout:2000,
                responsive: {
                  0: {
                    items: 1
                  },
                  600: {
                    items: 3
                  },
                  1000: {
                    items: 5
                  }
                }
              })
            })
          </script>
</body>
</html>