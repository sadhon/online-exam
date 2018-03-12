<?php 
session_start();
if (!isset($_SESSION['login_user'])) {
	header('location:index.php');
}

 ?>

<div class="container">
	<?php include("top.php"); ?>
	<div class="welcome_page">
		<h2><marquee behavior="alt" direction="">Welcome To Online Exam System</marquee></h2>
	</div>
	<div style="background: #D3DDEC;">
		<div id="sliderFrame">
        <div id="slider">
            <a href="#" target="_blank">
                <img src="images/slider_1.png" alt="#" />
            </a>
            <img src="images/slider_2.jpg" alt="#" />
            <img src="images/slider_3.jpg" alt="#" />
            <img src="images/slider_4.jpg" alt="#" />
            <img src="images/slider_5.jpg" />
        </div>
	</div>
	<div class="welcome_page">
		<a href="subject.php"><button id="login">Start Exam</button></a>
	</div>
	<?php include("footer.php") ?>
</div>