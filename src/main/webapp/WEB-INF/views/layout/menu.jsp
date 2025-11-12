<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar menu">

		<a href="${pageContext.request.contextPath}/dashboard" class="menu-item">
			<span style="padding-right: 10px">
            		<i class="bi bi-columns-gap"></i>
            </span>
			Dashboard
		</a>

	<a href="${pageContext.request.contextPath}/scheduleAppointment" class="menu-item">
		<span style="padding-right: 10px">
			<i class="bi bi-calendar-week"></i>
         </span>
	    Citas
	</a>

	<a href="${pageContext.request.contextPath}/patients" class="menu-item">
		<span style="padding-right: 10px">
			<i class="bi bi-people-fill"></i>
         </span>
	    Pacientes
	</a>

	<a href="#" class="menu-item">
		<span style="padding-right: 10px">
			<i class="bi bi-clipboard2-pulse-fill"></i>
         </span>
	    Diagnósticos
	</a>

	<a href="#" class="menu-item">
		<span style="padding-right: 10px">
			<i class="bi bi-person-fill-gear"></i>
         </span>
	    Usuarios
	</a>
</nav>
