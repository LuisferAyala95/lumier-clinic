<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="row" style="padding: 2rem; display: flex; gap: 1rem;">

	<div class="col-md-2 container-border" >
		<div style="display: flex; gap: 2px; align-items: center;">
			<h3>Citas para Hoy</h3>
			<span class="notification-today">${fn:length(todayAppointments)}</span>
		</div>

		<jsp:include page="/WEB-INF/views/jsp/appointment/appointmentTodayDashboardComponent.jsp" />
    </div>

	<div class="col-md-10 container-border">
		<div class="row" style="padding: 0px 2rem; display: flex; gap: 1rem; flex-direction: column;">

        	<div class="col-md-12 container-border" style="padding: 10px">
				<div style="display: flex; gap: 20px; align-items: center;">
					<h3>Citas pendientes por Diagnósticos</h3>
					<span class="notification-pending">${fn:length(appointments)}</span>
				</div>

        		<jsp:include page="/WEB-INF/views/jsp/appointment/appointmentDashboardComponent.jsp" />
            </div>

        	<div class="col-md-12 container-border" style="padding: 10px">
				<h3>Diagnósticos Revisados</h3>
				<jsp:include page="/WEB-INF/views/jsp/diagnosis/diagnosisListComponent.jsp" />
        	</div>

        </div>
	</div>

</div>