<%-- 
    Document   : welcome
    Created on : 2014-7-2, 17:28:05
    Author     : cyss210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value='/css/frame/bootstrap.min.css' />" rel="stylesheet" />
        <link href="<c:url value='/css/frame/bootstrap-theme.min.css' />" rel="stylesheet" />
        <link href="<c:url value='/css/frame/bootstrap-datetimepicker.min.css' />" rel="stylesheet" />
        <link href="<c:url value='/css/frame/frame-cyss.css' />" rel="stylesheet" />
        <script src="<c:url value='/script/frame/jquery-1.11.1.min.js' />"></script>
        <script src="<c:url value='/script/frame/bootstrap.min.js' />"></script>
        <script src="<c:url value='/script/frame/bootstrap-treeview.js' />"></script>
        <script src="<c:url value='/script/frame/bootstrap-datetimepicker.min.js' />"></script>
        <script src="<c:url value='/script/frame/bootstrap-datetimepicker.zh-CN.js' />"></script>
        <script src="<c:url value='/script/frame/bootstrap3-validation.js' />"></script>
        <script src="<c:url value='/script/frame/string.min.js' />"></script>
        <script src="<c:url value='/script/frame/frame-manage.js' />"></script>
    </head>
    <body>
        <div class="top-nav navbar navbar-fixed-top"></div>
        <div class="container welcome-container">
            <div class="row">
                <div class="col-md-2" id="left-menu"></div>
                <div class="col-md-10" id="right-content">
                    <iframe id="content-frame" class="col-md-12" src="<c:url value='/manage/first.do' />" border="0" frameborder="0" width="100%"> </iframe>
                </div>
            </div>
        </div>
        <div class="bottom-nav navbar navbar-fixed-bottom"></div>
    </body>
</html>
