let patientSaved = null;

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


	$.ajax({
		url: contextPath + '/api/patients',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(paciente),
        success: function(res) {
            $('#patientAddEdit')[0].reset();
            console.log({res})
            patientSaved = res
            toastr.success('Paciente guardado exitosamente', 'Éxito');
        },
        error: function(err) {
                toastr.error('Error al guardar el paciente', 'Error');
                console.error(err);
        }
    });
}

function saveAppointment(e) {
	e.preventDefault();

	const cita = {
				fechaProgramacion: $("#date").val(),
                horaProgramacion: $("#hour").val(),
                eps: $("#eps").val(),
                tipoExamen: $("#exam").val(),
                motivoConsulta: $("#reason").val(),
                paciente: {
                    id: $("#patient").val()
                },
                estado: "Pendiente por Diagnóstico"
	}

	console.log({cita})

	$.ajax({
		url: contextPath + '/api/appointment',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(cita),
        success: function(res) {
            $('#appointmentAddEdit')[0].reset();

            toastr.success('Cita asignada exitosamente', 'Éxito');
        },
        error: function(err) {
                toastr.error('Error al guardar la Cita', 'Error');
                console.error(err);
        }
    });
}

$(document).on('submit', 'form#patientAddEdit', savePatient);
$(document).on('submit', 'form#appointmentAddEdit', saveAppointment);