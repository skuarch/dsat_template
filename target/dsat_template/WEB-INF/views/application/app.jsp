<%-- 
    Document   : dashboard
    Created on : Jul 12, 2016, 2:55:28 PM
    Author     : skuarch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html data-ng-app="angularAppModule">
    <head>
        <title>DSAT | Dashboard</title>
        <jsp:include page="../application/links.jsp"/>        
        <jsp:include page="../application/metas.jsp"/>
    </head>
    <body oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

            <jsp:include page="../application/topNavigation.jsp"/>
            <jsp:include page="../application/leftNavigation.jsp?var=1"/>            
            
            <div id="page-wrapper">                
                <span data-ng-view data-ng-cloak></span>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->         
        <jsp:include page="../application/scripts.jsp"/>        
        <script src="<c:url value="/resources/js/chartjs.min.js"/>"></script>
    </body>
</html>
