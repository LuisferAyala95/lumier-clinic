<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-border mt-3" style="padding: 2rem">

	<table class="table" cellpadding="6" cellspacing="0">
		<thead>
			<tr>
				<th>Paciente</th>
                <th>Tipo de Exámen</th>
                <th>Fecha de Cita</th>
                <th>Hora Programada</th>
                <th>Estado</th>
                <th>Acción</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="appointment" items="${appointments}">
				<tr>
                    <td>${appointment.paciente.nombres} ${appointment.paciente.apellidos}</td>
                    <td>${appointment.tipoExamen}</td>
                    <td>${appointment.fechaProgramacion}</td>
                    <td>${appointment.horaProgramacion}</td>
                    <c:choose>
                      <c:when test="${appointment.estado == 'Pendiente por Diagnóstico'}">
                        <td><div class="alert alert-warning" style="padding: 5px; font-weight: bold; font-size">${appointment.estado}</div></td>
                        <td>
                            <button type="button" class="btn btn-save" id="btoDiagnosis" data-appointment-id="${appointment.id}">Diagnosticar</button>
                        </td>
                      </c:when>
                      <c:otherwise>
                        <td><div class="alert alert-success" style="padding: 5px; font-weight: bold; font-size">${appointment.estado}</div></td>
                        <td></td>
                      </c:otherwise>
                    </c:choose>
                </tr>
			</c:forEach>
		</tbody>
	</table>
</div>