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
        <link rel="stylesheet" href="../css/style.css"/>
        <link rel="stylesheet" href="../css/bootstrap-datetimepicker.min.css"/>
        <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
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
                                    <li><a href="<%=request.getContextPath()%>/SrmHome/Login.jsp">首页</a></li>
                                    <li><a href="../protocol/RegisterProtocol.jsp" target="_blank">注册</a></li>
                                    <li class="dropdown dropdown-li">
                                        <a href="javascript:void(0);" class="showloginmodal showmodala dropdown-show mousewheeldisabled">登陆</a>
                                    </li>
                                    <li><a href="javascript:void(0);" class="showsystemmodal showmodala">系统公告</a></li>
                                    <li><a href="javascript:void(0);" class="showhelpmodalpa showmodala helplink">帮助</a></li>
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
                        <a href="http://www.byd.cn/" target='_blank'><img src="../images/banner-1.jpg" alt=""/></a>
                    </div>
                    <div class="item">
                        <a href="http://www.byd.cn/" target='blank'><img src="../images/banner-2.jpg" alt=""/></a>
                    </div>
                    <div class="item">
                        <a href="http://www.byd.cn/" target='blank'><img src="../images/banner-3.jpg" alt=""/></a>
                    </div>
                </div>
            </div>
            <div class="content belogin-content addnewsparent">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 content-detail notice">
                            <h4>采购招标公告</h4>
                            <a href="javascript:void(0);" class="showannoumcementmodal showmodala posi-a"><span class="icon-plus more"><i>更多...</i></span></a>
                            <ul class="list-group content-ul">
                            </ul>
                        </div>
                        <div class="col-md-4 content-detail systemup">
                            <h4>采购政策</h4>
                            <a href="javascript:void(0);" class="showpolicymodal showmodala policylink posi-a"><span class="icon-plus more"><i>更多...</i></span></a>
                            <ul class="list-group content-ul">
                            </ul>
                        </div>
                        <div class="col-md-4 content-detail news">
                            <h4>比亚迪最新动态</h4>
                            <a href="javascript:void(0);" class="shownewsmodal showmodala posi-a"><span class="icon-plus more"><i>更多...</i></span></a>
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
                                <li><a href="http://www.byd.cn/" target="_blank">比亚迪官网</a></li>
                                <li><a href="http://www.bydauto.com.cn/" target="_blank">比亚迪汽车官方网站</a></li>
                                <li><a href="http://club.bydauto.com.cn/portal.php" target="_blank">迪粉汇——成就梦想</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <h4 class="division"><img src="../images/division.png" alt=""/><span>比亚迪采购处</span></h4>
                            <ul>
                                <li>在线投诉反馈： <i class="icon-comment-alt text-warning" style="margin-right: 5px;"></i><a href="javascript:void(0);" class="showcpmplaintmodal showmodala removeaddfiletable" style="margin-right: 5px;">投诉</a> <i class="icon-search" style="margin-right: 5px;"></i><a href="javascript:void(0);" class="showreplyquerymodal showmodala reloadquery">查询</a></li>
                                <li>采购处联系窗口：0755-89888888-62506</li>
                                <li>采购处联系邮箱：lu.liping@byd.com</li>
                                <li>采购处投诉电话：0755-89888888-66390</li>
                                <li>采购处投诉邮箱：cgts@byd.com</li>
                            </ul>
                        </div>
                        <div class="col-md-4 chatimg">
                            <h4>审查处联系方式</h4>
                            <ul>
                                <li>集团投诉电话：<br/><span>0755-89888888-62299</span></li>
                                <li>集团投诉邮箱：<br/><span>tousu@byd.com</span></li>
                            </ul>
                            <img src="../images/chatshencha.jpg" alt=""/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 模态框-->
        <!--采购招标公告列表-->
        <div class="modalvisble showannoumcementmodal showmodal provide-modal annoumcementlist" id="Tender">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h3 class="modal-title">采购招标公告</h3>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer purchas-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

        <!--登录框-->
        <form id="form" action="${serverName}OA_HTML/Login.jsp">
            <div class="login-modal showloginmodal showmodal" id="myLoginmodal">
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
                            </ul>
                        </div>
                        <div class="modal-footer login-modal-footer">
                            <input type="submit" class="login btn btn-warning form-control" value="登陆">
                            <a href="${serverName}OA_HTML/RF.jsp?function_id=28846" class="forgotpassword">忘记密码</a>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <!--投诉反馈-->
        <form id="complaintForm" action="" method="post" enctype="multipart/form-data">
            <div class="modalvisble provide-modal Complaint-modal showcpmplaintmodal showmodal compaintmodal2" id="Complaint">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title" id="myModalLabel">投诉与反馈</h3>
                        </div>
                        <div class="modal-body">  
                            <span class="text-complaint">本投诉窗口由采购处总经理直属的审核管理部门统一管理，我们将承诺保密投诉人信息，请务必保证投诉事项真实性。</span>
                            <table class="table-striped table-bordered table-responsive Complaint-table">
                                <tr>
                                    <td class="firsttd">投诉反馈类型:</td>
                                    <td style="text-align: left;padding-left: 12px;">投诉: <input type="radio" name="comp_feed_type" value="投诉" checked class="comfeedradio comradio"/> 反馈: <input type="radio" name="comp_feed_type" value="反馈" class="comfeedradio feedradio"/></td>
                                </tr>
                                <tr>
                                    <td class="firsttd"><span class="text-danger">*</span>类型:</td>
                                    <td style="text-align: left;">
                                        <select name="ts_type" id="ts_type">
                                            <option>违反公平公正原则</option>
                                            <option>收受财物</option>
                                            <option>损害比亚迪公司利益</option>
                                            <option>其他</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd"><span class="text-danger">*</span>标题:</td>
                                    <td><input type="text" placeholder="请输入投诉标题" name="ts_title" id="ts_title" class="required"/></td>
                                </tr>
                                <tr>
                                    <td class="firsttd"><span class="text-danger">*</span>内容:</td>
                                    <td><textarea class="required" cols="5" rows="6" placeholder="请输入投诉内容" name="ts_description" id="ts_description"></textarea></td>
                                </tr>
                                <tr>
                                    <td class="firsttd">公司名称:</td>
                                    <td><input type="text" placeholder="请输入公司名称" name="ts_company" id="ts_company"/></td>
                                </tr>
                                <tr>
                                    <td class="firsttd">联系人:</td>
                                    <td><input type="text" placeholder="请输入联系人姓名" name="ts_contact" id="ts_contact"/></td>
                                </tr>
                                <tr>
                                    <td class="firsttd"><span class="text-danger">*</span>联系电话:</td>
                                    <td><input type="text" placeholder="请输入联系电话" name="ts_tel" id="ts_tel" class="required telnumsvalidate"/></td>
                                </tr>
                                <tr>
                                    <td class="firsttd"><span class="text-danger">*</span>E-mail:</td>
                                    <td><input type="text" placeholder="请输入邮箱地址" name="ts_mail" id="ts_mail" class="required email"/></td>
                                </tr>
                            </table>
                            <table class="table table-striped table-bordered table-responsice addfiletable">
                                <tbody>
                                    <tr>
                                        <td style="width:19.8%;" class="firsttd">
                                            上传佐证资料
                                        </td>
                                        <td>
                                            <span class="changefilebtn">
                                                <input type="file" name="tsfileinput" id="ts_file_input" class="addfiletable" />
                                                <button type="button" onclick="upload_ts_file()" class="submitfile">上传</button>
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <input type="reset" value="重置" class="btn btn-danger btn-sm"/>
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                            <input class="btn btn-warning singupbtn btn-sm" value="提交反馈" type="button">
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!--摸态框：提示用户投诉成功编号，以便查询-->
        <div class="showsuccessmodalcode"  id="show_ts_id_title">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title">投诉成功</h4>
                    </div>
                    <div class="modal-body">
                        <!--编号显示-->
                        <p>请记住您的投诉回执编号<b id="showTsId" style="color:red;font-size: 24px;vertical-align: initial;"></b>，以便查询投诉反馈情况</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->


        <!--系统公告列表-->
        <div class="modalvisble provide-modal showsystemmodal showmodal systemshowlist" id="System-annumce">
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
                            </ul>
                        </div>
                    </div>
                    <div class="modal-footer purchas-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

        <!--系统公告-->
        <c:forEach items="${tzHeaders}" var="tzHeaders">
            <div class="readingmodal provide-modal showannoucement_${tzHeaders.tz_header_id} showmodal" id="announcement">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h4>【公告/通知】 +${tzHeaders.tz_title}</h4>
                        </div>
                        <div class="modal-body">
                            <div class="modalbody-title">
                                <div class="row">
                                    <div class="col-md-6 text-right">
                                        发布人 : <span class="name">${tzHeaders.tz_created_person}</span>
                                    </div>
                                    <div class="col-md-6 text-left">
                                        发布时间 : <span class="date"><fmt:formatDate value='${tzHeaders.create_date}' pattern='yyyy-MM-dd' /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="modalbody-content content-detail">
                                <p>${tzHeaders.tz_description}</p>
                            </div>
                            <div class="files">
                                <c:choose>
                                    <c:when test="${tzHeaders.attribute1 !='' && tzHeaders.attribute1 != null}">
                                        附件：<span class="filedisplay"><a href="${tzHeaders.attribute1}" target="blank">${tzHeaders.attribute2}</a></span>
                                    </c:when>
                                    <c:otherwise>
                                        附件：<span>无</span>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

        <!--反馈回复情况-->
        <form id="" action="">
            <div class="modalvisble showreplyquerymodal showmodal provide-modal samenum" id="Reply">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title">投诉处理(回复)情况查询</h3>
                        </div>
                        <div class="modal-body">
                            <div class="row checkinputs">
                                <div class="col-md-12">
                                    <ul class="queryul">
                                        <li><span>回执编码: </span><input type="text" name="tts_title" id="tts_code"/></li>
                                        <li style="padding-left: 25px;">
                                            <button class="btn btn-default btn-sm" id="ts_find">
                                                <span class="icon-search query-search"></span>
                                                搜索
                                            </button>
                                            <input type="reset" class="btn btn-danger btn-sm" placeholder="重置"/>
                                        </li>
                                    </ul>
                                </div>                            
                            </div>
                            <div class="over-long">
                                <table class="table table-bordered table-striped table-responsive">
                                    <thead>
                                        <tr>
                                            <th>投诉反馈类型</th>
                                            <th>类型</th>
                                            <th>标题</th>
                                            <th>投诉人</th>
                                            <th>日期</th>
                                            <th>是否回复</th>
                                            <th>回复时间</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>  
                    </div>
                </div>
            </div>
        </form>

        <!--投诉反馈详情查看-->
        <form id="" action="" method="post">
            <c:forEach items="${tsHeaders}" var="tsHeaders">
            <div class="provide-modal Complaint-modal showfeedbackmodal_${tsHeaders.ts_header_id} showmodal" id="Reply_detail">
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
                                        ${tsHeaders.ts_type}
                                    </td>
                                </tr>
                                <tr>
                                    <td>标题</td>
                                    <td>${tsHeaders.ts_title}</td>
                                </tr>
                                <tr>
                                    <td>内容</td>
                                    <td>${tsHeaders.ts_description}</td>
                                </tr>
                                <tr>
                                    <td>是否回复</td>
                                    <c:choose>
                                        <c:when test="${tsHeaders.ts_reply !='' && tsHeaders.ts_reply != null}">
                                            <td>${tsHeaders.ts_reply}</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>否</td>
                                        </c:otherwise>
                                    </c:choose>
                                </tr>
                                <tr>
                                    <td>回复情况</td>
                                    <c:choose>
                                        <c:when test="${tsHeaders.ts_reply_contact !='' && tsHeaders.ts_reply_contact != null}">
                                            <td>${tsHeaders.ts_reply_contact}</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>否</td>
                                        </c:otherwise>
                                    </c:choose>
                                </tr>
                                <tr>
                                    <td>回复日期</td>
                                    <td><fmt:formatDate value='${tsHeaders.ts_to_time}' pattern='yyyy-MM-dd' /></td>
                                </tr>                                
                            </table>
                            <div class="files">
                                附件:
                                <span class="filedisplay"></span>
                            </div>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>  
                    </div>
                </div>
            </div>
            </c:forEach>
        </form>

        <!--采购政策查看列表-->
        <form id="" action="">
            <div class="modalvisble provide-modal showpolicymodal showmodal systemup" id="Purchasing-lists">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal over-long">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title">采购政策</h3>
                        </div>
                        <div class="modal-body">
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
            <div class="provide-modal showpolicy showmodal readingmodal" id="Purchasing">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h4 class="modal-title"></h4>
                        </div>
                        <div class="modal-body">
                            <div class="modalbody-title">
                                <div class="row">
                                    <div class="col-md-6 text-right">
                                        发布人 : <span class="name"></span>
                                    </div>
                                    <div class="col-md-6 text-left">
                                        发布时间 : <span class="date"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="modalbody-content content-detail">
                            </div>
                            <div class="files">
                                附件：<span class="filedisplay"></span>
                            </div>
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
            <div class="modalvisble showhelpmodalpa showmodal provide-modal" id="Supplier-help-lists">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal over-long">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title">供应商帮助</h3>
                        </div>
                        <div class="modal-body">
                            <ul class="list-group content-ul">
                            </ul>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div> 
                    </div>
                </div>
            </div>
        </form>

        <!--帮助查看详情-->
        <div class="provide-modal showhelpmodal showmodal" id="Supplier-help">
            <div class="modal-dialog">
                <div class="modal-content singup-modal">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">
                        <div class="modalbody-title">
                            <div class="row">
                                <div class="col-md-6 text-right">
                                    发布人 : <span class="name"></span>
                                </div>
                                <div class="col-md-6 text-left">
                                    发布时间 : <span class="date"></span>
                                </div>
                            </div>
                        </div>
                        <div class="modalbody-content">
                        </div>
                        <div class="files">
                            附件：<span class="filedisplay"></span>
                        </div>
                    </div>
                    <div class="modal-footer purchas-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                    </div> 
                </div>
            </div>
        </div>

        <!--最新动态列表-->
        <div class="provide-modal addpages addnewsmodal shownewsmodal showmodal" id="news">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h3 class="modal-title">最新动态</h3>
                    </div>
                    <div class="modal-body">
                        <div class="content-detail news">
                        </div>
                    </div>
                    <div class="modal-footer purchas-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!--道德行为规范-->
        <div class="provide-modal showmoralconductmodal showmodal readingmodal daodexinwei">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h3 class="modal-title">比亚迪公司供应商道德行为规范</h3>
                    </div>
                    <div class="modal-body">
                        <div class="content-detail">
                            <p>比亚迪公司的发展目标和核心价值决定了和比亚迪公司合作的供应商必须具有良好的商业道德。比亚迪公司坚信，合作双方遵守商业道德，是符合比亚迪公司及其供应商双方利益的。为了让所有供应商清晰了解我们的立场，比亚迪公司制订了“比亚迪公司供应商道德行为规范”（以下简称道德行为规范）。</p>
                            <p>已同比亚迪公司建立合作关系的供应商以及正在寻求与比亚迪公司建立合作关系的供应商都应遵守道德行为规范。该道德行为规范是比亚迪公司的一项基本要求，供应商对道德行为规范的遵守情况将作为比亚迪公司对供应商进行等级评定的重要依据。</p>
                            <p>比亚迪公司希望通过与供应商之间建设性的对话和的合作来共同维护此道德行为规范，并借此维护我们相互之间的利益。</p>
                            <p>1. 供应商不得提供虚假资料谋取中标、成交。</p>
                            <p>2. 供应商不得采取不正当手段诋毁、排挤其他供应商。</p>
                            <p>3. 供应商不得与比亚迪公司员工、其他供应商恶意串通谋取中标、成交。</p>
                            <p>4. 供应商不得向比亚迪公司员工行贿或者提供其他不正当利益。</p>
                            <p>5. 供应商不得向比亚迪公司员工探询业务合作需要之外的任何比亚迪公司商业机密或其他未公开的企业信息。</p>
                            <p>6. 供应商不得带领任何与比亚迪公司有竞争关系的第三方人员访问比亚迪公司，窥探比亚迪公司的企业机密。</p>
                            <p>7. 供应商未经比亚迪公司允许, 不得以任何形式向第三方披露从比亚迪公司获得的关于比亚迪公司的任何信息、资料等（比亚迪公司已经公开发布的信息除外）。</p>
                            <p>8. 供应商不得私下宴请比亚迪公司员工；接受比亚迪公司员工商务拜访时，如确因工作时间的限制，供应商只能安排简单的工作便餐。</p>
                            <p>9. 供应商不得向比亚迪公司员工及其家属成员馈赠50元以上的礼品及任何金额的礼金、购物卡、有价证券等物品。</p>
                            <p>10. 供应商不得组织和安排比亚迪公司相关人员参加旅游等非商务性娱乐活动。</p>
                            <p>11. 供应商不得随意聘用比亚迪公司现职人员，如果确属供应商急需人才，应与比亚迪公司协商并经过比亚迪公司同意后，方可聘用。</p>
                            <p>12. 供应商不得聘用和其有直接业务关系的比亚迪公司员工的直系亲属在本公司任职；如果确属供应商急需人才，应给予比亚迪公司相关聘用信息。</p>
                            <p>13. 供应商发现比亚迪公司采购人员在采购活动中有索要财物等不正当行为，应及时向比亚迪公司反映。</p>
                            <p>14. 供应商不得拒绝比亚迪公司有关部门监督检查，不得向比亚迪公司有关部门提供虚假情况。</p>
                            <p>供应商违反以上道德行为规范条款的，比亚迪公司将根据供应商的违规严重程度，对供应商处以警告、罚款、撤消采购订单/交货通知单、终止已经生效的采购合同/协议、在一个月至三年内取消供货资格等处罚。</p>
                            <hr>
                            <div class="hs">
                                <h3>比亚迪公司对供应商违反</h3>
                                <h3>《比亚迪公司供应商道德行为规范》的处罚细则</h3>
                            </div>
                            <p>供应商违反《比亚迪公司供应商道德行为规范》（以下简称道德行为规范）相关条款的，比亚迪公司将根据供应商的违规严重程度，对供应商从轻到重处以（同一条款下，允许多罚并行）：警告、罚款、撤消采购订单/交货通知单、终止已经生效的采购合同/协议、在一个月至三年内取消供货资格等处罚。处罚细则如下：</p>
                            <p>1. 供应商违反道德行为规范第1、2、3条款的，比亚迪公司可给予供应商罚款（采购金额的5%-10%，交纳投标保证金或履约保证金的以相应金额为准）、撤消采购订单/交货通知单、终止已经生效的采购合同/协议、在一个月至三年内取消供货资格等处罚。</p>
                            <p>2. 供应商违反道德行为规范第4条款的，比亚迪公司可给予供应商警告、罚款（采购金额的5%-10%）、撤消采购订单/交货通知单、终止已经生效的采购合同/协议、在一个月至三年内取消供货资格等处罚。</p>
                            <p>3. 供应商违反道德行为规范第5条款的，比亚迪公司可给予供应商警告、罚款（1000元-5000元）等处罚。</p>
                            <p>4. 供应商违反道德行为规范第6、7条款的，比亚迪公司可给予供应商警告、罚款（1000元-5000元）等处罚。</p>
                            <p>5. 供应商违反道德行为规范第8条款的，比亚迪公司可给予供应商警告处罚。</p>
                            <p>6. 供应商违反道德行为规范第9、10条款的，比亚迪公司可给予供应商警告、罚款（1000元-5000元）等处罚。</p>
                            <p>7. 供应商违反道德行为规范第11条款的，比亚迪公司可给予供应商罚款（5000元-10000元）、撤消采购订单/交货通知单、终止已经生效的采购合同/协议、在一个月至三年内取消供货资格等处罚。</p>
                            <p>8.，供应商违反道德行为规范第12、13条款的，比亚迪公司可给予供应商警告、罚款（1000元-5000元）等处罚。</p>
                            <p>9. 供应商违反道德行为规范第14条款的，比亚迪公司可给予供应商罚款（采购金额的5%-10%，交纳投标保证金的以投标保证金数额为准）、撤消采购订单/交货通知单、终止已经生效的采购合同/协议、在一个月至三年内取消供货资格等处。</p>
                        </div>
                    </div>
                    <div class="modal-footer purchas-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!--底部最新动态-->
        <div class="bottomnews" id="">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close">
                        &times;
                    </button>
                    <h4 class="modal-title">最新动态</h4>
                </div>
                <div class="modal-body">
                    <div class="">
                        <a href="" target="_blank">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <script src="../js/jquery-1.11.3.min.js"></script>
        <script src="../public/js/jquery.uploadify-v3.2/jquery.uploadify.js"></script>
        <script src="../public/js/jquery.uploadify-v3.2/swfobject.js"></script>
        <script src="../public/js/jquery.validate.min.js"></script>
        <script src="../public/js/messages_bs_zh.js"></script>
        <script src="../public/js/jquery.metadata.js"></script>
        <link href="../public/css/byd_validate.css" type="text/css" rel="stylesheet" />
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/bootstrap-datetimepicker.min.js"></script>
        <script src="../js/bootstrap-datetimepicker.zh-CN.js"></script>
        <script src="../js/main.js"></script>
        <script>
            //提交报名信息表单验证
            $(".addform").on("click",".singupbtns",function(){
                var thisId = $(this).parents(".sinupsform").attr("class").split(" ")[0];
                $(this).parents("." + thisId).validate();
                if($("." + thisId).valid()){
                    focusCleanup:true;
                    $(this).parents("." + thisId).attr("action", "../SrmHome/Login.jsp?__METHOD=submit_signup");
                    $(this).parents("." + thisId).submit();
                }
            });
            
            //提交投诉与反馈信息表单验证，回执编号
            $(".compaintmodal2").find(".singupbtn").on("click",function() {
                $("#complaintForm").validate();
                if($("#complaintForm").valid()){
                    focusCleanup:true;
                    $.ajax({
                        url : "../SrmHome/Login.jsp?__METHOD=submit_complaint",
                        data : $("#complaintForm").serialize(),
                        type : "POST",
                        success : function(data) {
                            $(".showsuccessmodalcode").show();
                            var jsonId = JSON.parse(data);
                            $("#showTsId").text(jsonId.ts_id);
                            $("#Complaint").hide();
                            $(".showsuccessmodalcode").find("button[data-dismiss='modal']").on("click",function(){
                                window.location.reload();//重新加载页面
                            });
                        }
                    });
                }
            });
            
            function mvc_submit() {
            }
            ;
            function upload_pon_file(){
                $('#pon_file_input').uploadify('upload','*');
            };
            function upload_ts_file(){
                $('#ts_file_input').uploadify('upload','*');
            };
            $(function() {
                //上传投诉附件
                $('#ts_file_input').uploadify({
                    'fileTypeDesc' : 'Image Files',
                    'buttonText': '上传附件',
                    'progressData'    : 'percentage',
                    'fileTypeExts' : '*.jpg;*.gif;*.bmp;*.doc;*.xls;*.docx;*.xlsx;*.txt;*.pdf;*.ppt;*.pptx;*.rar;*.dwg;*.vsd;*.eml;*.msg',
                    'swf': '../public/js/jquery.uploadify-v3.2/uploadify.swf',
                    'uploader' : '../SrmHome/Login.jsp?__METHOD=upload_tsFile',
                    'cancelImg': '../public/js/jquery.uploadify-v3.2/uploadify-cancel.png',
                    'fileObjName' : 'tsfileinput',
                    'removeCompleted' : false,
                    'auto': false,
                    'multi': true,
                    'onSelect':function(){
                        if($(".uploadify-queue").length !== 0) {
                            $(".successtip").remove();
                            $(".submitfile").show();
                            $(".uploadify-queue").next("span").remove();
                            $(".uploadify").css({"border-bottom":"1px dotted #ccc;"});
                            $(".uploadify-queue").after("<span style='color:#E21E1E;'>点击上传按钮上传附件</span>");
                            $(".singupbtn").prop("disabled",true);
                        }
                        $("body").css({"overflow-y":"auto"});
                    },
                    'onFallback':function(){      
                        alert("您未安装FLASH控件，无法上传！请安装FLASH控件后再试。");      
                    },
                    'onUploadSuccess':function(file, data, response) {
                        data=$.parseJSON(data);
                        var trHtml;
                        trHtml = "<tr style='display:none;'><td>ID</td><td><input type='text' name='fileidlist' value='" + data.file_id + "' readonly/></td></tr>" +   
                        "<tr style='display:none;'><td>附件名</td><td><input type='text' name='filenamelist' value='" + data.filename + "' readonly/></td></tr>";
                        $(".compaintmodal2").find(".addfiletable").find("tbody").append(trHtml);
                    },
                    'onQueueComplete': function (queueData) { //当上传队列中的所有文件都完成上传时触发  
                        $(".submitfile").siblings(".successtip").remove();
                        $(".uploadify-queue").next("span").remove();
                        $(".singupbtn").prop("disabled",false);
                        $(".submitfile").before("<span class='successtip'>" + queueData.uploadsSuccessful + "个文件上传成功了！</span>");
                    }  
                });
                
                //滚动图自动轮播
                srmObj.starcarousel();
                
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
                
//              主页动态添加列表
                var noticearray = ${json_zbHeaders}; //招标公告数据
                var json_tzHeaders = ${json_tzHeaders}; //系统公告数据
                var json_tsHeaders = ${json_tsHeaders}; //投诉数据
                
                var addnoticelist = function(Class,commonclass,obj) {
                    var NoticeArray = [];
                    var NoticeHtml;
                    var NoticeHtmlLi;
                    var size = obj.length;
                    if(size >=5) {
                        size = 5;
                    }
                    for (var i = 0; i < size; i++) {
                        var id = obj[i].title;
                        NoticeHtmlLi = "<li>" +
                                        "<a href='SupplierSignup.jsp?id=" + obj[i].id + "' class='"+ commonclass +  obj[i].id + " linkshowmodal' target='_blank'>" +
                                        obj[i].title +
                                        "</a>" +
                                        "</li>";
                       NoticeArray.push(NoticeHtmlLi);
                    }
                    NoticeHtml = NoticeArray.join(" ");
                    $("." + Class).find(".content-ul").append(NoticeHtml);
                };
                
//                采购招标公告
                addnoticelist("notice","showannoumenlist_",noticearray);
                
                
//                窗口列表
                var addnoticelistdate = function(parentClass,linkClass,Class,commonClass,obj,pageClass,linkhref,target) {
                    $("." + parentClass).find("." + linkClass).on("click",function() {
                        $("." + Class).find(".content-ul,.pagination").remove();
                        srmObj.addPages(obj,pageClass);
                        var NoticeArray = [];
                        var NoticeHtml;
                        var NoticeHtmlLi;
                        var size = obj.length;
                        if(size >= 5) {
                            size = 5;
                        }
                        var lastpagenum = Math.ceil(obj.length/5); //最后一页页码
                        $("." + Class).find(".totalpagenum").text(lastpagenum);
                        for (var i = 0; i < size; i++) {
                            NoticeHtmlLi =  "<li>" +
                                            "<a href='" + linkhref + "?id=" + obj[i].id + "' class='" + commonClass + obj[i].id + " showmodala linkshowmodal' target='" + target + "'>" +
                                            obj[i].title +
                                            "</a>" +
                                            "<span class='date-annuce pull-right'>" + obj[i].date + "</span>" +
                                            "</li>";
                           NoticeArray.push(NoticeHtmlLi);
                        }
                        NoticeHtml = NoticeArray.join(" ");
                        $("." + Class).find(".pagination").before(
                            "<ul class='list-group content-ul'>" +
                                NoticeHtml +
                            "</ul>" 
                        );
                    });
                };
               
//                采购招标公告列表添加分页和列表
                addnoticelistdate("notice","showannoumcementmodal","annoumcementlist","showannoumenlist_",noticearray,"annoumcementlist","SupplierSignup.jsp","_blank");
                
//                系统公告添加分页和列表
                addnoticelistdate("navbar-nav","showsystemmodal","systemshowlist","showannoucement_",json_tzHeaders,"systemshowlist","javascript:void(0)","_self");
                
                //投诉反馈查询附件显示
                srmObj.addfilesshow(".showreplyquerymodal","linkshowmodal","../SrmHome/Login.jsp?__METHOD=getSrmAttachment","TS_FILE","Complaint-modal");

//              分页点击事件
            var clickPages = function(parentClass,obj,commonClass,addfileclass,linkhref,target) {
                $("." + parentClass).on("click",".pagereview",function() {
                    $(this).parents("." + parentClass).find(".content-ul").remove();
                    var thisClass = $(this).attr("class");
                    var thisnumber = parseInt($(this).siblings(".numinput").find("input").val()); //当前页码
                    var dataLength = parseInt(obj.length); //所有数据条数
                    var lastpagenum = Math.ceil(dataLength/5); //最后一页页码
                    var forsize ; //循环条数
                    var fromnum; //起始的条数num
                    var liHtml;
                    var newsArray = [];
                    if(thisnumber === lastpagenum ) {
                        forsize = parseInt(dataLength - (thisnumber - 1)*5);
                    } else {
                        forsize = 5;
                    }
                    switch(thisClass) {
                        //首页
                        case "pagereview first" :
                            $(".numinput").find("input").val(1);
                            thisnumber = parseInt($(".numinput").find("input").val()); //当前页码
                            if(thisnumber === lastpagenum) {
                                forsize = parseInt(dataLength - (thisnumber - 1)*5);
                            } else {
                                forsize = 5;
                            }
                            fromnum = 0;
                            break;
                        //上一页
                        case "pagereview previous" :
                            if(thisnumber !==1) {
                                $(".numinput").find("input").val(thisnumber - 1);
                                thisnumber = parseInt($(".numinput").find("input").val()); //当前页码
                                fromnum = (thisnumber+1)*5 - 10;
                                if(thisnumber === lastpagenum) {
                                    forsize = parseInt(dataLength - thisnumber*5);
                                } else {
                                    forsize = 5;
                                }
                            } else {
                                fromnum = 0;
                            }
                            break;
                        //下一页
                        case "pagereview next" :
                            if(thisnumber !== lastpagenum) {
                                $(".numinput").find("input").val(thisnumber + 1);
                                if(thisnumber + 1 === lastpagenum) {
                                    forsize = parseInt(dataLength - thisnumber*5);
                                } else {
                                    forsize = 5;
                                }
                                fromnum = thisnumber*5; 
                            } else {
                                fromnum = (thisnumber-1)*5;
                            }
                            break;
                        //尾页
                        case "pagereview last" :
                            $(".numinput").find("input").val(lastpagenum);
                            thisnumber = parseInt($(".numinput").find("input").val()); //当前页码
                            fromnum = (thisnumber-1)*5;
                            if(thisnumber === lastpagenum) {
                                forsize = parseInt(dataLength - (thisnumber - 1)*5);
                            } else {
                                forsize = 5;
                            }
                            break;
                        //跳转
                        case "pagereview location" :
                            if(thisnumber > lastpagenum) {
                                thisnumber = lastpagenum;
                                $(".numinput").find("input").val(thisnumber);
                            } 
                            if(!thisnumber) {
                                thisnumber = 1;
                                $(".numinput").find("input").val(thisnumber);
                            }
                            if(thisnumber === lastpagenum) {
                                forsize = parseInt(dataLength - (thisnumber - 1)*5);
                            } else {
                                forsize = 5;
                            }
                            fromnum = (thisnumber - 1)*5;
                            break;
                    }
                    for(var i = 0; i < forsize; i++) {
                        liHtml = "<li><a href='" + linkhref + "?id="+ obj[i + fromnum].id +"' class='" + commonClass + obj[i + fromnum].id +" showmodala " + addfileclass + "' target=" + target + ">" + obj[i + fromnum].title + "</a>"+
                                "<span class='date-annunce pull-right'>"+ obj[i + fromnum].date + "</span>" +   
                                "</li>";
                        newsArray.push(liHtml);
                    }
                    var newsHtml = newsArray.join(" ");
                    $("." + parentClass).find(".pagination").before(
                        "<ul class='list-group content-ul'>" +
                        newsHtml +
                        "</ul>" 
                    );
                });
            };
            
//           采购招标公告窗口分页点击事件
            clickPages("annoumcementlist",noticearray,"showannoumenlist_","linkshowmodal","SupplierSignup.jsp","_blank");
            
//            系统公告分页点击事件
            clickPages("systemshowlist",json_tzHeaders,"showannoucement_"," ","javascript:void(0)","_self");
            
//            投诉查询窗口列表
            var addCompaintlist = function() {
                $(".showreplyquerymodal").find("tbody,.pagination").remove();
                $.ajax({
                    url : '../SrmHome/SrmAdministration.jsp?__METHOD=findTsHeadersListByItems',
                    data: $.param({
                        ts_type : "",
                        ts_title : "",
                        ts_reply : "",
                        ts_contact : "",
                        ts_create_start : "",
                        ts_create_end : "",
                        ts_code : $("#tts_code").val()
                    }),
                    datatype: "json",
                    type : 'post',
                    success: function (data) {
                        var thisjson = JSON.parse(data);
                        if(thisjson.list_tsHeadersItems.length === 0 || $(".checkinputs").find("input[type='text']").val() === "") {
                            $(".showreplyquerymodal").find(".nolists").remove();
                            $(".showreplyquerymodal").find("table").after("<span class='nolists'>未找到数据！</span>");
                        } else {
                            $(".showreplyquerymodal").find(".nolists").remove();
                            //添加分页
                            srmObj.addPages(thisjson.list_tsHeadersItems,"showreplyquerymodal");
                            var tbodyArray =[];  //tbody集合
                            var trhtml; //每一行tr的html
                            var tbodyhtml; //最后html
                            var trsize = thisjson.list_tsHeadersItems.length; //循环数据个数
                            if(trsize >= 5) {
                                trsize = 5;
                            }
                            var lastpagenum = Math.ceil(thisjson.list_tsHeadersItems.length/5); //最后一页页码
                            $(".showreplyquerymodal").find(".totalpagenum").text(lastpagenum);
                            for(var i = 0; i < trsize; i++) {
                                for(key in thisjson.list_tsHeadersItems[i]) {
                                    if(!thisjson.list_tsHeadersItems[i][key]) {
                                        thisjson.list_tsHeadersItems[i][key] = " " ;
                                    }
                                }
                                trhtml = "<tr>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].comp_feed_type + "</td>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].ts_type + "</td>" +
                                        "<td><a href='javascript:void(0);' class='showfeedbackmodal_" + thisjson.list_tsHeadersItems[i].ts_headers_id + " showmodala linkshowmodal text-primary'>" + thisjson.list_tsHeadersItems[i].ts_title + "</a></td>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].ts_contact + "</td>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].ts_date + "</td>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].ts_reply + "</td>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].ts_to_time + "</td>" +
                                        "</tr>";
                                tbodyArray.push(trhtml);
                            }
                            tbodyhtml = "<tbody>" + tbodyArray.join(" ") + "</tbody>";
                            $(".showreplyquerymodal").find("thead").after(tbodyhtml);
                        }
                    }
                });
            };
            
            //点击投诉查询窗口点击搜索添加投诉列表
            $(".showreplyquerymodal").find("#ts_find").on("click",function() {
                addCompaintlist();
                return false;
            });
            
