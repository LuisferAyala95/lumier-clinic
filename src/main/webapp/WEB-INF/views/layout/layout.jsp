<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
<meta charset="UTF-8">
    <title><tiles:getAsString name="title"/></title>

            <link href="//cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
             <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">


</head>
<body>
    <header><tiles:insertAttribute name="header"/></header>
    <main><tiles:insertAttribute name="body"/></main>
    <footer><tiles:insertAttribute name="footer"/></footer>

     <script src="//cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>
