<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:choose>
	<c:when test="${fn:length(todayAppointments) > 0}">
		<c:forEach var="appointment" items="${todayAppointments}">
        	<div class="panel panel-default mb-3">
              <div class="panel-heading card-header">
                <h3 class="panel-title">${appointment.paciente.nombres} ${appointment.paciente.apellidos}</h3>
                <p>${appointment.tipoExamen}</p>
              </div>
              <div class="panel-body card-body">
        		  <span><i class="bi bi-clock" style="font-size: 1rem;"></i></span>
                <p>${appointment.horaProgramacion}</p>
                <c:choose>
        			<c:when test="${appointment.estado == 'Pendiente por Diagnóstico'}">
                        <div class="alert alert-warning card-body-content" >${appointment.estado}</div>
                    </c:when>
        			<c:otherwise>
                        <div class="alert alert-success card-body-content">${appointment.estado}</div>
                    </c:otherwise>
        		</c:choose>

              </div>
            </div>
        </c:forEach>
	</c:when>
	<c:otherwise>
		<span class="card-not-result mb-3">
			<i class="bi bi-calendar-x-fill"></i>
			<p>No hay Citas programadas para Hoy</p>
		</span>
	</c:otherwise>
</c:choose>


<button type="button" class="btn btn-save" id="viewAppointments">Ver todas las citas</button>