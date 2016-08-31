<%-- 
    Document   : dashboard
    Created on : Jul 12, 2016, 2:55:28 PM
    Author     : skuarch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html ng-app="angularModules">
    <head>
        <title>DSAT | Template</title>
        <jsp:include page="../application/links.jsp"/>        
        <jsp:include page="../application/metas.jsp"/>
    </head>
    <body>
        <div id="wrapper">

            <jsp:include page="../application/topNavigation.jsp"/>
            <jsp:include page="../application/leftNavigation.jsp"/>            
            
            <div id="page-wrapper">
                <div ng-view></div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->         
        <jsp:include page="../application/scripts.jsp"/>        
    </body>
</html>
