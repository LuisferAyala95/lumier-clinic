<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-border mt-3" style="padding: 2rem">
	<h2>Datos básicos</h2>
	<p>Ingrese la información general del paciente</p>
	<br>
	<form id="patientAddEdit">
			<div class="row mb-3">
				<div class="col-md-6">
                    <div class="form-group">
                	    <label for="tipoDocumento" style="font-weight: 500">Tipo de documento</label>
                        <select class="form-control" id="tipoDocumento" required>
                          <option>Tarjeta de identidad</option>
                          <option>Cédula</option>
                          <option>Cédula extranjera</option>
                          <option>Pasaporte</option>
                          <option>Registro civíl</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                	    <label for="Identification" style="font-weight: 500">Identificación</label>
                            <input type="text" class="form-control" id="Identification" required>
                    </div>
                </div>
			</div>

			<div class="row mb-3">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="names" style="font-weight: 500">Nombres</label>
                        <input type="text" class="form-control" id="names" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="lastnames" style="font-weight: 500">Apellidos</label>
                        <input type="text" class="form-control" id="lastnames" required>
                    </div>
                </div>
            </div>

			<div class="row mb-3">
                <div class="col-md-6">
					<div class="form-group">
                        <label for="date" style="font-weight: 500">Fecha de nacimiento</label>
                        <input type="date" class="form-control" id="date">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="gender" style="font-weight: 500">Género</label>
                        <select class="form-control" id="gender">
		                     <option>Hombre</option>
		                     <option>Mujer</option>
							 <option>No binario</option>
		                </select>
                    </div>
                </div>
            </div>

		<br>
		<h2>Información de contacto</h2>
        <p class="mb-3">Proporcione los medios de contacto del paciente</p>

        <div class="row mb-3">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="email" style="font-weight: 500">Correo electrónico</label>
                    <input type="email" class="form-control" id="email">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="phone" style="font-weight: 500">Teléfono</label>
                        <input type="text" class="form-control" id="phone">
                </div>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="address" style="font-weight: 500">Dirección</label>
                    <input type="text" class="form-control" id="address">
                </div>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-12" style="text-align: end">
                <button type="button" class="btn btn-default btn-cancel mx-2">Cancelar</button>
                <button type="submit" class="btn btn-save">Guardar</button>
            </div>
        </div>
	</form>
</div>
