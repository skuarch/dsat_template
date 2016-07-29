<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html data-ng-app="angularLoginModule">
    <head>
        <title>DSAT | Login</title>
        <link href="<c:url value="/resources/css/login.css"/>" type="text/css" rel="stylesheet"/>
        <jsp:include page="metas.jsp"/>
    </head>
    <body>
        <div data-ng-view></div>
        <jsp:include page="../application/scripts.jsp"/>        
        <script src="<c:url value="/resources/js/login.js"/>" type="text/javascript"></script>        
    </body>
</html>
