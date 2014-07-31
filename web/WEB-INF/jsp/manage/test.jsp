<%-- 
    Document   : test
    Created on : 2014-7-4, 9:45:09
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
        <title>Test JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <form id="search_form" role="form" class="form-inline">
                    <div class="navbar-form navbar-left page-header row custom-search">
                        <div class="form-group">
                            <label for="replier">回复人：</label>
                            <input type="text" class="form-control" id="replier" name="replier"  />
                        </div>
                        <div class="form-group">
                            <label for="begin_time">开始时间：</label>
                            <input type="text" data-role="date" class="form-control" id="begin_time" name="begin_time"  />
                        </div>
                        <div class="form-group">
                            <label for="end_time">结束时间：</label>
                            <input type="text" data-role="date" class="form-control" id="end_time" name="end_time"  />
                        </div>
                        <button id="search" type="button" class="btn btn-primary">查询</button>
                    </div>
                </form>
            </div>
            <div class="row well well-sm">
                <div class="btn-group">
                    <button type="button" class="btn btn-primary">添加</button>
                    <button type="button" class="btn btn-default">修改</button>
                    <button type="button" class="btn btn-danger">删除</button>
                </div>
            </div>
            <div class="row">
                <table id="replier_table" class="table table-hover">
                    <thead>
                        <tr row-key="MSG_ID">
                            <th rel-key="REPLIER" class="col-sm-2">回复人</th>
                            <th rel-key="CONTENT" class="col-sm-7">内容</th>
                            <th rel-key="REPLY_TIME" class="col-sm-3">回复时间</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
