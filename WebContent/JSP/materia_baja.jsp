<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!--Inicio CDN Boostrap-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!--Fin CDN Boostrap-->

<title>Baja de Materia UNPAZ</title>
<meta charset="UTF-8">
<meta name="description" content="Alta de alumno de UNPAZ">
<meta name="keywords" content="Alumnos,UNPAZ,Alta">
<meta name="author" content="Practica Integradora Team">
</head>
<body>
	<div class="page-header"
		style="background-color: #107aa3; color: #107aa3">
		<h1>header</h1>
	</div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="btn-group" role="group" aria-label="Basic example">
			<a class="btn btn-secondary" href="./" role="button">Home</a> <a
				class="btn btn-secondary" href="./Alumnos" role="button">Alumnos</a>
			<a class="btn btn-secondary" href="./Materias" role="button">Materias</a>
			<a class="btn btn-secondary" href="./Inscripciones" role="button">Inscripciones</a>

		</div>
	</nav>
	<div class="container">
		<h1>Baja de materia</h1>

		<form action="./MateriaBaja" method="post">
			<div class="form-group">
				<label for="">C�digo</label> <input class="form-control"
					type="number" min="1" max="9999999" required name="code" readonly
					value='<c:out value="${MATERIA.getId()}"></c:out>'>
			</div>
			<div class="form-group">
				<label for="">Descripci�n</label> <input class="form-control"
					type="text" required name="description" readonly
					value='<c:out value="${MATERIA.getDescription()}"></c:out>'>
			</div>
			<button type="submit" class="btn btn-primary">Eliminar</button>
		</form>
	</div>

	<br>
	<div class="page-footer" style="background-color: #107aa3">
		<div class="row">
			<div class="col-sm-12">
				<p style="padding-left: 2%; padding-top: 1%; color: white;">
					<strong>Maquetaci�n Web: </strong>Lucas Fr�as
			</div>
		</div>
	</div>
</body>
</html>