//            投诉窗口分页点击事件
            $(".showreplyquerymodal").on("click",".pagereview",function() {
                    $(this).parents(".showreplyquerymodal").find("tbody").remove();
//                    点击分页改变数据
                    var thisClass = $(this).attr("class");
                    var thisnumber = parseInt($(this).siblings(".numinput").find("input").val()); //当前页码
                    $.ajax({
                        url : '../SrmHome/SrmAdministration.jsp?__METHOD=findTsHeadersListByItems',
                        data: $.param({
                            ts_type : "",
                            ts_title : "",
                            ts_reply : "",
                            ts_contact : "",
                            ts_create_start : "",
                            ts_create_end : "",
                            ts_code : $("#tts_code").val()
                        }),
                        datatype: "json",
                        type : 'post',
                        success: function (data) {
                            var thisjson = JSON.parse(data);
                            var dataLength = parseInt(thisjson.list_tsHeadersItems.length); //所有数据条数
                            var lastpagenum = Math.ceil(dataLength/5); //最后一页页码
                            var forsize ; //循环条数
                            var fromnum; //起始的条数num
                            var liHtml;
                            var newsArray = [];
                            if(thisnumber === lastpagenum ) {
                                forsize = parseInt(dataLength - (thisnumber - 1)*5);
                            } else {
                                forsize = 5;
                            }
                            switch(thisClass) {
                                //首页
                                case "pagereview first" :
                                    $(".numinput").find("input").val(1);
                                    thisnumber = parseInt($(".numinput").find("input").val()); //当前页码
                                    if(thisnumber === lastpagenum) {
                                        forsize = parseInt(dataLength - (thisnumber - 1)*5);
                                    } else {
                                        forsize = 5;
                                    }
                                    fromnum = 0;
                                    break;
                                //上一页
                                case "pagereview previous" :
                                    if(thisnumber !==1) {
                                        if(thisnumber > lastpagenum) {
                                            thisnumber = 2;
                                        }
                                        $(".numinput").find("input").val(thisnumber - 1);
                                        thisnumber = parseInt($(".numinput").find("input").val()); //当前页码
                                        fromnum = (thisnumber+1)*5 - 10;
                                        if(thisnumber === lastpagenum) {
                                            forsize = parseInt(dataLength - thisnumber*5);
                                        } else {
                                            forsize = 5;
                                        }
                                    } else {
                                        fromnum = 0;
                                    }
                                    break;
                                //下一页
                                case "pagereview next" :
                                    if(thisnumber !== lastpagenum) {
                                        if(thisnumber > lastpagenum) {
                                            thisnumber = lastpagenum -1;
                                        }
                                        $(".numinput").find("input").val(thisnumber + 1);
                                        if(thisnumber + 1 === lastpagenum) {
                                            forsize = parseInt(dataLength - thisnumber*5);
                                        } else {
                                            forsize = 5;
                                        }
                                        fromnum = thisnumber*5; 
                                    } else {
                                        fromnum = (thisnumber-1)*5;
                                    }
                                    break;
                                //尾页
                                case "pagereview last" :
                                    $(".numinput").find("input").val(lastpagenum);
                                    thisnumber = parseInt($(".numinput").find("input").val()); //当前页码
                                    fromnum = (thisnumber-1)*5;
                                    if(thisnumber === lastpagenum) {
                                        forsize = parseInt(dataLength - (thisnumber - 1)*5);
                                    } else {
                                        forsize = 5;
                                    }
                                    break;
                                //跳转
                                case "pagereview location" :
                                    if(thisnumber > lastpagenum) {
                                        thisnumber = lastpagenum;
                                        $(".numinput").find("input").val(thisnumber);
                                    } 
                                    if(!thisnumber) {
                                        thisnumber = 1;
                                        $(".numinput").find("input").val(thisnumber);
                                    }
                                    if(thisnumber === lastpagenum) {
                                        forsize = parseInt(dataLength - (thisnumber - 1)*5);
                                    } else {
                                        forsize = 5;
                                    }
                                    fromnum = (thisnumber - 1)*5;
                                    break;
                            }
                            for (var i = 0; i < forsize; i++) {
                                for(key in thisjson.list_tsHeadersItems[i + fromnum]) {
                                    if(!thisjson.list_tsHeadersItems[i + fromnum][key]) {
                                        thisjson.list_tsHeadersItems[i + fromnum][key] = " " ;
                                    }
                                }
                                liHtml = "<tr id='" + thisjson.list_tsHeadersItems[i + fromnum].ts_headers_id + "'>" +
                                    "<td>" + thisjson.list_tsHeadersItems[i + fromnum].comp_feed_type + "</td>" +
                                    "<td>" + thisjson.list_tsHeadersItems[i + fromnum].ts_type + "</td>" +
                                    "<td><a href='javascript:void(0);' class='showfeedbackmodal_" + thisjson.list_tsHeadersItems[i + fromnum].ts_headers_id + " showmodala linkshowmodal text-primary'>" + thisjson.list_tsHeadersItems[i + fromnum].ts_title + "</a></td>" +
                                    "<td>" + thisjson.list_tsHeadersItems[i + fromnum].ts_contact + "</td>" +
                                    "<td>" + thisjson.list_tsHeadersItems[i + fromnum].ts_date + "</td>" +
                                    "<td>" + thisjson.list_tsHeadersItems[i + fromnum].ts_reply + "</td>" +
                                    "<td>" + thisjson.list_tsHeadersItems[i + fromnum].ts_to_time + "</td>" +
                                    "</tr>";
                                newsArray.push(liHtml);
                            }
                            var newsHtml = "<tbody>" + newsArray.join(" ") + "</tbody>";
                            $(".showreplyquerymodal").find("thead").after(
                                newsHtml
                            );
                        }
                    });
                });
                
                //初始化投诉查询窗口
                $(".footer").find(".reloadquery").on("click",function() {
                    $(".showreplyquerymodal").find(".over-long").find("tbody").remove();
                    $(".showreplyquerymodal").find(".pagination,.nolists").remove();
                });
        });
        </script>
    </body>
</html>