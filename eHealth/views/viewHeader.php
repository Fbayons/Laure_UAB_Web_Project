<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/styles.css"/>
</head>
<body>
	<header id="header">
		<img class="logo" src="img/polar_logo.jpg">

		<ul>
		  <li><a href="Index.php">Home</a></li>
		  <li><a href="controllers/controllerStress.php">Stress Level</a></li>
		  <li class="dropdown">
		  	<a href="controllers/controllerExercises.php" class="dropbtn">Exercises</a>
		  	<div class="dropdown-content">
		  		<a href="#">Exercise1</a>
		  		<a href="#">Exercise2</a>
		  		<a href="#">Exercise3</a>
		  	</div>
		  </li>
		  <li><a href="controllers/controllerRecovery.php">Recovery</a></li>
		  <li><a href="controllers/controllerContact.php">Contact</a></li>
		  <li><a href="#about">About</a></li>
		  <li id="login"><a href="controllers/controllerLogin.php">Login</a></li>
		</ul>

		<div id="id" class="register"></div>
	</header>
</body>
</html>
