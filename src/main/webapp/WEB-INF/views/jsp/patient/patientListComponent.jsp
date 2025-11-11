<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-border mt-3" style="padding: 2rem">
	<div class="row mb-3">
		<div class="col-md-9">
			 <input type="text" class="form-control" id="search" placeholder="Búscar Pacientes...">
        </div>
		<div class="col-md-3" style="text-align: end;">
			<button type="button" class="btn btn-save" style="display: flex; align-items: center;"
			onclick="location.href='${pageContext.request.contextPath}/patient/addEdit'">
				<span style="padding-right: 10px">
                    <i class="bi bi-person-add"></i>
                </span>
				Agregar Nuevo Paciente
			</button>
        </div>
	</div>

	<table class="table" cellpadding="6" cellspacing="0">
		<thead>
			<tr>
				<th>Tipo de identificación</th>
                <th>Identificación</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Fecha de nacimiento</th>
                <th>Género</th>
                <th>Dirección</th>
                <th>Telefono</th>
                <th>Email</th>
                <th>Acciones</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="patient" items="${patientData}">
				<tr>
                    <td>${patient.tipoDocumento}</td>
                    <td>${patient.numeroDocumento}</td>
                    <td>${patient.nombres}</td>
                    <td>${patient.apellidos}</td>
                    <td>${patient.fechaNacimiento}</td>
                    <td>${patient.genero}</td>
                    <td>${patient.direccion}</td>
                    <td>${patient.telefono}</td>
                    <td>${patient.email}</td>
                    <td></td>

                </tr>
			</c:forEach>
		</tbody>
	</table>


</div>