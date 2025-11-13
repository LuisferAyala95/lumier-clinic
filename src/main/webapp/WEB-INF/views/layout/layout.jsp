<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
	<meta charset="UTF-8">
    <title><tiles:getAsString name="title"/></title>

    <!--<link href="//cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

     <script src="//cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> -->

     <!-- Bootstrap 3.3.5 CSS -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

     <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">


     <!-- Bootstrap 3 (incluye Glyphicons) -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css">

     <!-- jQuery 3.6.3 -->
     <script src="https://code.jquery.com/jquery-3.6.3.min.js"
             integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
             crossorigin="anonymous"></script>

	 <!-- Bootstrap 3.3.5 JavaScript -->
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

     <!-- Toast CSS -->
     <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet"/>
     <!-- Toast JS -->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

     <!-- Boostrap WYSIHTML5-->
     <!-- WYSIHTML5 CSS -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap3-wysihtml5-bower@0.3.3/dist/bootstrap3-wysihtml5.min.css">


	<!-- WYSIHTML5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap3-wysihtml5-bower@0.3.3/dist/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Material-icons -->
	<link href="https://cdn.jsdelivr.net/npm/material-icons@1.13.14/iconfont/material-icons.css" rel="stylesheet">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<script>
        const contextPath = '${pageContext.request.contextPath}';
    </script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


</head>
<body>
    <header><tiles:insertAttribute name="header"/></header>
    <main>
		<div style="margin-left: 3rem;">
        	<div class="row">
        		<div class="col-md-2 container-border" style="padding: 2rem; height: 100%;">
        			<aside><tiles:insertAttribute name="menu" /> </aside>
        		</div>
        		<div class="col-md-10 container-border" style="padding: 2rem;">
        			<div><tiles:insertAttribute name="content" /></div>
        		</div>
        	</div>
        </div>
	</main>

    <footer><tiles:insertAttribute name="footer"/></footer>

</body>
</html>
