function savePatient(e) {
	e.preventDefault();




	const paciente = {
				tipoDocumento: $("#tipoDocumento").val(),
                numeroDocumento: $("#Identification").val(),
                nombres: $("#names").val(),
                apellidos: $("#lastnames").val(),
                fechaNacimiento: $("#date").val(),
                genero: $("#gender").val(),
                direccion: $("#address").val(),
                telefono: $("#phone").val(),
                email: $("#email").val(),
	}

	console.log("datos del paciente:")
	console.log({paciente});
	console.log({contextPath})

	$.ajax({
		url: contextPath + '/api/patients',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(paciente),
        success: function(res) {
            $('#patientAddEdit')[0].reset();

            toastr.success('Paciente guardado exitosamente', 'Éxito');
        },
        error: function(err) {
                toastr.error('Error al guardar el paciente', 'Error');
                console.error(err);
        }
    });
}

$(document).on('submit', 'form#patientAddEdit', savePatient);