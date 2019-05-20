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

<title>Modificaci�n de Alumno de UNPAZ</title>
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

	<div class="page-header" style="background-color: #f2f2f2">
		<a href="/PracticaIntegradoraUnpaz2019/"><img class="mr-3"
			src="./res/unpaz.png" alt="Logotipo Unpaz" style="width: 15%"></a>
	</div>

	<div class="container">
		<h1>Modificaci�n de alumno</h1>

		<form action="./AlumnoEditar" method="post">
			<div class="form-group">
				<label for="">Legajo</label> <input class="form-control"
					type="number" min="1" max="9999" readonly name="legajo"
					value='<c:out value="${ALUMNO.getFile()}"></c:out>'>
			</div>
			<div class="form-group">
				<label for="">DNI</label> <input class="form-control" type="number"
					min="1" max="99999999" required name="dni"
					value='<c:out value="${ALUMNO.getDni()}" ></c:out>'>
			</div>
			<div class="form-group">
				<label for="">Nombre</label> <input class="form-control" type="text"
					name="nombre" required
					value='<c:out value="${ALUMNO.getFirstname()}" ></c:out>'>
			</div>
			<div class="form-group">
				<label for="">Apellido</label> <input class="form-control"
					type="text" name="apellido" required
					value='<c:out value="${ALUMNO.getLastname()}" ></c:out>'>
			</div>
			<div class="form-group">
				<label for="">Email</label> <input class="form-control" type="email"
					name="email" required
					value='<c:out value="${ALUMNO.getEmail()}" ></c:out>'>
			</div>
			<div class="form-group">
				<label for="">G�nero</label><select name="genero">
					<c:forEach var="genero" items="${GENEROS}">
						<option value='<c:out value="${genero}" ></c:out>'><c:out
								value="${genero}"></c:out></option>
					</c:forEach>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">Actualizar</button>
		</form>
	</div>


	<div class="page-footer" style="background-color: #107aa3">
		<div class="row">
			<div class="col-sm-12">
				<p style="padding-left: 2%; padding-top: 1%">
					<strong>Maquetaci�n Web: </strong>Lucas Fr�as
			</div>
		</div>
	</div>
</body>
</html>