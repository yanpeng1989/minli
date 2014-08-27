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
        <jsp:include page="top.jsp" />
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
        <jsp:include page="foot.jsp" />
    </center>
        <jsp:include page="flow_link.jsp" />
</body>
</html>
<!-- 在此引用相应页面的js -->
<script type="text/javascript" src="<c:url value="/script/pc/index.js" />"></script>