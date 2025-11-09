<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
<meta charset="UTF-8">
    <title><tiles:getAsString name="title"/></title>

            <link href="//cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <header><tiles:insertAttribute name="header"/></header>
    <main><tiles:insertAttribute name="body"/></main>
    <footer><tiles:insertAttribute name="footer"/></footer>

     <script src="//cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
