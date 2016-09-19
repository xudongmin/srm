<!DOCTYPE html>
<html>
    <head lang="en">
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@ include file="../public/common/taglibs.jspf"%>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta http-equiv="X-UA-Compatible" content="IE=9" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/bootstrap.min.css"/>
        <link rel="stylesheet" href="../css/font-awesome.min.css"/>
        <link rel="stylesheet" href="../css/webuploader.css"/>
        <link rel="stylesheet" href="../css/style.css"/>
        <title>比亚迪供应商门户</title>
        <!--[if lt IE 9]>
        <script src="../js/html5shiv.min.js"></script>
        <script src="../js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="wrap">
            <div class="header navbar navbar-default navbar-top byd-header">
                <div class="container">
                    <div class="navbar-header header-left">
                        <img src="../images/logo.png" alt="" class="pull-left"/>
                        <h3 class="pull-left">比亚迪供应商门户</h3>
                        <button type="button" class="navbar-toggle" data-target="#navbar-collapse" data-toggle="collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse pull-right" id="navbar-collapse">
                        <form action="" id="">
                            <div class="header-right">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="Login.jsp">首页</a></li>
                                    <li><a href="../protocol/RegisterProtocol.jsp" target="_blank">注册</a></li>
                                    <li class="dropdown dropdown-li">
                                        <a href="" class="dropdown-show mousewheeldisabled" data-toggle="modal" data-target="#myLoginmodal" data-backdrop="static">登陆</a>
                                    </li>
                                    <li><a href="#" data-toggle="modal" data-target="#Purchasing-lists" data-dropback="static">采购政策</a></li>
                                    <li><a href="#" data-toggle="modal" data-target="#System-annumce" data-dropback="static">系统公告</a></li>
                                    <li><a href="#" data-toggle="modal" data-target="#Supplier-help-lists" data-dropback="stactic">帮助</a></li>
                                </ul>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div id="myCarousel" class="carousel slide banner-slide">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <a href="http://www.byd.com/" target='blank'><img src="../images/banner-1.jpg" alt=""/></a>
                    </div>
                    <div class="item">
                        <a href="http://www.byd.com/" target='blank'><img src="../images/banner-2.jpg" alt=""/></a>
                    </div>
                    <div class="item">
                        <a href="http://www.byd.com/" target='blank'><img src="../images/banner-3.jpg" alt=""/></a>
                    </div>
                </div>
            </div>
            <div class="content belogin-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 content-detail">
                            <h4>采购招标公告</h4>
                            <a href="#" class="posi-a" data-toggle="modal" data-target="#Tender" data-dropback="static"><span class="icon-plus more"><i>更多...</i></span></a>
                            <ul class="list-group content-ul">
                                <c:forEach items="${zbHeaders}" var="zbHeaders">
                                    <li>
                                        <a href="" class="mousewheeldisabled" data-toggle="modal" data-target="#myModal_${zbHeaders.zb_header_id}" data-backdrop="static">${zbHeaders.zb_project_description}</a>
                                    </li>
                                </c:forEach>        
                            </ul>
                        </div>
                        <div class="col-md-4 content-detail">
                            <h4>文档下载</h4>
                            <a href="#" class="posi-a" data-toggle="modal" data-target="#documentDown" data-dropback="static"><span class="icon-plus more"><i>更多...</i></span></a>
                            <ul class="list-group content-ul">
                                <li>
                                    <a href="../file/BYD供应商门户新注册操作手册.pdf" target="_blank">BYD供应商门户新注册操作手册</a>
                                </li>
                                <li>
                                    <a href="../file/BYD供应商门户注册后信息自维护操作手册.pdf" target="_blank">BYD供应商门户注册后信息自维护操作手册</a>
                                </li>
                                <li>
                                    <a href="../file/BYD供应商门户报价操作手册(详尽版)-20151101.pptx" target="_blank">BYD供应商门户报价操作手册(详尽版)-20151101</a>
                                </li>
                                <li>
                                    <a href="../file/BYD供应商（批量）报价操作手册_20151215.pptx" target="_blank">BYD供应商（批量）报价操作手册_20151215</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 content-detail">
                            <h4>最新动态</h4>
                            <a href="#" class="posi-a" data-target="#news" data-toggle="modal" data-dropback="static"><span class="icon-plus more"><i>更多...</i></span></a>
                            <ul class="list-group content-ul">
                                <li>
                                    <a href="#">比亚迪大事件</a>
                                </li>
                                <li>
                                    <a href="#">比亚迪大事件</a>
                                </li>
                                <li>
                                    <a href="#">比亚迪大事件</a>
                                </li>
                                <li>
                                    <a href="#">比亚迪大事件</a>
                                </li>
                                <li>
                                    <a href="#">比亚迪大事件</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 nativelink">
                            <h4>相关链接</h4>
                            <ul>
                                <li><a href="http://www.byd.com/" target="_blank">比亚迪官网</a></li>
                                <li><a href="http://www.bydauto.com.cn/" target="_blank">比亚迪汽车官方网站</a></li>
                                <li><a href="http://www.bydauto.com.cn/app/byd.html/" target="_blank">迪粉汇——成就梦想</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <h4 class="division"><img src="../images/division.png" alt=""/><span>比亚迪采购处</span></h4>
                            <ul>
                                <li>在线投诉反馈： <i class="icon-comment-alt text-warning" style="margin-right: 5px;"></i><a href="#" class="removeaddfiletable" data-toggle="modal" data-target="#Complaint" data-backdrop="static" style="margin-right: 5px;">投诉</a> <i class="icon-search" style="margin-right: 5px;"></i><a href="#" data-toggle="modal" data-target="#Reply" data-dropback="static">查询</a></li>
                                <li>采购处联系窗口：0755-89888888-62506</li>
                                <li>采购处联系邮箱：lu.liping@byd.com</li>
                                <li>采购处投诉电话：0755-89888888-66390</li>
                                <li>采购处投诉邮箱：cgts@byd.com</li>
                            </ul>
                        </div>
                        <div class="col-md-4 chatimg">
                            <h4>审查处联系方式</h4>
                            <ul>
                                <li>集团投诉电话：<br/><span style='margin-left: 30px;'>0755-89888888-62299</span></li>
                                <li>集团投诉邮箱：<br/><span style='margin-left: 30px;'>tousu@byd.com</span></li>
                            </ul>
                            <img src="../images/chatshencha.jpg" alt=""/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 模态框-->
        <!--采购招标公告列表-->
        <div class="modal fade provide-modal" id="Tender" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h3 class="modal-title">采购招标公告</h3>
                    </div>
                    <div class="modal-body">
                        <div class="content-detail">
                            <ul class="list-group content-ul">
                                <c:forEach items="${zbHeaders}" var="zbHeaders">
                                    <li>
                                        <a href="" class="mousewheeldisabled" data-toggle="modal" data-target="#myModal_${zbHeaders.zb_header_id}" data-backdrop="static">${zbHeaders.zb_project_description}</a>
                                        <span class="date-annunce pull-right"><fmt:formatDate value='${zbHeaders.zb_creation_date}' pattern='yyyy-MM-dd' /></span>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <!--                        <ul class="pagination pull-right pagination-sm">
                                                    <li><a href="#">上一页</a></li>
                                                    <li class="active"><a href="#">1</a></li>
                                                    <li><a href="#">2</a></li>
                                                    <li><a href="#">3</a></li>
                                                    <li><a href="#">4</a></li>
                                                    <li><a href="#">5</a></li>
                                                    <li><a href="#">下一页</a></li>
                                                </ul>-->
                    </div>
                    <div class="modal-footer purchas-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                    </div>  
                </div>
            </div>
        </div>

        <!--招标公告信息-->
        <form action="" id="">
            <c:forEach items="${zbHeaders}" var="zbHeaders">
                <div class="modal fade provide-modal providesignup-modal addClassfile" id="myModal_${zbHeaders.zb_header_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body pubannou-body">       
                                <div class="purchas">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <div class="purchas-title">
                                        <span class="name">
                                            ${zbHeaders.zb_project_description}
                                        </span>
                                    </div>                              
                                    <div class="closeingdate">
                                        【报名截止时间：<span class="closedate"><fmt:formatDate value='${zbHeaders.zb_enrol_end_date}' pattern='yyyy-MM-dd' /></span>】
                                    </div> 
                                </div>
                                <div class="purchas-info">
                                    <table class="table table-striped table-hover table-bordered">                              
                                        <tbody>
                                            <tr>
                                                <td>项目名称</td>
                                                <td class="last-child-td">${zbHeaders.zb_project_description}</td>
                                            </tr>
                                            <tr>
                                                <td>项目编号</td>
                                                <td class="last-child-td">${zbHeaders.zb_project_no}</td>
                                            </tr>
                                            <tr>
                                                <td>项目所属地区</td>
                                                <td class="last-child-td">${zbHeaders.zb_project_city}</td>
                                            </tr>
                                            <tr>
                                                <td>购买招标文件时间</td>
                                                <td class="last-child-td"><fmt:formatDate value='${zbHeaders.zb_project_date}' pattern='yyyy-MM-dd' /></td>
                                            </tr>
                                            <tr>
                                                <td>购买招标文件地点</td>
                                                <td class="last-child-td">${zbHeaders.zb_project_address}</td>
                                            </tr>
                                            <tr>
                                                <td>招标文件售价</td>
                                                <td class="last-child-td">${zbHeaders.zb_flie_je}</td>
                                            </tr>
                                            <tr>
                                                <td>投标保证金</td>
                                                <td class="last-child-td">${zbHeaders.zb_vendor_bond}</td>
                                            </tr>
                                            <tr>
                                                <td>法人名称</td>
                                                <td class="last-child-td">${zbHeaders.zb_corporation}</td>
                                            </tr>
                                            <tr>
                                                <td>联系人</td>
                                                <td class="last-child-td">${zbHeaders.zb_contactor}</td>
                                            </tr>                                   
                                        </tbody>
                                    </table>
                                    <table class="table table-striped table-hover table-bordered col-md-6">                              
                                        <tbody>
                                            <tr>
                                                <td>联系电话</td>
                                                <td class="last-child-td">${zbHeaders.zb_tel}</td>
                                            </tr>
                                            <tr>
                                                <td>邮件</td>
                                                <td class="last-child-td">${zbHeaders.zb_mail}</td>
                                            </tr>
                                            <tr>
                                                <td>答疑开始时间</td>
                                                <td class="last-child-td"><fmt:formatDate value='${zbHeaders.zb_answer_date}' pattern='yyyy-MM-dd' /></td>
                                            </tr>
                                            <tr>
                                                <td>投标开始时间</td>
                                                <td class="last-child-td"><fmt:formatDate value='${zbHeaders.zb_bid_start_date}' pattern='yyyy-MM-dd' /></td>
                                            </tr>
                                            <tr>
                                                <td>投标截止时间</td>
                                                <td class="last-child-td"><fmt:formatDate value='${zbHeaders.zb_bid_end_date}' pattern='yyyy-MM-dd' /></td>
                                            </tr>
                                            <tr>
                                                <td>开标时间</td>
                                                <td class="last-child-td"><fmt:formatDate value='${zbHeaders.zb_open_date}' pattern='yyyy-MM-dd' /></td>
                                            </tr>
                                            <tr>
                                                <td>申诉时间</td>
                                                <td class="last-child-td"><fmt:formatDate value='${zbHeaders.zb_appeal_date}' pattern='yyyy-MM-dd' /></td>
                                            </tr>
                                            <tr>
                                                <td>报名截止时间</td>
                                                <td class="last-child-td"><fmt:formatDate value='${zbHeaders.zb_enrol_end_date}' pattern='yyyy-MM-dd' /></td>
                                            </tr>
                                            <tr>
                                                <td>备注</td>
                                                <td class="last-child-td">${zbHeaders.zb_memo}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="purchas-Enclosure">
                                        附件：
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer purchas-footer">
                                <div class="agree">
                                    <input type="checkbox" id="agreefor"/><label for="agreefor">我司同意遵守 <a href="#" class="text-primary">《比亚迪供应商道德行为规范》</label></a>
                                </div>
                                <button type="button" class="btn btn-warning singupbtn btn-sm" data-toggle="modal" data-dropback="static">点击参加报名</button>
                                <button type="button" class="btn btn-default btn-sm showclose" data-dismiss="modal">关闭</button>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </form>
        <!--登录框-->
        <form id="form" action="${serverName}OA_HTML/Login.jsp">
            <div class="modal fade login-modal" id="myLoginmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                        </div>
                        <div class="modal-body">
                            <ul class="dropdown-win">
                                <li>
                                    <b>登陆账号:</b>
                                    <div class="has-feedback feedback-count">
                                        <input type="text" class="form-control" placeholder="请输入您的用户名" id="userName" name="userName"/>
                                        <span class="icon-user form-control-feedback text-primary"></span>
                                    </div>
                                </li>
                                <li>
                                    <b>登录密码:</b>
                                    <div class="has-feedback feedback-count">
                                        <input type="password" placeholder="请输入您的登录密码" class="form-control" id="password" name="password"
                                               />
                                        <span class="icon-lock form-control-feedback text-primary"></span>
                                    </div>
                                </li>
                                <li class="forgotpassword"><a href="${serverName}OA_HTML/RF.jsp?function_id=28846">忘记密码</a></li>
                                <li style="clear:both;padding:0;">
                                    <b>验证码:</b>
                                    <div class="feedback-count">
                                        <input type="text" class="form-control" style="width:60px;display:inline-block;"/>
                                        <span class="changenum" style="text-align: center;">1 9 9 0</span>
                                        <a href="" class="changanother">换一张</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="modal-footer login-modal-footer">
                            <input type="submit" class="login btn btn-warning form-control" value="登陆">
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <!--投诉反馈-->
        <form id="" action="" method="action"  enctype="multipart/form-data">
            <div class="modal fade provide-modal Complaint-modal addClassfile" id="Complaint" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title" id="myModalLabel">投诉与反馈</h3>
                        </div>
                        <div class="modal-body">       
                            <table class="table-striped table-bordered table-responsive Complaint-table">
                                <tr>
                                    <td><span class="text-danger">*</span>类型:</td>
                                    <td style="text-align: left;">
                                        <select>
                                            <option>流程规范</option>
                                            <option>个人</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="text-danger">*</span>标题:</td>
                                    <td><input type="text" placeholder="请输入投诉标题"/></td>
                                </tr>
                                <tr>
                                    <td><span class="text-danger">*</span>内容:</td>
                                    <td><textarea cols="5" rows="6" placeholder="请输入投诉内容"></textarea></td>
                                </tr>
                                <tr>
                                    <td>公司名称:</td>
                                    <td><input type="text" placeholder="请输入公司名称"/></td>
                                </tr>
                                <tr>
                                    <td>联系人:</td>
                                    <td><input type="text" placeholder="请输入联系人姓名"/></td>
                                </tr>
                                <tr>
                                    <td>联系电话:</td>
                                    <td><input type="text" placeholder="请输入联系电话"/></td>
                                </tr>
                                <tr>
                                    <td>E-mail:</td>
                                    <td><input type="text" placeholder="请输入邮箱地址"/></td>
                                </tr>
                            </table>
                            <table class="table table-striped table-bordered table-responsice addfiletable">
                                <tbody>
                                    <tr>
