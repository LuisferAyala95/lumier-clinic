<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="border: 1px solid #1e293b; border-radius: 8px">
	<div class="row">
		<div class="col-md-8">
			 <input type="text" class="form-control" id="search" placeholder="Búscar Pacientes...">
        </div>
		<div class="col-md-4">
			<button type="button" class="btn btn-primary"
			onclick="location.href='${pageContext.request.contextPath}/patient/addEdit'">Agregar Nuevo Paciente</button>
        </div>
	</div>
</div>