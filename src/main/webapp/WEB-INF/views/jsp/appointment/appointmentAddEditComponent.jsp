<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container-border mt-3" style="padding: 2rem">
	<h2>Detalles de la Cita</h2>
	<p>Ingrese la información general de la Cita</p>
	<br>
	<form id="appointmentAddEdit">

		<div class="form-group mb-3">
            <label for="patient" style="font-weight: 500">Paciente</label>

            <c:choose >
                <c:when test="${not empty param.patientId}">
					<select class="form-control" id="patient" required>
                         <c:forEach var="patient" items="${patients}">
							<c:if test="${patient.id eq param.patientId}">
								<option value="${patient.id}" selected>${patient.nombres} ${patient.apellidos}</option>
							</c:if>
                        </c:forEach>
                    </select>
				</c:when>
				<c:otherwise>
		            <select class="form-control" id="patient" required>
                         <option value="" disabled selected>Seleccione un Paciente</option>
                         <c:forEach var="patient" items="${patients}">
                            <option value="${patient.id}">${patient.nombres} ${patient.apellidos}</option>
                        </c:forEach>
                    </select>
				</c:otherwise>
            </c:choose>
        </div>

		<div class="row mb-3">
			<div class="col-md-6">
				<div class="form-group">
                   <label for="date" style="font-weight: 500">Fecha de programación</label>
                   <input type="date" class="form-control" id="date" required>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="hour" style="font-weight: 500">Hora programada</label>
                    <input type="time" class="form-control" id="hour" required>
                </div>
            </div>
		</div>

		<div class="row mb-3">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="eps" style="font-weight: 500">EPS</label>
                    <select class="form-control" id="eps" required>
                         <option value="" disabled selected>Seleccione una EPS</option>
                         <option value="Coosalud">Coosalud</option>
                         <option value="Savia salud">Savia salud</option>
                         <option value="Sanitas">Sanitas</option>
                    </select>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="exam" style="font-weight: 500">Tipo de Exámen</label>
                    <select class="form-control" id="exam" required>
                         <option value="" disabled selected>Seleccione un Tipo de Exámen</option>
                         <option value="Resonancia magnética">Resonancia magnética</option>
                         <option value="Tomografía computarizada">Tomografía computarizada</option>
                         <option value="Mamografía">Mamografía</option>
                    </select>
                </div>
            </div>
        </div>

		<div class="form-group">
            <label for="reason" style="font-weight: 500">Motivo de Visita</label>
            <textarea type="text" class="form-control" id="reason"></textarea>
        </div>

		<br>

        <div class="row mb-3">
            <div class="col-md-12" style="text-align: end">
                <button type="button" class="btn btn-default btn-cancel mx-2">Cancelar</button>
                <button type="submit" class="btn btn-save">Guardar</button>
            </div>
        </div>
	</form>

</div>