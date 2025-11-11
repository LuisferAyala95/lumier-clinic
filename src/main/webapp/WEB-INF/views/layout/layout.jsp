<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
	<meta charset="UTF-8">
    <title><tiles:getAsString name="title"/></title>

    <link href="//cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

     <script src="//cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

     <!-- jQuery 3.6.3 -->
     <script src="https://code.jquery.com/jquery-3.6.3.min.js"
             integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
             crossorigin="anonymous"></script>

     <!-- Toast CSS -->
     <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet"/>
     <!-- Toast JS -->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>


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
        		<div class="col-md-2 container-border" style="padding: 2rem;">
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
