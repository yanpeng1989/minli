<%-- 
    Document   : top
    Created on : 2014-8-27, 15:16:16
    Author     : cyss210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  焦点图 begin -->
<div id="top_image" style="background-image: url('http://fakeimg.pl/1600x80/ff5500,128/000,255?text=holderplace image')">
</div>
<!--  焦点图 end -->

<!--  通用列表 begin -->
<div id="top_control">
    <label class="top-control-label">收藏民力网</label>
    <label class="top-control-label"> | </label>
    <label class="top-control-label">郑州</label>
    <button id="change_city" class="btn btn-default top-control-btn">更改</button>
    <label id="control_right"> hi, 欢迎光临民力网。</label>
    <button id="top_login" class="btn btn-default top-control-btn">请登录</button>
    <button id="top_register" class="btn-sm button button-rounded button-flat-highlight glow">注册</button>
    <label class="top-control-label">客户服务</label>
    <label class="top-control-label">网站导航</label>
</div>
<!--  通用列表 end -->
<center>
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
</center>