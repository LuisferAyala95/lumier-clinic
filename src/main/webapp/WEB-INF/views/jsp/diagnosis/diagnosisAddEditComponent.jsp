<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container-border mt-3" style="padding: 2rem">

	<form id="diagnosisAddEdit">

		<div class="form-group mb-3">
            <label for="details" style="font-weight: 500">Detalles de Diagnóstico</label>
            <div class="background-light container-editor" style="padding-top: 5px">
				<textarea type="text" class="form-control" id="details" rows="5"></textarea>
			</div>

        </div>

		<label style="font-weight: 500">Estado de Diagnóstico</label>
		<div class="row mb-3">
            <div class="col-md-6">
                    <label>
                      <input type="radio" name="diagnosisState" value="Rechazado"> Rechazado
                    </label>
                    <label>
                      <input type="radio" name="diagnosisState" value="Aprobado para entrega"> Aprobado para entrega
                    </label>
            </div>
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
<script>
  $(document).ready(function () {
    $('#details').wysihtml5({
                    "fa": true,
                 	"font-styles": true, //Font styling, e.g. h1, h2, etc. Default true
                 	"emphasis": true, //Italics, bold, etc. Default true
                 	"lists": true, //(Un)ordered lists, e.g. Bullets, Numbers. Default true
                 	"html": false, //Button which allows you to edit the generated HTML. Default false
                 	"link": true, //Button to insert a link. Default true
                 	"image": true, //Button to insert an image. Default true,
                 	"color": false, //Button to change color of font
                 	"blockquote": true, //Blockquote
                 });
  });
</script>
