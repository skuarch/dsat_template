<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html data-ng-app="angularIndex">
    <head>
        <title>DSAT | Login</title>
        <jsp:include page="../application/scripts.jsp"/>        
        <script src="<c:url value="/resources/js/login.js"/>" type="text/javascript"></script>        
        <link href="<c:url value="/resources/css/style.css"/>" type="text/css" rel="stylesheet"/>        
        <script src="<c:url value="/resources/js/chartjs.min.js"/>"></script>
        <link href="<c:url value="/resources/css/login.css"/>" type="text/css" rel="stylesheet"/>
        <jsp:include page="metas.jsp"/>
    </head>
    <body oncontextmenu="return false" onselectstart="return false" ondragstart="return false">        
        <div data-ng-view></div>        
    </body>
</html>
