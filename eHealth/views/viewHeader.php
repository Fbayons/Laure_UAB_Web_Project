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
	  <li><a href="controllers/controllerRecovery.php">Summary</a></li>
	  <li><a href="controllers/controllerContact.php">Contact</a></li>
	  <li><a href="#about">About</a></li>
	  <li id="syncronize" onclick="document.getElementById('sync').style.display='block'" style="witdh:auto;"><a>Syncronize</a></li>
	  <li id="login" onclick="document.getElementById('id').style.display='block'" style="witdh:auto;"><a>Login</a></li>
	</ul>

	<div id="id" class="modal">
		<form class="modal-content animate" action="/action_page.php" autocomplete="off">
			<div class="loginHeader">
				<img src="img/PolarLogo.png" width="30%" height="30%" display="center">
				<h2>WELCOME</h2>
				<h3>Sign in and start using the app</h3>
			</div>

			<div class="container2">
					<label for="email">Your e-mail</label>
					<input type="email" placeholder="Enter email" name="email" required><br><br>
					<label for="psw">Your password</label>
					<input type="password" placeholder="Enter password" name="psw" required><br><br>
				</p>
				<p>
					<button type="submit">Login</button>
				</p>
				
			</div>
			<div class="container2">
				<button type="button" onclick="document.getElementById('id').style.display='none'" class="cancelbtn">Cancel</button>
			</div>			
		</form>
	</div>
	<div id="sync" class="modal">
		<form class="modal-content animate" action="/action_page.php" autocomplete="off">
			<div class="loginHeader">
				<img src="img/PolarLogo.png" width="30%" height="30%">
				<h2>WELCOME</h2>
				<h3>Please set up your settings</h3>
			</div>

			<div class="container2">
				Gender<br><br>
				<input type="radio" name="gender" value="male">MALE
				<input type="radio" name="gender" value="female">FEMALE<br><br>
				Age<br><br>
				<input type="text" name="Age" required> Years<br><br>			
				How much do you exercise in a week?<br><br>
				<input type="radio" name="sleep" value="x1">xx h per week
				<input type="radio" name="sleep" value="x2">xx h per week
				<input type="radio" name="sleep" value="x3">xx h per week<br><br>
				<input type="radio" name="sleep" value="x4">xx h per week
				<input type="radio" name="sleep" value="x5">xx h per week<br><br>
				Your sleeping goal per night<br><br>
				<input type="text" name="hours" required> Hours<br><br>
				Choose censor and start syncronizing<br><br>
				<select name="censor" required>
					<option></option>
				</select>
				
				
			</div>
			<div class="container2">
				<button type="button" onclick="document.getElementById('sync').style.display='none'" class="cancelbtn">SYNCRONIZE</button>
				<button type="button" onclick="document.getElementById('sync').style.display='none'" class="cancelbtn">Cancel</button>
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
	<script>
		var modal = document.getElementById('sync');
		window.onclick = function(event){
			if (event.target == modal){
				modal.style.display = "none";
			}
		}
	</script>

</body>
</html>
