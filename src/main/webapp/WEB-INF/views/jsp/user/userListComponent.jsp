<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-border mt-3" style="padding: 2rem">
	<div class="row mb-3">
    		<div class="col-md-9">
    			 <input type="text" class="form-control" id="search" placeholder="Búscar Usuarios...">
            </div>
    		<div class="col-md-3" style="text-align: end;">
    			<button type="button" class="btn btn-save" style="display: flex; align-items: center;"
    			onclick="location.href='${pageContext.request.contextPath}/users/addEdit'">
    				<span style="padding-right: 10px">
                        <i class="bi bi-person-add"></i>
                    </span>
    				Agregar Nuevo Usuario
    			</button>
            </div>
    	</div>

    	<table class="table" cellpadding="6" cellspacing="0">
    		<thead>
    			<tr>
    				<th>Nombre</th>
                    <th>Email</th>
                    <th>Rol</th>
                    <th>Estado</th>
                    <th>Acciones</th>
    			</tr>
    		</thead>

    		<tbody>
    			<c:forEach var="user" items="${users}">
    				<tr>
                        <td>${user.nombre}</td>
                        <td>${user.email}</td>
                        <td>${user.rol.nombre}</td>
						<c:choose>
							<c:when test="${user.activo}">
								<td>
									<div class="alert alert-success" style="padding: 5px; font-weight: bold;">Activo</div>
								</td>
							</c:when>
							<c:otherwise>
								<td>
									<div class="alert alert-danger" style="padding: 5px; font-weight: bold;">Inactivo</div>
								</td>
							</c:otherwise>
						</c:choose>
                        <td></td>
                    </tr>
    			</c:forEach>
    		</tbody>
    	</table>
</div>