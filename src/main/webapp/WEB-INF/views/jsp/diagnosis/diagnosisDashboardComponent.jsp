<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-border mt-3" style="padding: 2rem">

	<table class="table" cellpadding="6" cellspacing="0">
		<thead>
			<tr>
				<th>Paciente</th>
                <th>Tipo de Exámen</th>
                <th>Fecha de Cita</th>
                <th>Estado</th>
                <th>Acción</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="diagnosis" items="${diagnosisData}">
				<tr>
                    <td>${diagnosis.cita.paciente.nombres} ${diagnosis.cita.paciente.apellidos}</td>
                    <td>${diagnosis.cita.tipoExamen}</td>
                    <td>${diagnosis.cita.fechaProgramacion}</td>
                    <c:choose>
                      <c:when test="${diagnosis.estado == 'Aprobado para entrega'}">
                        <td><div class="alert alert-success" style="padding: 5px; font-weight: bold;">${diagnosis.estado}</div></td>
                      </c:when>
                      <c:otherwise>
                        <td><div class="alert alert-danger" style="padding: 5px; font-weight: bold;">${diagnosis.estado}</div></td>
                      </c:otherwise>
                    </c:choose>
                    <td></td>
                </tr>
			</c:forEach>
		</tbody>
	</table>
</div>