<!--                                        <td>
                                            <input type="file" multiple="multiple" name="fileinput" class="addfiletable"/>
                                        </td>-->
                                        <td>
                                            <input type="text" placeholder="请输入附件名"/>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-default btn-sm addfilebtn"><span class="icon-plus"></span> 增加附件</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <input type="reset" value="重置" class="btn btn-danger btn-sm"/>
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                            <input class="btn btn-warning singupbtn btn-sm" value="提交反馈" type="submit">
                        </div>  
                    </div>
                </div>
            </div>
        </form>



        <!--系统公告列表-->
        <div class="modal fade provide-modal" id="System-annumce" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h3 class="modal-title">系统公告</h3>
                    </div>
                    <div class="modal-body">
                        <div class="content-detail">
                            <ul class="list-group content-ul">
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#announcement" data-dropback="static">新版供应商门户上线通知</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#announcement" data-dropback="static">新版供应商门户上线通知</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#announcement" data-dropback="static">新版供应商门户上线通知</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#announcement" data-dropback="static">新版供应商门户上线通知</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#announcement" data-dropback="static">新版供应商门户上线通知</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                            </ul>
                        </div>
                        <ul class="pagination pull-right pagination-sm">
                            <li><a href="#">上一页</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">下一页</a></li>
                        </ul>
                    </div>
                    <div class="modal-footer purchas-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                    </div>  
                </div>
            </div>
        </div>

        <!--系统公告-->
        <form id="" action="">
            <div class="modal fade provide-modal" id="announcement" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title">系统公告详情</h3>
                        </div>
                        <div class="modal-body">
                            <h4>【公告/通知】 +新版供应商门户上线通知</h4>
                            <table class="table table-striped table-bordered table-responsive">                                
                                <tr>
                                    <td><span class="text-danger">*</span>标题</td>
                                    <td>
                                        新版供应商门户上线通知
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="text-danger">*</span>内容</td>
                                    <td class="longtd">
                                        新版供应商门户上线通知新版供应商门户上线通知新版供应商门户上线通知新版供应商门户上线通知新版供应商门户上线通知新版供应商门户上线通知
                                    </td>
                                </tr>
                                <tr>
                                    <td>发布日期</td>
                                    <td>
                                        2016-02-02
                                    </td>
                                </tr>
                                <tr>
                                    <td>附件</td>
                                    <td style="text-align: left;">

                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>  
                    </div>
                </div>
            </div>
        </form>

        <!--反馈回复情况-->
        <form id="" action="">
            <div class="modal fade provide-modal samenum" id="Reply" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title">投诉处理(回复)情况查询</h3>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <ul>
                                        <li>
                                            <span>标题: </span><input type="text"/>
                                        </li>
                                        <li>
                                            <span>类型: </span><input type="text"/>
                                        </li>                                        
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <ul>
                                        <li>
                                            <span>发布日期: </span><input type="text" readonly onmousedown="WdatePicker({lang: 'zh_CN', dateFmt: 'yyyy-MM-dd'})" class="duringdate"/> 至 <input type="text" readonly onmousedown="WdatePicker({lang: 'zh_CN', dateFmt: 'yyyy-MM-dd'})" class="duringdate"/>
                                        </li>
                                        <li>
                                            <span>投诉/反馈人: </span><input type="text"/>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <div class="buttons pull-right">
                                        <button class="btn btn-default btn-sm">
                                            <span class="icon-search"></span>
                                            搜索
                                        </button>
                                        <input type="reset" class="btn btn-danger btn-sm" placeholder="重置"/>
                                    </div>
                                </div>                            
                            </div>
                            <div class="over-long">
                                <table class="table table-bordered table-striped table-responsive">
                                    <thead>
                                        <tr>
                                            <th>类型</th>
                                            <th>标题</th>
                                            <th>投诉人</th>
                                            <th>日期</th>
                                            <th>是否回复</th>
                                            <th>回复情况</th>
                                            <th>回复时间</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>个人</td>
                                            <td>网站系统不好用</td>
                                            <td>刘晓华</td>
                                            <td>2099-01-23</td>
                                            <td>否</td>
                                            <td>正在进行中</td>
                                            <td>2033-20-12</td>
                                            <td>
                                                <button type="button" class="see btn btn-default btn-sm" data-toggle="modal" data-dropback="static" data-target="#Reply_detail">查看</button>
                                                <button type="button" class="remove btn btn-default btn-sm">撤销</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>个人</td>
                                            <td>网站系统不好用</td>
                                            <td>刘晓华</td>
                                            <td>2099-01-23</td>
                                            <td>否</td>
                                            <td>正在进行中</td>
                                            <td>2033-20-12</td>
                                            <td>
                                                <button type="button" class="see btn btn-default btn-sm" data-toggle="modal" data-dropback="static" data-target="#Reply_detail">查看</button>
                                                <button type="button" class="remove btn btn-default btn-sm">撤销</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <ul class="pagination pull-right pagination-sm">
                                <li><a href="#">上一页</a></li>
                                <li  class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">下一页</a></li>
                            </ul>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>  
                    </div>
                </div>
            </div>
        </form>

        <!--投诉反馈详情查看-->
        <form id="" action="" method="action"  enctype="multipart/form-data">
            <div class="modal fade provide-modal Complaint-modal" id="Reply_detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title" id="myModalLabel">投诉与反馈详情</h3>
                        </div>
                        <div class="modal-body">       
                            <table class="table-striped table-bordered table-responsive">
                                <tr>
                                    <td>类型</td>
                                    <td>
                                        个人
                                    </td>
                                </tr>
                                <tr>
                                    <td>标题</td>
                                    <td>网站不好用</td>
                                </tr>
                                <tr>
                                    <td>内容</td>
                                    <td>不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不好用</td>
                                </tr>
                                <tr>
                                    <td>是否回复</td>
                                    <td>否</td>
                                </tr>
                                <tr>
                                    <td>回复情况</td>
                                    <td>尽快处理</td>
                                </tr>
                                <tr>
                                    <td>回复日期</td>
                                    <td>2033-01-02</td>
                                </tr>                                
                                <tr>
                                    <td>附件:</td>
                                    <td>
                                    </td>
                                </tr>                                
                            </table>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>  
                    </div>
                </div>
            </div>
        </form>

        <!--采购政策查看列表-->
        <form id="" action="">
            <div class="modal fade provide-modal" id="Purchasing-lists" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal over-long">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title">采购政策</h3>
                        </div>
                        <div class="modal-body">
                            <table class="table table-striped table-bordered table-responsive Complaint-table">  
                                <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>标题</th>
                                        <th>发布人</th>
                                        <th>日期</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>道德行为规范</td>
                                        <td>刘晓华</td>
                                        <td>2016-01-01</td>
                                        <td>
                                            <button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#Purchasing" data-dropback="static">查看</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>道德行为规范</td>
                                        <td>刘晓华</td>
                                        <td>2016-01-01</td>
                                        <td>
                                            <button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#Purchasing" data-dropback="static">查看</button>                                                
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>  
                    </div>
                </div>
            </div>
        </form>

        <!--采购政策查看详情-->
        <form id="" action="">
            <div class="modal fade provide-modal" id="Purchasing" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title">采购政策查看</h3>
                        </div>
                        <div class="modal-body">
                            <table class="table table-striped table-bordered table-responsive Complaint-table">                                
                                <tr>
                                    <td>标题</td>
                                    <td>
                                        <input type="text" readonly value="道德行为规范"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>内容</td>
                                    <td class="longtd">
                                        <textarea value="" readonly/>有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德有道德</textarea>                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>发布人</td>
                                    <td>
                                        <input type="text" value="刘晓华" readonly/>                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td>发布日期</td>
                                    <td>
                                        <input type="text" readonly value="2012-01-01"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>附件</td>
                                    <td style="text-align: left;">

                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>  
                    </div>
                </div>
            </div>
        </form>

        <!--供应商帮助查看列表-->
        <form id="" action="">
            <div class="modal fade provide-modal" id="Supplier-help-lists" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal over-long">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title">供应商帮助</h3>
                        </div>
                        <div class="modal-body">
                            <table class="table table-striped table-bordered table-responsive Complaint-table">  
                                <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>标题</th>
                                        <th>发布人</th>
                                        <th>日期</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>怎么使用</td>
                                        <td>刘晓华</td>
                                        <td>2016-01-01</td>
                                        <td>
                                            <button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#Supplier-help" data-dropback="static">查看</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>怎么使用</td>
                                        <td>刘晓华</td>
                                        <td>2016-01-01</td>
                                        <td>
                                            <button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#Supplier-help" data-dropback="static">查看</button>                                                
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>  
                    </div>
                </div>
            </div>
        </form>

        <!--采购政策查看详情-->
        <form id="" action="">
            <div class="modal fade provide-modal" id="Supplier-help" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title">帮助查看</h3>
                        </div>
                        <div class="modal-body">
                            <table class="table table-striped table-bordered table-responsive Complaint-table">                                
                                <tr>
                                    <td>标题</td>
                                    <td>
                                        <input type="text" readonly value="如何使用"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>内容</td>
                                    <td class="longtd">
                                        <textarea value="" readonly/>怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用怎么用</textarea>                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>发布人</td>
                                    <td>
                                        <input type="text" value="刘晓华" readonly/>                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td>发布日期</td>
                                    <td>
                                        <input type="text" readonly value="2012-01-01"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>附件</td>
                                    <td style="text-align: left;">

                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>  
                    </div>
                </div>
            </div>
        </form>

        <!--最新动态列表-->
        <div class="modal fade provide-modal" id="news" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h3 class="modal-title">最新动态</h3>
                    </div>
                    <div class="modal-body">
                        <div class="content-detail">
                            <ul class="list-group content-ul">
                                <li>
                                    <a href="#">比亚迪大事件</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#">比亚迪大事件</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#">比亚迪大事件</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#">比亚迪大事件</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#">比亚迪大事件</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                            </ul>
                        </div>
                        <ul class="pagination pull-right pagination-sm">
                            <li><a href="#">上一页</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">下一页</a></li>
                        </ul>
                    </div>
                    <div class="modal-footer purchas-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                    </div>  
                </div>
            </div>
        </div>

        <!--文档下载列表-->
        <div class="modal fade provide-modal" id="documentDown" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h3 class="modal-title">文档下载</h3>
                    </div>
                    <div class="modal-body">
                        <div class="content-detail">
                            <ul class="list-group content-ul">
                                <li>
                                    <a href="#">BYD供应商门户新注册操作手册</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#">BYD供应商门户注册后信息自维护操作手册</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#">BYD供应商门户报价操作手册(详尽版)-20151101</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#">BYD供应商（批量）报价操作手册_20151215</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                                <li>
                                    <a href="#">BYD供应商（批量）报价操作手册_20151215</a>
                                    <span class="date-annunce pull-right">2015-01-02</span>
                                </li>
                            </ul>
                        </div>
                        <ul class="pagination pull-right pagination-sm">
                            <li><a href="#">上一页</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">下一页</a></li>
                        </ul>
                    </div>
                    <div class="modal-footer purchas-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                    </div>  
                </div>
            </div>
        </div>

        <script src="../js/jquery-1.11.3.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/main.js"></script>
        <script src="../js/My97DatePicker/WdatePicker.js"></script>
        <script src="../js/webuploader.nolog.min.js"></script>
        <script>
            $(function() {
                //            滚动图自动轮播
                var starcarousel = function() {
                    $(".carousel").carousel({interval: 5000});
                };
                starcarousel();
                //            禁用轮播
                var stopcarousel = function() {
                    $(".carousel").carousel("pause");
                };

                //            点击禁用轮播
                $("a[data-toggle='modal'],button[data-toggle='modal']").on("click", function() {
                    stopcarousel();
                });
                //            点击关闭按钮回复轮播图运行
                $("button[data-dismiss='modal']").on("click", function() {
                    starcarousel();
                });

//                banner img图居中显示
                function centerImg() {
                    var screenWidth = document.body.offsetWidth;
                    var carouselImg = $(".carousel-inner").find("img");
                    var imgWidth = carouselImg.width();
                    carouselImg.css({"margin-left": "-" + (imgWidth - screenWidth) / 2 + "px"});
                }

                centerImg();

                $(window).resize(function() {
                    centerImg();
                });
                
            });
        </script>
    </body>
</html>