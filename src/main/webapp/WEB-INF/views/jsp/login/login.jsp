<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
    <!-- Bootstrap 3.3.5 CSS -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

         <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

<!-- jQuery 3.6.3 -->
     <script src="https://code.jquery.com/jquery-3.6.3.min.js"
             integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
             crossorigin="anonymous"></script>


    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <script>
        const contextPath = '${pageContext.request.contextPath}';
    </script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</head>
<body>
<div style="display: flex; justify-content: center; margin-top: 4rem;">
	<div class="row">
    	<div class="col-md-12" style="display: flex; flex-direction: column; align-items: center;">
    		<i class="bi bi-heart-pulse-fill" style="font-size: 3rem; color: cornflowerblue;"></i>
    		<h1 style="margin-top: 0px">Lumier</h1>
    		<p>Inicie sesión en su cuenta</p>
        </div>
    	<div class="col-md-12">
    		<form id="login" style="background-color: #1e293b; padding: 1rem; border-radius: 8px;">
    			<div class="form-group">
                    <label for="user" style="font-weight: 500">Usuario o Email</label>
                    <input type="text" class="form-control" id="user">
                </div>
    			<div class="form-group">
                    <label for="password" style="font-weight: 500">Contraseña</label>
                    <input type="password" class="form-control" id="password">
                </div>

    			<div class="row mb-3" style="display: flex; align-items: center;">
                    <div class="col-md-6">
                        <div class="checkbox">
                          <label>
                            <input type="checkbox" value="">
                            Recuérdame
                          </label>
                        </div>
                    </div>
                    <div class="col-md-6">
                       <a href="#">¿Olvidaste tu contraseña?</a>
                    </div>
                </div>

    		 <button type="button" class="btn btn-save" style="width: 100%;"
    		 onclick="location.href='${pageContext.request.contextPath}/dashboard'">Login</button>
    		</form>
			<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
    	</div>

    </div>
</div>


</body>
</html>






