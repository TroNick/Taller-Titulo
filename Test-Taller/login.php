<?php session_start(); ?>
<html>
	<head>
		<title>Formulario de Registro</title>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
	<?php include "php/navbar.php"; ?>
<div class="container">
<div class="row">
<div class="col-md-6">
		<h2>Login</h2>

		<form role="form" name="login" action="php/login.php" method="post">
		  <div class="form-group">
		    <label for="username">Nombre de usuario o email</label>
		    <input type="text" class="form-control" id="username" name="username" placeholder="Nombre de usuario">
		  </div>
		  <div class="form-group">
		    <label for="password">Contrase&ntilde;a</label>
		    <input type="password" class="form-control" id="password" name="password" placeholder="Contrase&ntilde;a">
		  </div>

		  <button type="submit" class="btn btn-default">Acceder</button>
			<br>
			<a href="#">Necesito Ayuda</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="registro.php">Crear una Cuenta</a>


			&nbsp;
		</form>
</div>
</div>
</div>
		<script src="js/valida_login.js"></script>
<footer class="tm-footer">
<p class="text-xs-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam incidunt blanditiis aspernatur qui amet veritatis esse non! Perspiciatis quas, blanditiis, nihil magnam accusantium error cupiditate quibusdam dolores sit, adipisci iste!</p>
</footer>
	</body>
</html>
