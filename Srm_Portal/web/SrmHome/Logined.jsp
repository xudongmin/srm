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
        <title>比亚迪供应商门户</title>
        <!--[if lt IE 9]>
        <script src="../js/html5shiv.min.js"></script>
        <script src="../js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="wrap">
            <div class="header navbar navbar-default loginedheader">
                <div class="navbar-header header-left logined-nav-header col-md-3">
                    <img src="../images/logo.png" alt="" class="pull-left"/>
                    <h3 class="pull-left">比亚迪供应商门户</h3>
                    <button type="button" class="navbar-toggle showbars">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="logined-nav col-lg-6">
                    <ul>
                        <li style="width: 50px;" class="menu-index">
                            <a href="index.jsp">首页</a>
                        </li>
                        <li><a href="#" data-toggle="modal" data-target="#Purchasing-lists" data-dropback="static">采购政策</a></li>
                    </ul>
                </div>
                <div class="logined-header-right col-lg-3">
                    <span class="welcome pull-right">
                        <span class="help" data-toggle="modal" data-target="#Supplier-help-lists" data-dropback="static">帮助
<!--                            <ul>
                                <li><a href="#">常见问题</a><li>
                                <li><a href="#">培训文档</a><li>
                                <li><a href="#">关于我们</a><li>
                            </ul>-->
                        </span>
                        <span class="text-danger">您好</span> <span style="margin-right:5px;">科达利科技</span><span> 30024</span> |
                        <a href="#">修改密码</a> |
                        <span class="icon-off off-icon text-danger"></span>
                        <a href="#" style="margin-right: 20px;">退出</a>
                    </span>
                </div>
            </div>            
            <div class="content logined-content">
                <div class="todo">                    
                    <div class="row">
                        <div class="col-md-3 todo-detail">
                            <div class="panel panel-warning">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        待确认订单
                                        <span><i class="text-danger">10</i> 条</span>
                                        <a href="#" class="posi-a pull-right todo-posi-a"><span class="icon-plus more"><i>更多</i></span></a>
                                    </h5>
                                </div>
                                <div class="panel-body ">                                    
                                    <ul class="todo-ul">
                                        <li><a href="#"> 00078事项 (邀请您参加BYD供应商会议) 待确认</a></li>
                                        <li><a href="#"> 00076事项 (邀请您参加SRM系统培训） 待确认</a></li>
                                        <li><a href="#">00075事项 (7月份结算数据已上传至门户上） 待确认</a></li>
                                        <li><a href="#">00075事项 (7月份结算数据已上传至门户上） 待确认</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 todo-detail">
                            <div class="panel panel-warning">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        待回复交货计划
                                        <span><i class="text-danger">10</i> 条</span>
                                        <a href="#" class="posi-a pull-right todo-posi-a"><span class="icon-plus more"><i>更多</i></span></a>
                                    </h5>
                                </div>
                                <div class="panel-body">
                                    <ul class="todo-ul">
                                        <li><a href="#">交货计划号：20098781 还未回复</a></li>
                                        <li><a href="#">交货计划号：20098780 还未回复</a></li>
                                        <li><a href="#">交货计划号：20098779 还未回复</a></li>
                                        <li><a href="#">交货计划号：20098779 还未回复</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 todo-detail">
                            <div class="panel panel-warning">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        待报价
                                        <span><i class="text-danger">10</i> 条</span>
                                        <a href="#" class="posi-a pull-right todo-posi-a"><span class="icon-plus more"><i>更多</i></span></a>
                                    </h5>
                                </div>
                                <div class="panel-body">
                                    <ul class="todo-ul">
                                        <li><a href="#">A04-div17FW-0000034-2015SZ-招标项目 邀请您参与报价</a></li>
                                        <li><a href="#">RFQ:5000597(询价) 邀请您参与报价</a></li>
                                        <li><a href="#">RFI:5000596(轻轨项目) 邀请您参与报价</a></li>
                                        <li><a href="#">RFI:5000596(轻轨项目) 邀请您参与报价</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 todo-detail">
                            <div class="panel panel-warning">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        待送货
                                        <span><i class="text-danger">10</i> 条</span>
                                        <a href="#" class="posi-a pull-right todo-posi-a"><span class="icon-plus more"><i>更多</i></span></a>
                                    </h5>
                                </div>
                                <div class="panel-body">
                                    <ul class="todo-ul">
                                        <li><a href="#">订单3000678921（要求送到时间：2016-08-04）还未送货</a></li>
                                        <li><a href="#">订单3000678920（要求送到时间：2016-08-03）还未送货</a></li>
                                        <li><a href="#">订单3000678917（要求送到时间：2016-08-02）还未送货</a></li>
                                        <li><a href="#">订单3000678917（要求送到时间：2016-08-02）还未送货</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="login-content">
                    <div class="row">
                        <div class="col-md-4 content-detail">
                            <h4>采购招标公告</h4>
                            <a href="#" class="posi-a"><span class="icon-plus more"><i>更多</i></span></a>
                            <ul class="list-group content-ul">
                                <li>
                                    <a href="" data-toggle="modal" data-target="#myModal" data-backdrop="static">A04-D19GC-0000037-2016SZ-VIP会议室、办公楼前台、办公楼展厅装修招标-比亚迪集团[深圳]</a>
                                </li>
                                <li>
                                    <a href="" data-toggle="modal" data-target="#myModal" data-backdrop="static">A04-A06QT-0000034-2016XA-西安地区车险招标（1）-比亚迪集团[西安]</a>
                                </li>
                                <li>
                                    <a href="" data-toggle="modal" data-target="#myModal" data-backdrop="static">A04-A06QT-0000032-2016XA-西安地区车险招标-比亚迪集团[西安]</a>
                                </li>
                                <li>
                                    <a href="" data-toggle="modal" data-target="#myModal" data-backdrop="static">A04-A06QT-0000032-2016XA-西安地区车险招标-比亚迪集团[西安]</a>
                                </li>                                
                            </ul>
                        </div>
                        <div class="col-md-4 content-detail">
                            <h4>系统公告</h4>
                            <a href="#" class="posi-a"><span class="icon-plus more"><i>更多</i></span></a>
                            <ul class="list-group content-ul">
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#announcement" data-dropback="static">新版供应商门户上线通知</a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#announcement" data-dropback="static">新版供应商门户上线通知</a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#announcement" data-dropback="static">新版供应商门户上线通知</a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#announcement" data-dropback="static">新版供应商门户上线通知</a>
                                </li>                              
                            </ul>
                        </div>                       
                        <div class="col-md-4 content-detail">
                            <h4>文档下载</h4>
                            <a href="#" class="posi-a"><span class="icon-plus more"><i>更多</i></span></a>
                            <ul class="list-group content-ul">
                                <li>
                                    <a href="../file/BYD供应商门户新注册操作手册.pdf">BYD供应商门户新注册操作手册</a>
                                </li>
                                <li>
                                    <a href="../file/BYD供应商门户注册后信息自维护操作手册.pdf">BYD供应商门户注册后信息自维护操作手册</a>
                                </li>
                                <li>
                                    <a href="../file/BYD供应商门户报价操作手册(详尽版)-20151101.pptx">BYD供应商门户报价操作手册(详尽版)-20151101</a>
                                </li>
                                <li>
                                    <a href="../file/BYD供应商（批量）报价操作手册_20151215.pptx">BYD供应商（批量）报价操作手册_20151215</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer login-footer">
                <div class="row">
                    <div class="col-md-4">
                        <h4 class="division"><img src="../images/division.png" alt=""/><span>比亚迪采购处</span></h4>
                        <ul>
                            <li>在线投诉反馈： <i class="icon-comment-alt text-warning" style="margin-right: 5px;"></i><a href="#" class="removeaddfiletable" data-toggle="modal" data-target="#Complaint" data-backdrop="static" style="margin-right: 5px;">投诉</a> <i class="icon-search" style="margin-right: 5px;"></i><a href="#" data-toggle="modal" data-target="#Reply" data-dropback="static">查询</a></li>
                            <li>采购处投诉电话：（0755-89888888-66390）</li>
                            <li>采购处投诉邮箱：cgts@byd.com</li>
                        </ul>
                    </div>
                    <div class="col-md-3 nativelink">
                        <h4>相关链接</h4>
                        <ul>
                            <li><a href="http://www.byd.com/" target="_blank">比亚迪官网</a></li>
                            <li><a href="http://www.bydauto.com.cn/" target="_blank">比亚迪汽车官方网站</a></li>
                            <li><a href="http://www.bydauto.com.cn/app/byd.html/" target="_blank">迪粉汇——成就梦想</a></li>
                        </ul>
                    </div>
                    <div class="col-md-5 chatimg">
                        <h4>审查处联系方式</h4>
                        <ul>
                            <li>集团投诉电话：0755-89888888-62299</li>
                            <li>集团投诉邮箱：tousu@byd.com</li>
                        </ul>
                        <img src="../images/chatshencha.jpg" alt=""/>
                    </div>
                </div>
            </div>
        </div>
        <!-- 模态框-->
        <!--招标公告信息-->
        <form action="" id="">
            <div class="modal fade provide-modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">                        
                        <div class="modal-body pubannou-body">       
                            <div class="purchas">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                                </button>
                                <div class="purchas-title">
                                    <span class="name">
                                        武汉电动单梁起重机招标  A04-D19SB-0000030-2016WH  招标(采购)公告
                                    </span>
                                </div>                              
                                <div class="closeingdate">
                                    【报名截止时间：<span class="closedate">2013年12月31日00：00</span>】
                                </div> 
                            </div>
                            <div class="purchas-info">
                                <table class="table table-striped table-hover table-bordered">                              
                                    <tbody>
                                        <tr>
                                            <td>项目名称</td>
                                            <td>武汉电动单梁起重机招标</td>
                                        </tr>
                                        <tr>
                                            <td>项目编号</td>
                                            <td>A04-D19SB-0000030-2016WH</td>
                                        </tr>
                                        <tr>
                                            <td>项目所属地区</td>
                                            <td>武汉</td>
                                        </tr>
                                        <tr>
                                            <td>购买招标文件时间</td>
                                            <td>2015-01-01</td>
                                        </tr>
                                        <tr>
                                            <td>购买招标文件地点</td>
                                            <td>上海</td>
                                        </tr>
                                        <tr>
                                            <td>招标文件售价</td>
                                            <td>标书费不收取</td>
                                        </tr>
                                        <tr>
                                            <td>投标保证金</td>
                                            <td>2万元人民币</td>
                                        </tr>
                                        <tr>
                                            <td>法人名称</td>
                                            <td>比亚迪汽车工业有限公司</td>
                                        </tr>
                                        <tr>
                                            <td>联系人</td>
                                            <td>史小婷</td>
                                        </tr>                                   
                                    </tbody>
                                </table>
                                <table class="table table-striped table-hover table-bordered col-md-6">                              
                                    <tbody>
                                        <tr>
                                            <td>联系电话</td>
                                            <td>67801</td>
                                        </tr>
                                        <tr>
                                            <td>邮件</td>
                                            <td>shi.xiaoting@byd.com</td>
                                        </tr>
                                        <tr>
                                            <td>答疑开始时间</td>
                                            <td>2016-3-8 10:00</td>
                                        </tr>
                                        <tr>
                                            <td>投标开始时间</td>
                                            <td>2016-3-10 08:30</td>
                                        </tr>
                                        <tr>
                                            <td>投标截止时间</td>
                                            <td>2016-3-11 14:00</td>
                                        </tr>
                                        <tr>
                                            <td>开标时间</td>
                                            <td>2016-3-11 14:00</td>
                                        </tr>
                                        <tr>
                                            <td>申诉时间</td>
                                            <td>2016-3-14</td>
                                        </tr>
                                        <tr>
                                            <td>报名截止时间</td>
                                            <td>2016-3-14</td>
                                        </tr>
                                        <tr>
                                            <td>备注</td>
                                            <td>/</td>
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
                                <input type="checkbox" id="agreefor"/><label for="agreefor">我司同意遵守 <a href="#" class="text-success">《比亚迪供应商道德行为规范》</label></a>
                            </div>
                            <button type="button" class="btn btn-warning singupbtn btn-sm" data-toggle="modal" data-dropback="static">点击参加报名</button>
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        
        <!--投诉反馈-->
        <form id="" action="">
            <div class="modal fade provide-modal Complaint-modal" id="Complaint" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                                <tr>
                                    <td>附件:</td>
                                    <td style="text-align: left;"><input type="file" value="浏览" multiple="multiple"> <span class="text-danger" style="font-size: 12px;">注意:可上传多个附件, 单个附件不能超过10M.</span></td>
                                </tr>                                
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
        
        <!--报名-->
        <!--        <form id="" action="">
            <div class="modal fade provide-modal" id="SignUp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title" id="myModalLabel">报名</h3>
                        </div>
                        <div class="modal-body">
                            <h4>武汉电动单梁起重机招标 A04-D19SB-0000030-2016WH 招标 公告 【报名截止时间: <span>2016-3-14</span>】</h4>
                            <table class="table-striped table-bordered table-responsive Complaint-table singup-table">
                                <tr>
                                    <td>公告类型</td>
                                    <td>招标公告</td>
                                </tr>
                                <tr>
                                    <td>项目名称</td>
                                    <td>武汉电动单梁起重机招标</td>
                                </tr>
                                <tr>
                                    <td>项目编号</td>
                                    <td>A04-D19SB-0000030-2016WH</td>
                                </tr>
                                <tr>
                                    <td>供应商编码</td>
                                    <td>如有供应商编码自动带出</td>
                                </tr>
                                <tr>
                                    <td><span class="text-danger">*</span>供应商名称</td>
                                    <td><input type="text" placeholder="请输入供应商名称"/></td>
                                </tr>
                                <tr>
                                    <td><span class="text-danger">*</span>联系人</td>
                                    <td><input type="text" placeholder="请输入联系人姓名"/></td>
                                </tr>
                                <tr>
                                    <td><span class="text-danger">*</span>联系电话</td>
                                    <td><input type="text" placeholder="请输入联系电话"/></td>
                                </tr>
                                <tr>
                                    <td><span class="text-danger">*</span>联系邮箱</td>
                                    <td><input type="text" placeholder="请输入联系邮箱"/></td>
                                </tr> 
                                <tr>
                                    <td><span class="text-danger">*</span>是否已注册比亚迪SRM系统<br/><span class="text-danger">(<a href="sp.byd.com.cn" class="text-danger">sp.byd.com.cn</a>请先注册后报名)</span></td>
                                    <td>
                                        <select>
                                            <option>是</option>
                                            <option>否</option>
                                        </select>
                                    </td>
                                </tr> 
                                <tr>
                                    <td><span class="text-danger">*</span>是否给BYD供过货</td>
                                    <td>
                                        <select>
                                            <option>是</option>
                                            <option>否</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>所供产品物料类型</td>
                                    <td><input type="text" placeholder="请输入物料类型"/></td>
                                </tr> 
                                <tr>
                                    <td>备注</td>
                                    <td><input type="text" placeholder="请输入备注"/></td>
                                </tr> 
                                <tr>
                                    <td>附件</td>
                                    <td style="text-align: left;">
                                        <input type="file" multiple="multiple" name="fileinput" id="file-Portrait1">                                          
                                        <span class="text-danger" style="font-size: 12px;">注意:可上传多个附件, 单个附件不能超过10M.</span>
                                    </td>
                                </tr>                                
                            </table>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <input type="reset" value="重置" class="btn btn-danger btn-sm"/>
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                            <input class="btn btn-warning singupbtn btn-sm" value="提交" type="submit">
                        </div>  
                    </div>
                </div>
            </div>
        </form>-->
        
        <!--系统公告-->
        <form id="" action="">
            <div class="modal fade provide-modal" id="announcement" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h3 class="modal-title">系统公告</h3>
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
                                           <span>发布日期: </span><input type="text" readonly onmousedown="WdatePicker({lang:'zh_CN',dateFmt:'yyyy-MM-dd'})" class="duringdate"/>至<input type="text" readonly onmousedown="WdatePicker({lang:'zh_CN',dateFmt:'yyyy-MM-dd'})" class="duringdate"/>
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
        <script src="../js/jquery-1.11.3.min.js"></script>
        <script src="../js/main.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/My97DatePicker/WdatePicker.js"></script>
    </body>
</html>