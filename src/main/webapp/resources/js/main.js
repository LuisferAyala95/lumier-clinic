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
            toastr.success('Paciente guardado exitosamente', 'Éxito');
            window.location.href = `${contextPath}/scheduleAppointment?patientId=${res.id}`;
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

	$.ajax({
		url: contextPath + '/api/appointment',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(cita),
        success: function(res) {
            $('#appointmentAddEdit')[0].reset();
            toastr.success('Cita asignada exitosamente', 'Éxito');
            window.location.href = `${contextPath}/diagnoses/addEdit?appointmentId=${res.id}`;
        },
        error: function(err) {
                toastr.error('Error al guardar la Cita', 'Error');
                console.error(err);
        }
    });
}

function saveDiagnosis(e) {
	e.preventDefault();

	// Obtener todos los parámetros de la URL
    const params = new URLSearchParams(window.location.search);


	const diagnostico = {
				conclusion: $("#details").val(),
                fechaDiagnostico: new Date(),
                estado: $('input[name="diagnosisState"]:checked').val(),
                cita: {
                    id: params.get("appointmentId")
                },
	}


	$.ajax({
		url: contextPath + '/api/diagnosis',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(diagnostico),
        success: function(res) {
            $('#diagnosisAddEdit')[0].reset();

            toastr.success('Diagnóstico guardado exitosamente', 'Éxito');

            const cita = {
                id: params.get("appointmentId"),
                estado: "Atendida"
            }
            	$.ajax({
            		url: contextPath + '/api/appointment',
                    type: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify(cita)
                    })
        },
        error: function(err) {
                toastr.error('Error al guardar el Diagnóstico', 'Error');
                console.error(err);
        }
    });
}
function saveUser(e) {
	e.preventDefault();

	const usuario = {
				nombre: $("#name").val(),
                email: $("#email").val(),
                rol: {
                    id: $("#rol").val()
                },
                password: $("#password").val(),
                activo: 1,
	}


	$.ajax({
		url: contextPath + '/api/users',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(usuario),
        success: function(res) {
            $('#userAddEdit')[0].reset();

            toastr.success('Usuario guardado exitosamente', 'Éxito');
        },
        error: function(err) {
                toastr.error('Error al guardar el Usuario', 'Error');
                console.error(err);
        }
    });
}

function redirectToAppointmentList(e) {
	e.preventDefault();
	 window.location.href = `${contextPath}/appointments`;
}

function redirectToDiagnosis(e) {
	e.preventDefault();
	 const appointmentId = $(this).data('appointment-id');
	 window.location.href = `${contextPath}/diagnoses/addEdit?appointmentId=${appointmentId}`;
}



$(document).on('submit', 'form#patientAddEdit', savePatient);
$(document).on('submit', 'form#appointmentAddEdit', saveAppointment);
$(document).on('submit', 'form#diagnosisAddEdit', saveDiagnosis);
$(document).on('submit', 'form#userAddEdit', saveUser);
$(document).on('click', '#viewAppointments', redirectToAppointmentList);
$(document).on('click', '#btoDiagnosis', redirectToDiagnosis);