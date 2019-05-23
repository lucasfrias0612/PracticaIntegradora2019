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

<title>Inscripciones a materias UNPAZ</title>
<meta charset="UTF-8">
<meta name="description" content="Listado de alumnos de UNPAZ">
<meta name="keywords" content="Alumnos,UNPAZ,Listado">
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
		<h1>Inscripciones a materias</h1>

		<form action="./Inscripciones" method="post">
			<div class="form-group">
				<label for="">Seleccione Materia</label><select
					name="materiaSeleccionada" class="browser-default custom-select">
					<option value='0'>Seleccione...</option>
					<c:forEach var="materia" items="${MATERIAS}">
						<option value='<c:out value="${materia.getId()}" ></c:out>'
							<c:if test="${materiaSeleccionada==materia.getId()}">
								<c:out value="selected"></c:out>
							</c:if>><c:out
								value="${materia.getDescription()}"></c:out></option>
					</c:forEach>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">Filtrar</button>
		</form>
		
		<table class="table table-bordered table-striped table-dark">
			<tr>
				<th>Materia</th>
				<th>Lejajo del Alumno</th>
				<th>DNI del Alumno</th>
				<th>Nombre del Alumno</th>
				<th>Apellido del Alumno</th>
			</tr>
			<c:forEach var="inscripcion" items="${INSCRIPCIONES}">
				<tr>
					<td><c:out value="${inscripcion.getSubject()}" /></td>
					<td><c:out value="${inscripcion.getStudentFile()}" /></td>
					<td><c:out value="${inscripcion.getStudentDNI()}" /></td>
					<td><c:out value="${inscripcion.getStudentFirstname()}" /></td>
					<td><c:out value="${inscripcion.getStudentLastname()}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>

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