<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-border mt-3" style="padding: 2rem">
	<form id="userAddEdit">
		<div class="form-group">
            <label for="name" style="font-weight: 500">Nombre</label>
            <input type="text" class="form-control" id="name" required>
        </div>
		<div class="form-group">
            <label for="email" style="font-weight: 500">Email</label>
            <input type="email" class="form-control" id="email" required>
        </div>
		<div class="form-group">
            <label for="rol" style="font-weight: 500">Rol</label>
            <select class="form-control" id="rol">
				<c:forEach var="rol" items="${roles}">
					<option value="${rol.id}">${rol.nombre}</option>
				</c:forEach>
            </select>
        </div>
		<div class="form-group">
            <label for="password" style="font-weight: 500">Contraseña</label>
            <input type="password" class="form-control" id="password" required>
        </div>
		<div class="row mb-3">
            <div class="col-md-12" style="text-align: end">
                <button type="button" class="btn btn-default btn-cancel mx-2">Cancelar</button>
                <button type="submit" class="btn btn-save">Guardar</button>
            </div>
        </div>
	</form>
</div>