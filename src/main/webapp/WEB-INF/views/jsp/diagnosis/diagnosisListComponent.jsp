<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-border mt-3" style="padding: 2rem">

	<table class="table" cellpadding="6" cellspacing="0">
		<thead>
			<tr>
				<th>Fecha de Diagnóstico</th>
                <th>Cita</th>
                <th>Conclusión</th>
                <th>Estado</th>
                <th>Acciones</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="diagnosis" items="${diagnosisData}">
				<tr>
                    <td>${diagnosis.fechaDiagnostico}</td>
                    <td>${diagnosis.cita.id}</td>
                    <td>${diagnosis.conclusion}</td>
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