<%@ tag description="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@attribute name="pageTitle"%>
<!DOCTYPE html>
<html class="h-100">
<head>
    <title>${pageTitle}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body class="d-flex flex-column h-100">

<jsp:include page="/WEB-INF/pages/menu.jsp" />

<main class="container-fluid mt-5 flex-grow-1">
    <jsp:doBody/>
</main>

<jsp:include page="/WEB-INF/pages/footer.jsp" />

<script src="${pageContext.request.contextPath}/scripts/form-validation.js"></script>
</body>
</html>