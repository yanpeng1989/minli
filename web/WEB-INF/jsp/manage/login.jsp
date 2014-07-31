<%-- 
    Document   : index
    Created on : 2014-6-30, 9:51:46
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
    <body style="background: #fafafa">
    <center>
        <div id="login_panel" class="panel panel-default" style="width: 550px; margin-top: 100px;">
            <div class="page-header">
                <h4 class="panel-title">
                    登录
                </h4>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">用户名：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="username" name="username" check-type="required" placeholder="请输入用户名" maxlength="15" minlength="6" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">密码：</label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" id="password" name="password" check-type="required" placeholder="请输入密码" maxlength="15" minlength="6" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">验证码：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="checknum" name="checknum" check-type="required" placeholder="请输入验证码" minlength="4" maxlength="4" />
                            <a href="#"><img id="checknum_img" src="<c:url value='/validate/code.do' />" /></a>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-1 control-label"></label>
                        <input type="button" id="sub" class="btn btn-primary col-sm-10" data-loading-text="正在登录.." value="登录" />          
                    </div>
                </form>
            </div>
        </div>
    </center>

</body>
</html>
