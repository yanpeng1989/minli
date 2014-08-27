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
    <link href="<c:url value='/css/pc/index.css' />" rel="stylesheet" />
    <body>
    <center id="top1">
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
                                    <div id="all_salary" class="all-job-type">
                                        <h4 class="all-jobs-type-title">综合工资</h4>
                                        <div><a href="#this">6000以上</a></div>
                                        <div><a href="#this">4000-6000</a></div>
                                        <div><a href="#this">3000-4000</a></div>
                                        <div><a href="#this">2000-3000</a></div>
                                        <div><a href="#this">2000以下</a></div>
                                    </div>
                                    <div id="all_types" class="all-job-type">
                                        <h4 class="all-jobs-type-title">职位类别</h4>
                                        <div><a href="#this">储备干部</a></div>
                                        <div><a href="#this">普工</a></div>
                                        <div><a href="#this">操作工</a></div>
                                        <div><a href="#this">电焊工</a></div>
                                        <div><a href="#this">电工</a></div>
                                        <div><a href="#this">铣工</a></div>
                                        <div><a href="#this">缝纫工</a></div>
                                        <div><a href="#this">车床</a></div>
                                    </div>
                                    <div id="job_people" class="all-job-type">
                                        <h4 class="all-jobs-type-title">工作性质</h4>
                                        <div><a href="#this">长期</a></div>
                                        <div><a href="#this">实习生</a></div>
                                        <div><a href="#this">寒假工</a></div>
                                        <div><a href="#this">暑假工</a></div>
                                    </div>
                                    <div id="job_area" class="all-job-type">
                                        <h4 class="all-jobs-type-title">工作区域</h4>
                                        <div><a href="#this">郑州</a></div>
                                        <div><a href="#this">北京</a></div>
                                        <div><a href="#this">苏州</a></div>
                                        <div><a href="#this">上海</a></div>
                                        <div><a href="#this">厦门</a></div>
                                        <div><a href="#this">国外劳务</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="index-middle">
                                <div id="ad_first">

                                </div>
                                <div>
                                    <div class="middle-ad">
                                        <img src="http://fakeimg.pl/273x120/ff5500,128/000,255" />
                                    </div>
                                    <div class="middle-ad">
                                        <img src="http://fakeimg.pl/273x120/fff000,128/000,255" />
                                    </div>
                                </div>
                            </div>
                            <div id="ad_list" class="container" style="float: left">
                                <div class="row">
                                    <div class="col-sm-4 ad-div">
                                        <img src="http://fakeimg.pl/253x159/ff5500,128/000,255" />
                                    </div>
                                    <div class="col-sm-4 ad-div">
                                        <img src="http://fakeimg.pl/253x159/ff5500,128/000,255" />
                                    </div>
                                    <div class="col-sm-4 ad-div">
                                        <img src="http://fakeimg.pl/253x159/ff5500,128/000,255" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4 ad-div">
                                        <img src="http://fakeimg.pl/253x159/ff5500,128/000,255" />
                                    </div>
                                    <div class="col-sm-4 ad-div">
                                        <img src="http://fakeimg.pl/253x159/ff5500,128/000,255" />
                                    </div>
                                    <div class="col-sm-4 ad-div">
                                        <img src="http://fakeimg.pl/253x159/ff5500,128/000,255" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div id="right_panel" class="index-right">
                            <div id="login_panel">
                                <h4>外出找工作&nbsp;&nbsp;就上民力网</h4>
                                <button id="free_for_job_btn" class="button button-flat-highlight glow">免费找工作</button>
                                <button id="login_panel_btn" class="button button-flat glow">登录</button>
                            </div>
                            <div id="ml_news">
                                <div id="ml_news_title">民力快报</div>
                                <c:forEach begin="0" end="4">
                                    <p><a href="#this">1、习近平总书记调研职业教育学院</a></p>
                                </c:forEach>
                            </div>
                            <div style="margin-top: 4px;">
                                <button id="mbti_test" class="button button-flat-highlight glow">MBTI 职业性格测试</button>
                            </div>
                            <div id="recommand_job">
                                <div id="recommand_job_title">最新推荐企业<a href="#this">更多...</a></div>
                                <table class="table">
                                    <tbody>
                                        <c:forEach begin="0" end="3">
                                            <tr>
                                                <td>宁波美齐</td>
                                                <td>3000-5000</td>
                                                <td>宁波</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>

        <!-- yanggh从此 -->
        <div class="custom-outer-container" style="height: 30px;">
            <div class="index-left" style="color: #FF6600;"><label><i>学技术</i></label> &nbsp;未来的中国是技工的天下</div>
            <div class="index-middle" style="color: #FF6600;text-align: center">热门专业：电焊技术&nbsp;&nbsp;&nbsp;&nbsp;汽车维修&nbsp;&nbsp;&nbsp;&nbsp;机械自动化 </div>
            <div class="index-right" style="color: #FF6600;">查看所有专业&nbsp;&nbsp;&nbsp;&nbsp;合作院校名单</div>
        </div>
        <div style="height: 240px" class="custom-outer-container">
            <div class="job_desc">
                <c:forEach begin="0" end="5">
                    <p>1、当前电焊工人才极为紧俏，工资</p>
                </c:forEach>
            </div>
            <div class="job_desc">
                <img src="http://fakeimg.pl/194x240/ff5500,128/000,255" />
            </div>
            <div class="job_desc">
                <img src="http://fakeimg.pl/194x240/ff5500,128/000,255" />
            </div>
            <div class="job_desc">
                <img src="http://fakeimg.pl/194x240/ff5500,128/000,255" />
            </div>
            <div class="job_desc">
                <img src="http://fakeimg.pl/194x240/ff5500,128/000,255" />
            </div>
        </div>
        <!--  焦点图 begin -->
        <div style="height: 80px;" class="custom-outer-container">
            <div id="middle_image">
                <img src="http://fakeimg.pl/1024x80/ff5500,128/000,255" />
            </div>
        </div>
        <!--  焦点图 end -->
        <div style="margin-top: 5px;height: 220px;" class="custom-outer-container">
            <div id="talent_pool">
                <div id="telent_pool_peopulation">当前共有280000人加入了人才库</div>
                <div id="telent_pool_desc">
                    加入人才库，我们将在第一时间把跟您需要的招聘信息推送给您
                </div>
                <button id="join_talent_pool_btn" class="button button-flat-highlight glow">我要加入人才库</button>
            </div>
            <div id="talent_show">
                <div id="talent_1">
                    <img src="http://fakeimg.pl/279x108/ff5500,128/000,255" />
                </div>
                <div id="talent_2">
                    <img src="http://fakeimg.pl/279x108/ff5500,128/000,255" />
                </div>
            </div>
            <div id="rights_protect">
                <div id="rights_protect_title">权益保障</div>
                <div id="rights_protect_desc">
                    民力网律师团队将为您提供专业的法律服务，解除您外出工作的后顾之忧
                </div>
                <button id="get_rights_btn" class="button button-flat-highlight glow">我要申诉</button>
            </div>
            <div id="rights_protect_show">
                <div id="rights_protect_show_title">申诉列表</div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>用户</td>
                            <th>申诉事由</td>
                            <th>处理状态</td>
                            <th>申诉时间</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach begin="0" end="3">
                            <tr>
                                <td>cr**ds</td>
                                <td>拖欠工资</td>
                                <td>已处理</td>
                                <td>2014-06-22</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="index_foot" class="custom-outer-container">
            <table id="foot_table" width="100%">
                <tr>
                    <td width="12%">
                        <div class="foot_table_div">
                            <label>新手入门</label>
                            <ul>
                                <li><a href="#this">免费注册</a></li>
                                <li><a href="#this">我的民力网</a></li>
                                <li><a href="#this">快速找工作</a></li>
                                <li><a href="#this">修改密码</a></li>
                                <li><a href="#this">帮助中心</a></li>
                            </ul>
                        </div>
                    </td>
                    <td width="12%">
                        <div class="foot_table_div">
                            <label>个人服务</label>
                            <ul>
                                <li><a href="#this">找工作</a></li>
                                <li><a href="#this">学技术</a></li>
                                <li><a href="#this">权益保障</a></li>
                                <li><a href="#this">加入人才库</a></li>
                            </ul>
                        </div
                    </td>
                    <td width="12%">
                        <div class="foot_table_div">
                            <label>企业服务</label>
                            <ul>
                                <li><a href="#this">发布信息</a></li>
                                <li><a href="#this">招聘服务</a></li>
                                <li><a href="#this">广告服务</a></li>
                                <li><a href="#this">联系我们</a></li>
                            </ul>
                        </div
                    </td>
                    <td>
                        <div class="foot_table_div">
                            <center>
                                <label>民力网官方微博</label>
                                <p>业界动态，随时掌握！</p>
                                <table  style="height:24px;">
                                    <tr>
                                        <td><div id="foot_sina_icon"></div></td>
                                        <td><div style="float: left;"><a href="#this">新浪微博</a></div></td>
                                    </tr>
                                    <tr>
                                        <td><div id="foot_tencent_icon"></div></td>
                                        <td><div style="float: left;"><a href="#this">腾讯微博</a></div></td>
                                    </tr>
                                </table>
                            </center>
                        </div>
                    </td>
                    <td>
                        <div class="foot_table_div">
                            <label>民力网官方微信</label>
                            <p>数万岗位，触手可得</p>
                            <img src="http://mp.weixin.qq.com/mp/qrcode?scene=10000004&size=102&__biz=MzA3NjgzMzQyMQ==" />
                        </div
                    </td>
                    <td>
                        <div class="foot_table_div">
                            <label>民力网手机客户端</label>
                            <p>随时随地找工作</p>
                            <img src="http://mp.weixin.qq.com/mp/qrcode?scene=10000004&size=102&__biz=MzA3NjgzMzQyMQ==" />
                        </div
                    </td>
                </tr>
            </table>
            <div id="foot_friend_link">
                <label>
                    友情链接：
                </label>
                <a href="#this">台州人才网 </a><a href="#this"> 招聘会 </a><a href="#this"> 蚂蚁网 </a><a href="#this"> 台州人才网 </a><a href="#this"> 招聘会 </a><a href="#this"> 招聘会 </a><a href="#this"> 招聘会 </a><a href="#this"> 招聘会 </a><a href="#this"> 招聘会 </a><a href="#this"> 招聘会 </a><a href="#this"> 招聘会 </a><a href="#this"> 招聘会 </a><a href="#this"> 招聘会 </a><a href="#this"> 招聘会 </a><a href="#this"> 蚂蚁网 </a>   <a href="#this">更多>> </a>  
            </div>
            <div style="width: 99%;background-color: #999;height: 1px;margin-top: 14px;"></div>
            <div style="width: 99%;background-color: #ddd;height: 1px;margin-bottom: 10px;"></div>
            <table>
                <tr>
                    <td><img src="http://www.minli360.com/images/common/hf.gif"></td>
                    <td width="440" align="center">
                        <p>©2011-2013 河南民力计算机科技有限公司</p>
                        <p>人力资源服务许可文号：豫人社人力许准字[2013]15号</p>
                        <p> 豫ICP备13001955号</p>
                    </td>
                    <td>
                        <img src="http://www.minli360.com/images/common/f1.gif">
                    </td>
                    <td><img style="margin-left: 16px;" src="http://www.minli360.com/images/common/f2.gif">   </td>
                </tr>
            </table>
        </div>
    </center>
    <div id="right_quick_nav">

    </div>
</body>
</html>
<!-- 在此引用相应页面的js -->
<script type="text/javascript" src="<c:url value="/script/pc/index.js" />"></script>