<%-- 
    Document   : index
    Created on : 2014-7-31, 11:38:53
    Author     : cyss210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <jsp:include page="head.jsp"></jsp:include>
    <body>
    <center id="top1">
        <!--  焦点图 begin -->
        <div id="top_image"></div>
        <!--  焦点图 end -->

        <!--  通用列表 begin -->
        <div id="top_control">
            <label class="top-control-label">收藏民力网</label>
            <label class="top-control-label"> | </label>
            <label class="top-control-label">郑州</label>
            <button id="change_city" class="btn btn-default top-control-btn">更改</button>
            <label id="control_right"> hi, 欢迎光临民力网。</label>
            <button id="top_login" class="btn btn-default top-control-btn">请登录</button>
            <button id="top_register" class="btn-sm button button-rounded button-flat-highlight">注册</button>
            <label class="top-control-label">客户服务</label>
            <label class="top-control-label">网站导航</label>
        </div>
        <!--  通用列表 end -->
        <!--  快速导航 begin -->
        <div id="simple_link" class="custom-outer-container">
            <div id="logo">

            </div>
            <div id="search_container" class="input-group">
                <input type="text" class="form-control" placeholder="请输入“企业名称”或“职位名称”，上百个好职位等着您哦！" />
                <span class="input-group-btn">
                    <button class="button button-flat-highlight">找工作</button>
                </span>
            </div>
            <div id="switch_style">
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
                        我的民力网
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#this">
                                <img width="120" height="120" src="http://mp.weixin.qq.com/mp/qrcode?scene=10000004&size=102&__biz=MzA3NjgzMzQyMQ==" />
                            </a></li>
                    </ul>
                </div>
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
                        手机民力网
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#this">
                                <img width="120" height="120" src="http://mp.weixin.qq.com/mp/qrcode?scene=10000004&size=102&__biz=MzA3NjgzMzQyMQ==" />
                            </a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--  快速导航 end -->
        <div id="navgate_container" class="custom-outer-container">
            <div id="all_jobs_title" class="index-left">
                全部工作分类
            </div>
            <div id="navgate_bar">
                <ul id="navgate_ul">
                    <li class="navgate_item navgate_item_active">首页</li>
                    <li class="navgate_item">找工作</li>
                    <li class="navgate_item">学技术</li>
                    <li class="navgate_item">人才库</li>
                    <li class="navgate_item">新闻中心</li>
                    <li class="navgate_item">权益保障</li>
                    <li class="navgate_item">民力职介中心</li>
                </ul>
            </div>
        </div>
        <div class="custom-outer-container">
            <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        <div id="right_panel">
                            <div class="index-left">
                                <div id="all_job_type">
                                    <div id="all_salary">
                                        综合工资
                                    </div>
                                </div>
                            </div>
                            <div class="index-middle">
                                <div id="ad_first">

                                </div>
                                <div>
                                    <div class="middle-ad"></div>
                                    <div class="middle-ad"></div>
                                </div>
                            </div>
                            <div id="ad_list" class="container" style="float: left">
                                <div class="row">
                                    <div class="col-sm-4 ad-div"></div>
                                    <div class="col-sm-4 ad-div"></div>
                                    <div class="col-sm-4 ad-div"></div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4 ad-div"></div>
                                    <div class="col-sm-4 ad-div"></div>
                                    <div class="col-sm-4 ad-div"></div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div id="right_panel" class="index-right">
                            <div id="login_panel">
                                
                            </div>
                            <div id="ml_news">
                                <div id="ml_news_title">民力快报</div>
                            </div>
                            <div style="margin-top: 4px;">
                                <button id="mbti_test" class="button button-flat-highlight">MBTI 职业性格测试</button>
                            </div>
                            <div id="recommand_job">
                                
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        
        <!-- yanggh从此 -->
        <div class="custom-outer-container">
            
        </div>
    </center>
</body>
</html>
