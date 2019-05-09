<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/styles.css"/>
</head>
<body>
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
	  <li id="login" onclick="document.getElementById('id').style.display='block'" style="witdh:auto;">Login</li>
	</ul>

	<div id="id" class="modal">
		<form class="modal-content animate" action="/action_page.php">
			<div class="loginHeader">
				<span onclick="document.getElementById('id').style.display='none'" class="close" title="CloseModal">&times;</span>
				<h2>WELCOME</h2>
				<h3>Sign in and start using the app</h3>
			</div>

			<div class="container2">
				<label for="email">Your e-mail</label>
				<input type="text" placeholder="Enter email" name="email" required>

				<label for="psw">Your password</label>
				<input type="password" placeholder="Enter password" name="psw" required>
			</div>
		</form>
	</div>
	<script>
		var modal = document.getElementById('id');
		window.onclick = function(event){
			if (event.target == modal){
				modal.style.display = "none";
			}
		}
	</script>

</body>
</html>
