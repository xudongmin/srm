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
        <link rel="stylesheet" href="../css/bootstrap-wysihtml5.css"/>
        <link rel="stylesheet" href="../css/bootstrap-datetimepicker.min.css"/>
        <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
        <title>管理员管理</title>
        <!--[if lt IE 9]>
        <script src="../js/html5shiv.min.js"></script>
        <script src="../js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="wrap">
            <div class="header navbar navbar-default navbar-top navbar-fixed-top">
                <div class="container ad-container">
                    <div class="navbar-header header-left">
                        <img src="../images/logo.png" alt="" class="pull-left"/>
                        <h3 class="pull-left">管理员管理</h3>
                        <button type="button" class="navbar-toggle" data-target="#navbar-collapse" data-toggle="collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="navbar-collapse">
                        <div class="header-right">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="useli"><a href="Login.jsp">供应商主页</a></li>
                                <li class="mange-li useli">
                                    <a href="javascript:void(0);">采购公告</a> 
                                    <ul class="mange-ul">
                                        <li class="mange-det-li clickli"><a href="#num0" class="reda">公告发布</a></li>
                                        <li class="mange-det-li clickli queryannou"><a href="#num1">公告查询</a></li>
                                    </ul>
                                </li>                                    
                                <li class="mange-li useli">
                                    <a href="javascript:void(0);">系统公告</a> 
                                    <ul class="mange-ul">
                                        <li class="mange-det-li clickli"><a href="#num2">公告发布</a></li>
                                        
                                        <li class="mange-det-li clickli"><a href="#num3">公告查询</a></li>
                                    </ul>
                                </li>
                                <li class="clickli useli"><a href="#num4" class="Complaints">投诉情况</a></li>
                                <li class="clickli useli"><a href="#num5">采购政策</a></li>
                                <li class="clickli useli"><a href="#num6">供应商帮助</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content belogin-content">
                <div class="container parents-tabs">
                    <div class="child-tabs show-childtabs addClassfile" id="num0">
                        <form id="zb_Form" method="post" action="">
                            <h4>发布招标（采购）公告</h4>
                            <table class="table table-striped table-bordered table-responsive Complaint-table">                                
                                <tr>
                                    <td class="firsttd">公告类型</td>
                                    <td style="text-align:left;">
                                        <select id="zb_type" name="zb_type">
                                            <option>招标公告</option>
                                            <option>竞价公告</option>
                                            <option>其他</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">项目名称<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required" id="zb_project_description" name="zb_project_description" placeholder="请输入项目名称"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">项目编号<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required" id="zb_project_no" name="zb_project_no" placeholder="请输入项目编号"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">项目所属地区<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required" id="zb_project_city" name="zb_project_city" placeholder="请输入所属地区"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">购买招标/采购文件时间<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="datetimepickerhms required" id="zb_project_date" name="zb_project_date" readonly placeholder="选择采购文件时间"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">购买招标/采购文件地点<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required" id="zb_project_address" name="zb_project_address" placeholder="请输入采购文件地点"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">招标/采购文件售价<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required" name="zb_flie_je" id="zb_flie_je" placeholder="请输入招标文件售价"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">投标保证金<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required" id="zb_vendor_bond" name="zb_vendor_bond" placeholder="请输入投标保证金"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">法人名称<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required" id="zb_corporation" name="zb_corporation" placeholder="请输入法人名称"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">资源开发/采购专责<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required" id="zb_buyer" name="zb_buyer" placeholder="请输入资源开发或采购专责"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">联系人<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required" id="zb_contactor" name="zb_contactor" placeholder="请输入联系人姓名"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">联系电话<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required" id="zb_tel" name="zb_tel" placeholder="请输入联系电话"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">邮箱<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required email" id="zb_mail" name="zb_mail" placeholder="请输入邮箱地址"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">答疑开始时间<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="datetimepickerhms required" id="zb_answer_date" name="zb_answer_date" readonly placeholder="请选择答疑开始时间"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">投标开始时间<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="datetimepickerhms required" id="zb_bid_start_date" name="zb_bid_start_date" readonly placeholder="请选择投标开始时间"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">投标截止时间<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="datetimepickerhms required" name="zb_bid_end_date" id="zb_bid_end_date" readonly placeholder="请选择投标截止时间"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">开标时间<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="datetimepickerhms required" id="zb_open_date" name="zb_open_date" readonly placeholder="请选择开标时间"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">申诉时间<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text" class="required datetimepickerhms" id="zb_appeal_date" name="zb_appeal_date" readonly placeholder="请选择申诉时间"/>
                                    </td>
                                </tr>
                                <tr>
                                   <td class="firsttd">报名截止时间<span class="text-danger">*</span></td>
                                    <td>
                                        <input type="text"  class="datetimepickerhms required" id="zb_enrol_end_date" name="zb_enrol_end_date" readonly placeholder="请选择报名截止时间"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="firsttd">备注</td>
                                    <td>
                                        <input type="text" id="zb_memo" name="zb_memo" placeholder="如有备注，请输入"/>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-striped table-bordered table-responsice addfiletable">
                                <tbody>
                                    <tr>
                                        <td>
                                            <input type="file" name="zbfileinput" id="zb_file_input"/>
                                            <button type="button" onclick="upload_zb_file()" class="submitfile">上传</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="modal-footer purchas-footer">
                                <input type="reset" value="重置" class="btn btn-danger btn-sm"/>
                                <input class="btn btn-warning singupbtn btn-sm" value="发布" type="button">
                            </div> 
                        </form>
                    </div>
                    <div class="child-tabs samenum querydetail" id="num1">
                        <form action="" id="" method="post">
                            <h4>采购招标公告查询</h4>
                            <div class="row">
                                <div class="col-md-4">
                                    <ul>
                                        <li>
                                            <span>公告类型: </span><input type="text" name="tzb_type" id="tzb_type"/>
                                        </li>
                                        <li>
                                            <span>项目名称: </span><input type="text" name="tzb_project_description" id="tzb_project_description"/>
                                        </li>
                                        <li>
                                            <span>项目编号: </span><input type="text" name="tzb_project_no" id="tzb_project_no"/>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <ul>
                                        <li>
                                            <span>报名截止时间: </span><input size="16" name="tzb_enrol_end_date" id="tzb_enrol_end_date" class="datetimepicker" type="text" readonly>
                                        </li>
                                        <li>
                                            <span>公告发布时间: </span><input size="16" name="tzb_creation_date" id="tzb_creation_date" class="datetimepicker" type="text" readonly>
                                        </li>
                                        <li>
                                            <span>招标地区: </span><input type="text" name="tzb_project_address" id="tzb_project_address"/>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <ul>
                                        <li>
                                            <span>发布人: </span><input type="text" name="tzb_start_person" id="tzb_start_person"/>
                                        </li>
                                        <li>
                                            <span>资源开发/采购专责: </span><input type="text" name="tzb_buyer" id="tzb_buyer"/>
                                        </li>                                    
                                    </ul>
                                    <div class="buttons pull-right">
                                        <button class="btn btn-default btn-sm" id="submit_zbFind">
                                            <span class="icon-search"></span>
                                            查询
                                        </button>
                                        <input type="reset" class="btn btn-danger btn-sm" placeholder="重置"/>
                                    </div>
                                </div>                            
                            </div>
                            <div class="over-long">
                                <table class="table table-bordered table-striped table-responsive">
                                <thead>
                                    <tr>
                                        <th>招标类型</th>
                                        <th>项目名称</th>
                                        <th>项目编号</th>
                                        <th>招标地区</th>
                                        <th>报名截止时间</th>
                                        <th>公告发布时间</th>
                                        <th>资源开发/采购专责</th>
                                        <th>报名数量</th>
                                        <th>状态</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                            </table>
                            </div>
                            <div class="modal-body">
                            </div>
                        </form>
                    </div>
                    <div class="child-tabs addfileclass provide-modal addClassfile" id="num2">
                        <form id="" action="" method="">
                                <h4>发布公告/通告</h4>
                                <div class="modal-body">
                                    <table class="table table-striped table-bordered table-responsive Complaint-table">
                                        <tbody>
                                            <tr>
                                                <td class="firsttd"><span class="text-danger">*</span>标题</td>
                                                <td style="text-align: left;">
                                                    <input type="text" placeholder="请输入公告标题"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="firsttd"><span class="text-danger">*</span>内容</td>
                                                <td class="longtd">
                                                    <div class="hero-unit">
                                                            <textarea class="editor" placeholder="请输入内容..." style="width: 810px; height: 200px"></textarea>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <table class="table table-striped table-bordered table-responsice addfiletable">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <input type="file" multiple="multiple" name="fileinput"/>
                                            </td>
                                            <td>
                                                <input type="text" placeholder="请输入附件名"/>
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-default btn-sm addfilebtn"><span class="icon-plus"></span> 增加附件</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="modal-footer purchas-footer">
                                    <input type="reset" value="重置" class="btn btn-danger btn-sm"/>
                                    <input class="btn btn-warning singupbtn btn-sm" value="发布" type="submit">
                                </div> 
                        </form>
                    </div>
                    <div class="child-tabs samenum" id="num3">
                        <form action="" id="" method="">
                            <h4>系统公告查询</h4>
                            <div class="row">
                                <div class="col-md-4">
                                    <ul>
                                        <li>
                                            <span>标题: </span><input type="text"/>
                                        </li>
                                        <li>
                                            <span>发布地区: </span><input type="text"/>
                                        </li>                                        
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <ul>
                                        <li>
                                            <span>发布日期: </span><input size="16" class="syssinupdate datetimepicker" type="text" readonly> 至 <input size="16" class="syssinupdate datetimepicker" type="text" readonly>
                                        </li>
                                        <li>
                                            <span>发布人: </span><input type="text"/>
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
                                        <th>标题</th>
                                        <th>发布地区</th>
                                        <th>发布日期</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><a href="javascript:void(0);" class="announcement showmodala see text-primary">系统更新</a></td>
                                        <td>上海</td>
                                        <td>2013-12-20</td>
                                        <td>
                                            <a href="javascript:void(0);" class="remove">删除</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="javascript:void(0);" class="announcement showmodala see text-primary">系统更新</a></td>
                                        <td>上海</td>
                                        <td>2013-12-20</td>
                                        <td>
                                            <a href="javascript:void(0);" class="remove">删除</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            </div>
                            <ul class="pagination pull-right pagination-sm">
                                <li><a href="javascript:void(0);">上一页</a></li>
                                <li  class="active"><a href="javascript:void(0);">1</a></li>
                                <li><a href="javascript:void(0);">2</a></li>
                                <li><a href="javascript:void(0);">3</a></li>
                                <li><a href="javascript:void(0);">4</a></li>
                                <li><a href="javascript:void(0);">5</a></li>
                                <li><a href="javascript:void(0);">下一页</a></li>
                            </ul>
                        </form>
                    </div>
                    <div class="child-tabs samenum Complaintswin" id="num4">
                        <h4>投诉情况处理</h4>
			<form id="ts_findForm" action="" method="POST">
                        <div class="row">
                            
                                <div class="col-md-4">
                                    <ul>
                                        <li>
                                            <span>类型: </span><input type="text" name="ts_type" id="ts_type"/>
                                        </li>
                                        <li>
                                            <span>是否回复: </span><input type="text" name="ts_reply" id="ts_reply"/>
                                        </li>                                        
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <ul>
                                        <li>
                                            <span>标题: </span><input type="text" name="ts_title" id="ts_title"/>
                                        </li>
                                        <li>
                                            <span>投诉方联系人: </span><input type="text" name="ts_contact" id="ts_contact"/>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <li>
                                         <span>发布日期: </span><input type="text" readonly name="ts_create_start" id="ts_create_start" class="datetimepicker duringdate"/> 至 <input type="text" readonly name="ts_create_end" id="ts_create_end"  class="datetimepicker duringdate"/>
                                     </li>
                                    <div class="buttons pull-right">
                                        <button class="btn btn-default btn-sm" id="submit_tsFind">
                                            <span class="icon-search"></span>
                                            搜索
                                        </button>
                                        <input type="reset" class="btn btn-danger btn-sm" placeholder="重置"/>
                                    </div>
                                </div>  
                            
                        </div>
			</form>
                        <div class="over-long modal-body">
                            <table class="table table-bordered table-striped table-responsive">
                                <thead>
                                    <tr>
                                        <th>投诉反馈类型</th>
                                        <th>类型</th>
                                        <th>标题</th>
                                        <th>投诉方联系人</th>
                                        <th>投诉日期</th>
                                        <th>是否回复</th>
                                        <th>回复时间</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <div class="child-tabs" id="num5">
                        <div class="over-long">
                            <h4>采购政策</h4>
                            <button type="button" class="newPurchasing showmodala btn btn-warning btn-sm pull-right">采购政策发布</button>
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
                                        <td><a href="javascript:void(0);" class="Purchasing-check showmodala text-primary">道德行为规范</a></td>
                                        <td>刘晓华</td>
                                        <td>2016-01-01</td>
                                        <td>
                                            <a href="javascript:void(0);" class="remove">删除</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td><a href="javascript:void(0);" class="Purchasing-check showmodala text-primary">道德行为规范</a></td>
                                        <td>刘晓华</td>
                                        <td>2016-01-01</td>
                                        <td>
                                            <a href="javascript:void(0);" class="remove">删除</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="child-tabs" id="num6">
                        <form id="" action="" method="">
                            <div class="over-long">
                                <h4>供应商帮助</h4>
                                <button type="button" class="newSupplier-help showmodala btn btn-warning btn-sm pull-right">供应商帮助发布</button>
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
                                            <td><a href="javascript:void(0);" class="Supplier-help showmodala text-primary">如何使用</a></td>
                                            <td>刘晓华</td>
                                            <td>2016-01-01</td>
                                            <td>
                                                <a href="javascript:void(0);" class="remove">删除</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="javascript:void(0);" class="Supplier-help showmodala text-primary">如何使用</a></td>
                                            <td>刘晓华</td>
                                            <td>2016-01-01</td>
                                            <td>
                                                <a href="javascript:void(0);" class="remove">删除</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <!--采购招标公告详细信息-->
        <form id="" action="" method="post" >
            <c:forEach items="${zbHeaders}" var="zbHeaders">
            <div class="showquery_${zbHeaders.zb_header_id} showmodal provide-modal Complaint-modal gonggaodetail" id="Purchase">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <img src="../images/logo.png" alt=""/>
                            <h3 class="modal-title" id="myModalLabel">公告详细信息</h3>
                        </div>
                        <div class="modal-body">       
                            <table class="table table-striped table-bordered table-responsive Complaint-table Complaintde-table">                                
                                <tr>
                                    <td class="first-child">公告类型</td>
                                    <td>
                                        ${zbHeaders.zb_type}
                                    </td>
                                    <td class="first-child">联系人</td>
                                    <td>
                                       ${zbHeaders.zb_contactor}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="first-child">项目名称</td>
                                    <td>
                                        ${zbHeaders.zb_project_description}
                                    </td>
                                    <td class="first-child">联系电话</td>
                                    <td>
                                        ${zbHeaders.zb_tel}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="first-child">项目编号</td>
                                    <td>
                                        ${zbHeaders.zb_project_no}
                                    </td>
                                    <td class="first-child">邮箱</td>
                                    <td>
                                        ${zbHeaders.zb_mail}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="first-child">项目所属地区</td>
                                    <td>
                                        ${zbHeaders.zb_project_city}
                                    </td>
                                    <td class="first-child">答疑开始时间</td>
                                    <td>
                                        <fmt:formatDate value='${zbHeaders.zb_answer_date}' pattern='yyyy-MM-dd HH:mm' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="first-child">招标/采购文件时间</td>
                                    <td>
                                        <fmt:formatDate value='${zbHeaders.zb_project_date}' pattern='yyyy-MM-dd HH:mm' />
                                    </td>
                                    <td class="first-child">投标开始时间</td>
                                    <td>
                                       <fmt:formatDate value='${zbHeaders.zb_bid_start_date}' pattern='yyyy-MM-dd HH:mm' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="first-child">招标/采购文件地点</td>
                                    <td>
                                        ${zbHeaders.zb_project_address}
                                    </td>
                                    <td class="first-child">投标截止时间</td>
                                    <td>
                                        <fmt:formatDate value='${zbHeaders.zb_bid_end_date}' pattern='yyyy-MM-dd HH:mm' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="first-child">招标文件售价</td>
                                    <td>
                                        ${zbHeaders.zb_flie_je}
                                    </td>
                                    <td class="first-child">开标时间</td>
                                    <td>
                                        <fmt:formatDate value='${zbHeaders.zb_open_date}' pattern='yyyy-MM-dd HH:mm' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="first-child">投标保证金</td>
                                    <td>
                                        ${zbHeaders.zb_vendor_bond}
                                    </td>
                                    <td class="first-child">申诉时间</td>
                                    <td>
                                        <fmt:formatDate value='${zbHeaders.zb_appeal_date}' pattern='yyyy-MM-dd HH:mm' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="first-child">法人名称</td>
                                    <td>
                                        ${zbHeaders.zb_corporation}
                                    </td>
                                    <td class="first-child">报名截止时间</td>
                                    <td>
                                       <fmt:formatDate value='${zbHeaders.zb_enrol_end_date}' pattern='yyyy-MM-dd HH:mm' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="first-child">资源开发/采购专责</td>
                                    <td>
                                       ${zbHeaders.zb_buyer}
                                    </td>
                                    <td class="first-child">备注</td>
                                    <td>
                                       ${zbHeaders.zb_memo}
                                    </td>
                                </tr>
                                </table>
                            <div class="purchas-Enclosure">
                                <div class="files">
                                    附件：<span class="filedisplay"></span>
                                </div>
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
        
        <!--报名情况查询-->
        <form id="excel_form" action="" method="post">
            <div class="showquerydetail showmodal provide-modal" id="Regstitution">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <img src="../images/logo.png" alt=""/>
                            <h3 class="modal-title" id="myModalLabel">报名情况查询</h3>
                        </div>
                        <div class="modal-body">
                            <div class="over-long">
                                <table class="table table-striped table-bordered table-responsive">                                
                                    <thead>
                                        <tr>
                                            <th style="width: 280px;">项目名称</th>
                                            <th style="width: 90px;">项目编号</th>
                                            <th style="width: 200px;">供应商名称</th>
                                            <th style="width: 110px;">联系人</th>
                                            <th>联系电话</th>
                                            <th>联系邮箱</th>
                                            <th style="width: 117px;">是否给BYD供过货</th>
                                            <th style="width: 120px;">所供产品物料类型</th>
                                            <th style="width: 414px;">附件</th>
                                            <th style="width: 80px;">备注</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                            <button type="button" class="btn btn-default btn-sm pull-left excelimport" onclick="excel_import()">Excel</button>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                        </div>  
                    </div>
                </div>
            </div>
        </form>
        
        <!--投诉反馈详情查看-->
        <form id="complaint_Form" action="" method="post" >
            <c:forEach items="${tsHeaders}" var="tsHeaders">
            <div class="showhandlingmodal_${tsHeaders.ts_header_id} showmodal provide-modal Complaint-modal addClassfile complaindetail" id="Reply_detail_option">
                <div class="modal-dialog">
                    <div class="modal-content over-long">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <img src="../images/logo.png" alt=""/>
                            <h3 class="modal-title" id="myModalLabel">投诉与反馈处理</h3>
                        </div>
                        <div class="modal-body">       
                            <table class="table-striped table-bordered table-responsive Complaint-table">
                                <tr>
                                    <td>类型</td>
                                    <td style="display: none"> <input type="text" name="ts_header_id" id="ts_header_id" value="${tsHeaders.ts_header_id}"></td>
                                    <td class="last-child-td">
                                        ${tsHeaders.ts_type}
                                    </td>
                                </tr>
                                <tr>
                                    <td>标题</td>
                                    <td class="last-child-td">${tsHeaders.ts_title}</td>
                                </tr>
                                <tr>
                                    <td>内容</td>
                                    <td class="last-child-td">${tsHeaders.ts_description}</td>
                                </tr>
                                <tr>
                                    <td>公司名称</td>
                                    <td class="last-child-td">${tsHeaders.ts_company}</td>
                                </tr>
                                <tr>
                                    <td>联系人</td>
                                    <td class="last-child-td">${tsHeaders.ts_contact}</td>
                                </tr>
                                <tr>
                                    <td>联系电话</td>
                                    <td class="last-child-td">${tsHeaders.ts_tel}</td>
                                </tr>
                                <tr>
                                    <td>E-mail</td>
                                    <td class="last-child-td">${tsHeaders.ts_mail}</td>
                                </tr>
                                <tr>
                                    <td>附件:</td>
                                    <td class="last-child-td addfileshowtd">
                                        <div class="files"><span class="filedisplay"></span></div>
                                    </td>
                                </tr>    
                                <tr>
                                    <td>回复</td>
                                    <td>
                                        <textarea name="ts_reply_contact" id="ts_reply_contact" cols="5" rows="6" placeholder="" class=""></textarea>
                                    </td>
                                </tr>    
                            </table>
                        </div>
                        <div class="modal-footer purchas-footer">
                            <button type="button" id="${tsHeaders.ts_header_id}" class="btn btn-success btn-sm complaintsubmitbtn"/>提交</button>
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                        </div>  
                    </div>
                </div>
            </div>
            </c:forEach>
        </form>
        
        <!--系统公告-->
        <form id="" action="">
            <div class="announcement showmodal provide-modal" id="announcement">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <img src="../images/logo.png" alt=""/>
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
        
        <!--采购政策查看修改-->
        <form id="submitchangeform" action="">
            <div class="Purchasing-check showmodal provide-modal addClassfile" id="Purchasing-check">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <img src="../images/logo.png" alt=""/>
                            <h3 class="modal-title">采购政策查看修改</h3>
                        </div>
                        <div class="modal-body">
                            <table class="table table-striped table-bordered table-responsive Complaint-table">                                
                                <tr>
                                    <td>标题</td>
                                    <td>
                                        <input type="text" value="道德行为规范"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>内容</td>
                                    <td class="longtd">
                                        <div class="hero-unit">
                                            <textarea class="editor" placeholder="有道德" style="width: 810px; height: 200px"></textarea>
                                    </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>发布人</td>
                                    <td>
                                        <input type="text" value="刘晓华"/>                                      
                                    </td>
                                </tr>
                                 <tr>
                                    <td>发布日期</td>
                                    <td>
                                        <input type="text" class="datetimepicker" readonly value="2012-01-01"/>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-striped table-bordered table-responsice addfiletable">
                                <tbody>
                                    <tr>
                                        <td>
                                            <input type="file" multiple="multiple" name="fileinput"/>
                                        </td>
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
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                            <input type="submit" class="btn btn-success btn-sm" id="submitchange" value="提交修改"/>
                        </div>  
                    </div>
                </div>
            </div>
        </form>
    
        <!--采购政策发布-->
        <form id="" action="">
            <div class="newPurchasing showmodal provide-modal addClassfile" id="newPurchasing">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <img src="../images/logo.png" alt=""/>
                            <h3 class="modal-title">采购政策发布</h3>
                        </div>
                        <div class="modal-body">
                            <table class="table table-striped table-bordered table-responsive Complaint-table">                                
                                <tr>
                                    <td>标题</td>
                                    <td>
                                        <input type="text" placeholder="请输入标题"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>内容</td>
                                    <td class="longtd">
                                        <div class="hero-unit">
                                            <textarea class="editor" placeholder="请输入内容..." style="width: 810px; height: 200px"></textarea>
                                    </div>                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td>发布人</td>
                                    <td>
                                        <input type="text" placeholder="请输入发布人姓名"/>                                      
                                    </td>
                                </tr>
                                 <tr>
                                    <td>发布日期</td>
                                    <td>
                                        <input type="text" readonly class="datetimepicker" placeholder="请选择发布时间"/>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-striped table-bordered table-responsice addfiletable">
                                <tbody>
                                    <tr>
                                        <td>
                                            <input type="file" multiple="multiple" name="fileinput"/>
                                        </td>
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
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                            <button type="reset" class="btn btn-danger btn-sm">重置</button>
                            <input type="submit" class="btn btn-success btn-sm" value="提交发布"/>
                        </div>  
                    </div>
                </div>
            </div>
        </form>
    
        <!--帮助查看修改-->
        <form id="" action="">
            <div class="Supplier-help showmodal provide-modal addClassfile" id="Supplier-help">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <img src="../images/logo.png" alt=""/>
                            <h3 class="modal-title">供应商帮助看修改</h3>
                        </div>
                        <div class="modal-body">
                            <table class="table table-striped table-bordered table-responsive Complaint-table">                                
                                <tr>
                                    <td>标题</td>
                                    <td>
                                        <input type="text" value="如何使用"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>内容</td>
                                    <td class="longtd">
                                        <div class="hero-unit">
                                                <textarea class="editor" placeholder="怎么用怎么用" style="width: 810px; height: 200px"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>发布人</td>
                                    <td>
                                        <input type="text" value="刘晓华"/>                                      
                                    </td>
                                </tr>
                                 <tr>
                                    <td>发布日期</td>
                                    <td>
                                        <input type="text" readonly class="datetimepicker" value="2012-01-01"/>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-striped table-bordered table-responsice addfiletable">
                                <tbody>
                                    <tr>
                                        <td>
                                            <input type="file" multiple="multiple" name="fileinput"/>
                                        </td>
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
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                            <input type="submit" class="btn btn-success btn-sm" value="提交修改"/>
                        </div>  
                    </div>
                </div>
            </div>
        </form>
    
        <!--供应商帮助发布-->
        <form id="" action="">
            <div class="newSupplier-help showmodal provide-modal addClassfile" id="newSupplier-help">
                <div class="modal-dialog">
                    <div class="modal-content singup-modal">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <img src="../images/logo.png" alt=""/>
                            <h3 class="modal-title">供应商帮助发布</h3>
                        </div>
                        <div class="modal-body">
                            <table class="table table-striped table-bordered table-responsive Complaint-table">                                
                                <tr>
                                    <td>标题</td>
                                    <td>
                                        <input type="text" placeholder="请输入标题"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>内容</td>
                                    <td class="longtd">
                                        <div class="hero-unit">
                                                <textarea class="editor" placeholder="请输入内容..." style="width: 810px; height: 200px"></textarea>
                                        </div>                                     
                                    </td>
                                </tr>
                                <tr>
                                    <td>发布人</td>
                                    <td>
                                        <input type="text" placeholder="请输入发布人姓名"/>                                      
                                    </td>
                                </tr>
                                 <tr>
                                    <td>发布日期</td>
                                    <td>
                                        <input type="text" readonly class="datetimepicker" placeholder="请选择发布时间"/>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-striped table-bordered table-responsice addfiletable">
                                <tbody>
                                    <tr>
                                        <td>
                                            <input type="file" multiple="multiple" name="fileinput"/>
                                        </td>
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
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
                            <button type="reset" class="btn btn-danger btn-sm">重置</button>
                            <input type="submit" class="btn btn-success btn-sm" value="提交发布"/>
                        </div>  
                    </div>
                </div>
            </div>
        </form>
        <script src="../js/jquery-1.11.3.min.js"></script>
        <script src="../public/js/jquery.uploadify-v3.2/jquery.uploadify.js"></script>
        <script src="../public/js/jquery.uploadify-v3.2/swfobject.js"></script>
        <script src="../public/js/jquery.validate.min.js"></script>
        <script src="../public/js/messages_bs_zh.js"></script>
        <script src="../public/js/jquery.metadata.js"></script>
        <link href="../public/css/byd_validate.css" type="text/css" rel="stylesheet" />
        <script src="../js/wysihtml5-0.3.0.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/bootstrap-datetimepicker.min.js"></script>
        <script src="../js/bootstrap-datetimepicker.zh-CN.js"></script>
        <script src="../js/bootstrap-wysihtml5.js"></script>
        <script src="../js/main.js"></script>
        <script>
            $(function() {     
            //时分秒日期控件
            $('.datetimepickerhms').datetimepicker({
                language:  'zh-CN',
                Format: 'Custom',
                todayBtn:  1,
                autoclose: 1,
                CustomFormat: "yyyy-MM-dd HH:mm"
            });
            //  标签tbs
                $(".navbar-right").find(".clickli").on("click",function(){
                    $(".uploadify-queue-item,.submitfile").hide();
                    $(".successtip").remove();
                    $(this).parents(".wrap").find("form").each(function() {
                        $(this).find("input[type='reset']").trigger("click");
                    }); //表单重置
                    var thisId = $(this).find("a").attr("href");
                    var thisClass = $(this).attr("class");
                    var parents_tabs = $(".parents-tabs");
                    $(this).find("a").css({"color":"rgb(242, 88, 88)"});
                    $(this).parents(".ad-container").find(".clickli").not(this).find("a").css({"color":"#777"});
                    if(thisClass === "mange-det-li clickli") {
                        $(this).parents(".mange-li").siblings("li").find("a").css({"color":"#777"});
                    }
                    parents_tabs.find(thisId).show();
                    parents_tabs.find(thisId).siblings(".child-tabs").hide();
                    return false;
                });   
                
                //  投诉窗口分页点击事件
                    $(".Complaintswin").on("click",".pagereview",function() {
                        $(this).parents(".Complaintswin").find("tbody").remove();
                    // 点击分页改变数据
                        var thisClass = $(this).attr("class");
                        var thisnumber = parseInt($(this).siblings(".numinput").find("input").val()); //当前页码
                        $.ajax({
                            url : '../SrmHome/SrmAdministration.jsp?__METHOD=findTsHeadersListByItems',
                            data: $.param({
                                ts_type : $('#ts_type').val(),
                                ts_title : $("#ts_title").val(),
                                ts_reply : $("#ts_reply").val(),
                                ts_contact : $("#ts_contact").val(),
                                ts_create_start : $("#ts_create_start").val(),
                                ts_create_end : $("#ts_create_end").val(),
                                ts_code : ""
                            }),
                            datatype: "json",
                            type : 'post',
                            success : function(data) {
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
                                        "<td class='type'>" + thisjson.list_tsHeadersItems[i + fromnum].comp_feed_type + "</td>" +
                                        "<td class='type'>" + thisjson.list_tsHeadersItems[i + fromnum].ts_type + "</td>" +
                                        "<td class='title'><a href='javascript:void(0);' class='showhandlingmodal_" + thisjson.list_tsHeadersItems[i + fromnum].ts_headers_id + " showmodala linkaddfile text-primary'>" + thisjson.list_tsHeadersItems[i + fromnum].ts_title + "</a></td>" +
                                        "<td class='people'>" + thisjson.list_tsHeadersItems[i + fromnum].ts_contact + "</td>" +
                                        "<td class='date'>" + thisjson.list_tsHeadersItems[i + fromnum].ts_date + "</td>" +
                                        "<td class='reply'>" + thisjson.list_tsHeadersItems[i + fromnum].ts_reply + "</td>" +
                                        "<td class='replaydate'>" + thisjson.list_tsHeadersItems[i + fromnum].ts_to_time + "</td>" +
                                        "</tr>";
                                    newsArray.push(liHtml);
                                }
                                var newsHtml = "<tbody>" + newsArray.join(" ") + "</tbody>";
                                $(".Complaintswin").find("thead").after(
                                    newsHtml
                                );
                            }
                        });
                    });
                
//                投诉情况窗口
                var addcomplaint = function() {
                    $(".Complaintswin").find("tbody,.pagination").remove();
                    $.ajax({
                        url : '../SrmHome/SrmAdministration.jsp?__METHOD=findTsHeadersListByItems',
                        data: $.param({
                            ts_type : $('#ts_type').val(),
                            ts_title : $("#ts_title").val(),
                            ts_reply : $("#ts_reply").val(),
                            ts_contact : $("#ts_contact").val(),
                            ts_create_start : $("#ts_create_start").val(),
                            ts_create_end : $("#ts_create_end").val(),
                            ts_code : ""
                        }),
                        datatype: "json",
                        type : 'post',
                        success: function (data) {
                            var thisjson = JSON.parse(data); 
                            if(thisjson.list_tsHeadersItems.length === 0) {
                                $(".Complaintswin").find(".nolists").remove();
                                $(".Complaintswin").find("table").after("<span class='nolists'>未找到数据！</span>");
                            } else {
                               //   添加分页
                               $(".Complaintswin").find(".nolists").remove();
                                srmObj.addPages(thisjson.list_tsHeadersItems,"Complaintswin");
                                var tbodyArray =[];  //tbody集合
                                var trhtml; //每一行tr的html
                                var tbodyhtml; //最后html
                                var trsize = thisjson.list_tsHeadersItems.length; //循环数据个数
                                if(trsize >= 5) {
                                    trsize = 5;
                                }
                                var lastpagenum = Math.ceil(thisjson.list_tsHeadersItems.length/5); //最后一页页码
                                $(".Complaintswin").find(".totalpagenum").text(lastpagenum);
                                for(var i = 0; i < trsize; i++) {
                                    for(key in thisjson.list_tsHeadersItems[i]) {
                                        if(!thisjson.list_tsHeadersItems[i][key]) {
                                            thisjson.list_tsHeadersItems[i][key] = " " ;
                                        }
                                    }
                                    trhtml = "<tr id='" + thisjson.list_tsHeadersItems[i].ts_headers_id + "'>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].comp_feed_type + "</td>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].ts_type + "</td>" +
                                        "<td><a href='javascript:void(0);' class='showhandlingmodal_" + thisjson.list_tsHeadersItems[i].ts_headers_id + " showmodala linkaddfile text-primary'>" + thisjson.list_tsHeadersItems[i].ts_title + "</a></td>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].ts_contact + "</td>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].ts_date + "</td>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].ts_reply + "</td>" +
                                        "<td>" + thisjson.list_tsHeadersItems[i].ts_to_time + "</td>" +
                                        "</tr>";
                                    tbodyArray.push(trhtml);
                                }
                                tbodyhtml = "<tbody>" + tbodyArray.join(" ") + "</tbody>";
                                $(".Complaintswin").find("thead").after(tbodyhtml); 
                            }
                        }
                    });
                };
                $(".navbar-nav").find(".Complaints").on("click",function() {
                    addcomplaint();
                });
                //ajax提交条件搜索按钮查询投诉信息数据
                $("#submit_tsFind").click(function(){
                    addcomplaint();
                    return false;
                });
                
                //报名情况窗口 
//                报名情况窗口方法
                var querydetail = function() {
                    var thisnumber; //当前页码
                    if($(".querydetail").find("tbody").length === 0 && $(".querydetail").find(".pagination").length === 0) {
                                thisnumber = 1;
                            } else if ($(".querydetail").find("tbody").find("tr").length === 0 ){
                                thisnumber = parseInt($(".querydetail").find(".numinput").find("input").val() - 1);
                            } else {
                                thisnumber = parseInt($(".querydetail").find(".numinput").find("input").val());
                            }
                    $(".querydetail").find("tbody,.pagination").remove();
                    $.ajax({
                        url: "../SrmHome/SrmAdministration.jsp?__METHOD=get_jsonHeaders",
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            var newdetailjson ={};
                            for(key in data.list_ponHeaders) {
                                newdetailjson[data.list_ponHeaders[key].zb_header_id] = data.list_ponHeaders[key].ponHeaders;
                            }
                            $(".querydetail").find(".numinput").find("input").val(thisnumber);
                            $.ajax({
                                url : '../SrmHome/SrmAdministration.jsp?__METHOD=findZbHeadersListByItems',
                                dataType: 'json', 
                                type: 'POST',
                                data: $.param({
                                    zb_type : $('#tzb_type').val(),
                                    zb_project_description : $('#tzb_project_description').val(),
                                    zb_project_no : $('#tzb_project_no').val(),
                                    zb_enrol_end_date : $('#tzb_enrol_end_date').val(),
                                    zb_creation_date : $('#tzb_creation_date').val(),
                                    zb_project_address : $('#tzb_project_address').val(),
                                    zb_start_person : $('#tzb_start_person').val(),
                                    zb_buyer : $('#tzb_buyer').val()
                                }),
                                success: function (data) {
                                    if(data.list_zbHeadersByItems.length === 0) {
                                        $(".querydetail").find(".nolists").remove();
                                        $(".querydetail").find("table").after("<span class='nolists'>未找到数据！</span>");
                                    } else { 
                                        //  添加分页
                                        $(".querydetail").find(".nolists").remove();
                                        srmObj.addPages(data.list_zbHeaders,"querydetail");
                                        var tbodyArray =[];  //tbody集合
                                        var trhtml; //每一行tr的html
                                        var tbodyhtml; //最后html
                                        var fromnum; //起始的条数num
                                        var trsize = data.list_zbHeadersByItems.length; //所有数据个数
                                        var lastpagenum = Math.ceil(trsize/5); //最后一页页码
                                        var forsize; //循环个数

                                        if(thisnumber === lastpagenum ) {
                                            forsize = parseInt(trsize - (thisnumber - 1)*5);
                                        } else {
                                            forsize = 5;
                                        }
                                        $(".querydetail").find(".totalpagenum").text(lastpagenum);
                                        fromnum = parseInt((thisnumber - 1)*5);
                                        for(var i = 0; i < forsize; i++) {
                                            for(key in data.list_zbHeadersByItems[i]) {
                                                if(!data.list_zbHeadersByItems[i][key]) {
                                                    data.list_zbHeadersByItems[i][key] = " " ;
                                                }
                                            }
                                            var thisId = data.list_zbHeadersByItems[i + fromnum].zb_headers_id; //获取当前数据id
                                            //判断状态
                                            var endDate = data.list_zbHeadersByItems[i + fromnum].zb_enrol_end_date; //截止时间
                                            var needTime = endDate.replace(/-/g,"/");
                                            var thisDate = new Date(needTime); //现在时间
                                            var nowDate = new Date();
                                            var thisDatestr = Date.parse(thisDate);
                                            var nowDatestr = Date.parse(nowDate);
                                            var status;
                                            if(nowDatestr > thisDatestr) {
                                                status = "停止报名";
                                            } else {
                                                status = "正在报名中";
                                            }
                                            trhtml = "<tr>" +
                                                "<td>" + data.list_zbHeadersByItems[i].zb_type + "</td>" +
                                                "<td><a href='javascript:void(0);' class='showquery_" + data.list_zbHeadersByItems[i + fromnum].zb_headers_id + " linkshowmodal showmodala text-primary'>" + data.list_zbHeadersByItems[i + fromnum].zb_project_description + "</a></td>" +
                                                "<td>" + data.list_zbHeadersByItems[i + fromnum].zb_project_no + "</td>" +
                                                "<td>" + data.list_zbHeadersByItems[i + fromnum].zb_project_address + "</td>" +
                                                "<td>" + data.list_zbHeadersByItems[i + fromnum].zb_enrol_end_date + "</td>" +
                                                "<td>" + data.list_zbHeadersByItems[i + fromnum].zb_creation_date + "</td>" +
                                                "<td>" + data.list_zbHeadersByItems[i + fromnum].zb_buyer + "</td>" +
                                                "<td class='number'>" + newdetailjson[thisId].length + "</td>" +
                                                "<td>" + status + "</td>" +
                                                "<td class='lasttd'>" +
                                                "<a href='javascript:void(0);' class='showquerydetail showmodala linkshowmodaldetail see' id='" + data.list_zbHeadersByItems[i + fromnum].zb_headers_id + "'>查看报名情况</a>" +
                                                "<a href='javascript:void(0);' class='remove2'>删除</a>" + 
                                                "</td>" +
                                                "</tr>";
                                            tbodyArray.push(trhtml);
                                    }
                                        tbodyhtml = "<tbody>" + tbodyArray.join(" ") + "</tbody>";
                                        $(".querydetail").find("thead").after(tbodyhtml);
                                        $(".querydetail").find(".see").each(function() {
                                            if(parseInt($(this).parents("td").siblings(".number").text()) !== 0) {
                                                $(this).siblings(".remove2").remove();
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    });
                };
                $(".navbar-nav").find(".queryannou").on("click",function() {
                    querydetail();
                });
                
                //ajax提交条件查询采购招标公告信息数据
                $("#submit_zbFind").click(function(){
                    querydetail();
                    return false;
                });
                
                //报名情况删除按钮事件
                $(".querydetail").on("click",".remove2",function() {
                    var removeinfoId = $(this).siblings("a").attr("id"); //需要删除信息Id
                    $(".wrap").append(
                        "<div class='removedsure'>" +
                        "<h5>删除不可恢复，您确定删除吗?</h5>" +
                        "<button type='button' class='surenobtn sure btn btn-success btn-sm' id='" + removeinfoId +"'>确定</button>" +
                        "<button type='butotn' class='surenobtn no btn btn-danger btn-sm'>取消</button>" +
                        "</div>"
                    );
                    $(".wrap").append("<div class='mask'></div>");
                    $("body").css({"overflow-y":"hidden"});
                });
                
                //删除按钮选择
                $("body").on("click",".surenobtn",function() {
                    var thisClass = $(this).attr("class").split(" ")[1];
                    switch(thisClass) {
                        case "sure" :
                            var thisId = $(this).attr("id");
                            $(".wrap").find(thisId).parents("tr").remove();
                            $.ajax({
                                url: "../SrmHome/SrmAdministration.jsp?__METHOD=delete_zbHeaders",
                                type: "post",
                                data: $.param({id : thisId}),
                                success: function() {
                                    querydetail();
                                }
                            });
                            break;
                    }
                    $(this).parents(".removedsure").remove();
                    $(".wrap").find(".mask").remove();
                    $("body").css({"overflow-y":"auto"});
                });
                
            //招标报名情况分页点击事件
                //分页点击事件方法
                $(".querydetail").on("click",".pagereview",function() {
                    $(this).parents(".querydetail").find("tbody").remove();
                    var thisnumber = parseInt($(this).siblings(".numinput").find("input").val()); //当前页码
                    var thisClass = $(this).attr("class");
                    $.ajax({
                        url: "../SrmHome/SrmAdministration.jsp?__METHOD=get_jsonHeaders",
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            var newdetailjson ={};
                            for(key in data.list_ponHeaders) {
                                newdetailjson[data.list_ponHeaders[key].zb_header_id] = data.list_ponHeaders[key].ponHeaders;
                            }
                            // 点击分页改变数据
                            $.ajax({
                                url : '../SrmHome/SrmAdministration.jsp?__METHOD=findZbHeadersListByItems',
                                dataType: 'json', 
                                type: 'POST',
                                data: $.param({
                                    zb_type : $('#tzb_type').val(),
                                    zb_project_description : $('#tzb_project_description').val(),
                                    zb_project_no : $('#tzb_project_no').val(),
                                    zb_enrol_end_date : $('#tzb_enrol_end_date').val(),
                                    zb_creation_date : $('#tzb_creation_date').val(),
                                    zb_project_address : $('#tzb_project_address').val(),
                                    zb_start_person : $('#tzb_start_person').val(),
                                    zb_buyer : $('#tzb_buyer').val()
                                }),
                                success: function (data) {
                                    var dataLength = parseInt(data.list_zbHeadersByItems.length); //所有数据条数
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
                                        for(key in data.list_zbHeadersByItems[i + fromnum]) {
                                            if(!data.list_zbHeadersByItems[i + fromnum][key]) {
                                                data.list_zbHeadersByItems[i + fromnum][key] = " " ;
                                            }
                                        }
                                        var thisId = data.list_zbHeadersByItems[i + fromnum].zb_headers_id; //获取当前数据id
                                        //判断状态
                                        var endDate = data.list_zbHeadersByItems[i + fromnum].zb_enrol_end_date; //截止时间
                                        var needTime = endDate.replace(/-/g,"/");
                                        var thisDate = new Date(needTime); //现在时间
                                        var nowDate = new Date();
                                        var thisDatestr = Date.parse(thisDate);
                                        var nowDatestr = Date.parse(nowDate);
                                        var status;
                                        if(nowDatestr > thisDatestr) {
                                            status = "停止报名";
                                        } else {
                                            status = "正在报名中";
                                        }
                                        liHtml = "<tr>" +
                                                "<td>" + data.list_zbHeadersByItems[i +fromnum].zb_type + "</td>" +
                                                "<td><a href='javascript:void(0);' class='showquery_" + data.list_zbHeadersByItems[i + fromnum].zb_headers_id + " linkshowmodal showmodala text-primary'>" + data.list_zbHeadersByItems[i + fromnum].zb_project_description + "</a></td>" +
                                                "<td>" + data.list_zbHeadersByItems[i + fromnum].zb_project_no + "</td>" +
                                                "<td>" + data.list_zbHeadersByItems[i + fromnum].zb_project_address + "</td>" +
                                                "<td>" + data.list_zbHeadersByItems[i + fromnum].zb_enrol_end_date + "</td>" +
                                                "<td>" + data.list_zbHeadersByItems[i + fromnum].zb_creation_date + "</td>" +
                                                "<td>" + data.list_zbHeadersByItems[i + fromnum].zb_buyer + "</td>" +
                                                "<td class='number'>" + newdetailjson[thisId].length + "</td>" +
                                                "<td>" + status + "</td>" +
                                                "<td class='lasttd'>" +
                                                "<a href='javascript:void(0);' class='showquerydetail showmodala see linkshowmodaldetail' id='" + data.list_zbHeadersByItems[i + fromnum].zb_headers_id + "'>查看报名情况</a>" +
                                                "<a href='javascript:void(0);' class='remove2'>删除</a>" + 
                                                "</td>" +
                                                "</tr>";
                                        newsArray.push(liHtml);
                                        if(newdetailjson[thisId].length !== 0) {
                                            $(thisId).siblings(".remove2").remove();
                                        }
                                    }
                                    var newsHtml = "<tbody>" + newsArray.join(" ") + "</tbody>";
                                    $(".querydetail").find("thead").after(
                                        newsHtml
                                    );
                                    $(".querydetail").find(".see").each(function() {
                                        if(parseInt($(this).parents("td").siblings(".number").text()) !== 0) {
                                            $(this).siblings(".remove2").remove();
                                        }
                                    });
                                }
                            });
                        }
                    });
                });
                
                //报名数量为0 禁用excel导出按钮
                $(".querydetail").on("click",".linkshowmodaldetail",function() {
                    var thisnum = parseInt($(this).parents(".lasttd").siblings(".number").text());
                    if(thisnum === 0) {
                        $(".showquerydetail").find(".excelimport").hide();
                    } else {
                        $(".showquerydetail").find(".excelimport").show();
                    }
                });
                
                //招标公告窗口添加附件显示
                srmObj.addfilesshow(".querydetail","linkshowmodal","../SrmHome/Login.jsp?__METHOD=getSrmAttachment","ZB_FILE","purchas-Enclosure");
        
                //投诉反馈查询附件显示
                srmObj.addfilesshow(".Complaintswin","linkaddfile","../SrmHome/Login.jsp?__METHOD=getSrmAttachment","TS_FILE","files");
        
        //报名详情窗口列表
                $(".querydetail").on("click",".showquerydetail",function() {
                    var thisId = $(this).attr("id");
                    $(".showquerydetail").find("tbody,.pagination,.files").remove();
                    $.ajax({
                        url: "../SrmHome/SrmAdministration.jsp?__METHOD=get_jsonHeaders",
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            var newdetailjson ={};
                            for(key in data.list_ponHeaders) {
                                newdetailjson[data.list_ponHeaders[key].zb_header_id] = data.list_ponHeaders[key].ponHeaders;
                            }
                            //  添加分页
                            srmObj.addPages(newdetailjson[thisId],"showquerydetail");
                            var tbodyArray =[];  //tbody集合
                            var trhtml; //每一行tr的html
                            var tbodyhtml; //最后html
                            var trsize = newdetailjson[thisId].length; //循环数据个数
                            if(trsize >= 5) {
                                trsize = 5;
                            }
                            var lastpagenum = Math.ceil(newdetailjson[thisId].length/5); //最后一页页码
                            $(".showquerydetail").find(".totalpagenum").text(lastpagenum);
                            for(var i = 0; i < trsize; i++) {
                                for(key in newdetailjson[thisId][i]) {
                                    if(!newdetailjson[thisId][i][key]) {
                                        newdetailjson[thisId][i][key] = " " ;
                                    }
                                }
                                trhtml = "<tr>" +
                                    "<td>" + newdetailjson[thisId][i].zb_project_description + "</td>" +
                                    "<td class='code' id='" + newdetailjson[thisId][i].segment1 + "'>" + newdetailjson[thisId][i].zb_project_no + "</td>" +
                                    "<td>" + newdetailjson[thisId][i].description + "</td>" +
                                    "<td>" + newdetailjson[thisId][i].contactor + "</td>" +
                                    "<td>" + newdetailjson[thisId][i].tel + "</td>" +
                                    "<td>" + newdetailjson[thisId][i].mail + "</td>" +
                                    "<td>" + newdetailjson[thisId][i].status + "</td>" +
                                    "<td>" + newdetailjson[thisId][i].item_type + "</td>" +
                                    "<td class='filedisplay' id='" + newdetailjson[thisId][i].zb_header_id + "'>" +
                                    "</td>" +
                                    "<td>" + newdetailjson[thisId][i].memo + "</td>" +
                                    "</tr>";
                                tbodyArray.push(trhtml);
                            }
                            tbodyhtml = "<tbody>" + tbodyArray.join(" ") + "</tbody>";
                            $(".showquerydetail").find("thead").after(tbodyhtml);
                            //显示附件
                            $.ajax({
                                url: "../SrmHome/SrmAdministration.jsp?__METHOD=getSrmAttachment",
                                dataType: 'json',
                                type: 'POST',
                                data: $.param({header_id:thisId,filetype:"PON_FILE"}),
                                success: function(data) {
                                    var newjson = {};
                                    $(".showquerydetail").find(".files").remove();
                                    for(key in data) {
                                        newjson[thisId] = data["srmattslist"];
                                    }
                                    var idArray = []; //供应商编码数据集合
                                    $("#Regstitution").find(".code").each(function(){
                                        idArray.push($(this).attr("id"));
                                    });
                                    var needattrayJson = {};
                                    for(var i = 0; i < idArray.length; i++) {
                                        needattrayJson[idArray[i]] = [];
                                    }
                                    for(key in  needattrayJson) {
                                        for(var j = 0; j < newjson[thisId].length; j++) {
                                            if(key === newjson[thisId][j].code) {
                                                needattrayJson[key].push(newjson[thisId][j]);
                                            }
                                        }
                                    }
                                    $("#Regstitution").find(".filedisplay").each(function() {
                                        var thisneedId = $(this).siblings(".code").attr("id");
                                        var aHtml; //a链接 html
                                        var finalAhtml;
                                        var aListsArray = []; //a链接集合
                                        if(needattrayJson[thisneedId].length !== 0) {
                                            for(var i = 0; i < needattrayJson[thisneedId].length; i++) {
                                                var thisfileurl = needattrayJson[thisneedId][i].filepath;
                                                aHtml = "<a href='../SrmHome/Login.jsp?__METHOD=DownloadFile&filename="+ needattrayJson[thisneedId][i].filename + "&path=" + thisfileurl + "' target='_blank'>" + needattrayJson[thisneedId][i].realfilename +"</a>";
                                                aListsArray.push(aHtml);
                                            }
                                            finalAhtml = aListsArray.join(" ");
                                            $(this).html(finalAhtml);
                                        } else {
                                            $(this).html("无");
                                        }
                                    });
                                },
                                error: function() {
                                    $(".showquerydetail").find(".filedisplay").html("无");
                                }
                            });
                        }
                    });
                });
                
//                报名详情窗口列表分页点击事件
                $(".showquerydetail").on("click",".pagereview",function() {
                // 点击分页改变数据
                    var thisId = $(this).parents(".pagination").siblings(".over-long").find(".filedisplay").attr("id");
                    $(this).parents(".showquerydetail").find("tbody").remove();
                    var thisClass = $(this).attr("class");
                    var thisnumber = parseInt($(this).siblings(".numinput").find("input").val()); //当前页码
                    $.ajax({
                        url: "../SrmHome/SrmAdministration.jsp?__METHOD=get_jsonHeaders",
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            var newdetailjson ={};
                            for(key in data.list_ponHeaders) {
                                newdetailjson[data.list_ponHeaders[key].zb_header_id] = data.list_ponHeaders[key].ponHeaders;
                            }
                            var dataLength = parseInt(newdetailjson[thisId].length); //所有数据条数
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
                            for(key in newdetailjson[thisId][i + fromnum]) {
                                if(!newdetailjson[thisId][i + fromnum][key]) {
                                    newdetailjson[thisId][i + fromnum][key] = " " ;
                                }
                            }
                            liHtml = "<tr>" +
                                    "<td>" + newdetailjson[thisId][i + fromnum].zb_project_description + "</td>" +
                                    "<td class='code' id='" + newdetailjson[thisId][i + fromnum].segment1 + "'>" + newdetailjson[thisId][i + fromnum].zb_project_no + "</td>" +
                                    "<td>" + newdetailjson[thisId][i + fromnum].description + "</td>" +
                                    "<td>" + newdetailjson[thisId][i + fromnum].contactor + "</td>" +
                                    "<td>" + newdetailjson[thisId][i + fromnum].tel + "</td>" +
                                    "<td>" + newdetailjson[thisId][i + fromnum].mail + "</td>" +
                                    "<td>" + newdetailjson[thisId][i + fromnum].status + "</td>" +
                                    "<td>" + newdetailjson[thisId][i + fromnum].item_type + "</td>" +
                                    "<td class='filedisplay' id='" + newdetailjson[thisId][i + fromnum].zb_header_id + "'>" +
                                    "</td>" +
                                    "<td>" + newdetailjson[thisId][i + fromnum].memo + "</td>" +
                                    "</tr>";
                            newsArray.push(liHtml);
                        }
                            var newsHtml = "<tbody>" + newsArray.join(" ") + "</tbody>";
                            $(".showquerydetail").find("thead").after(
                                newsHtml
                            );
                             //显示附件
                            $.ajax({
                                url: "../SrmHome/SrmAdministration.jsp?__METHOD=getSrmAttachment",
                                dataType: 'json',
                                type: 'POST',
                                data: $.param({header_id:thisId,filetype:"PON_FILE"}),
                                success: function(data) {
                                    var newjson = {};
                                    $(".showquerydetail").find(".files").remove();
                                    for(key in data) {
                                        newjson[thisId] = data["srmattslist"];
                                    }
                                    var idArray = []; //供应商编码数据集合
                                    $("#Regstitution").find(".code").each(function(){
                                        idArray.push($(this).attr("id"));
                                    });
                                    var needattrayJson = {};
                                    for(var i = 0; i < idArray.length; i++) {
                                        needattrayJson[idArray[i]] = [];
                                    }
                                    for(key in  needattrayJson) {
                                        for(var j = 0; j < newjson[thisId].length; j++) {
                                            if(key === newjson[thisId][j].code) {
                                                needattrayJson[key].push(newjson[thisId][j]);
                                            }
                                        }
                                    }
                                    $("#Regstitution").find(".filedisplay").each(function() {
                                        var thisneedId = $(this).siblings(".code").attr("id");
                                        var aHtml; //a链接 html
                                        var finalAhtml;
                                        var aListsArray = []; //a链接集合
                                        if(needattrayJson[thisneedId].length !== 0) {
                                            for(var i = 0; i < needattrayJson[thisneedId].length; i++) {
                                                var thisfileurl = needattrayJson[thisneedId][i].filepath;
                                                aHtml = "<a href='../SrmHome/Login.jsp?__METHOD=DownloadFile&filename="+ needattrayJson[thisneedId][i].filename + "&path=" + thisfileurl + "' target='_blank'>" + needattrayJson[thisneedId][i].realfilename +"</a>";
                                                aListsArray.push(aHtml);
                                            }
                                            finalAhtml = aListsArray.join(" ");
                                            $(this).html(finalAhtml);
                                        } else {
                                            $(this).html("无");
                                        }
                                    });
                                },
                                error: function() {
                                    $(".showquerydetail").find(".filedisplay").html("无");
                                }
                            });
                        }
                    });
                }); 
                
//                招标公告发布附件上传
                $('#zb_file_input').uploadify({
                    'fileTypeDesc' : 'Image Files',
                    'buttonText': '上传附件',
                    'progressData'    : 'percentage',
                    'fileTypeExts' : '*.jpg;*.gif;*.bmp;*.doc;*.xls;*.docx;*.xlsx;*.txt;*.pdf;*.ppt;*.pptx;*.rar;*.dwg;*.vsd;*.eml;*.msg',
                    'swf': '../public/js/jquery.uploadify-v3.2/uploadify.swf',
                    'uploader' : '../SrmHome/SrmAdministration.jsp?__METHOD=upload_zbFile',
                    'cancelImg': '../public/js/jquery.uploadify-v3.2/uploadify-cancel.png',
                    'fileObjName' : 'zbfileinput',
                    'removeCompleted' : false,
                    'auto': false,
                    'multi': true,
                    'onSelect':function(){
                        if($(".uploadify-queue").length !== 0) {
                                $(".successtip").remove();
                                $(".submitfile").show();
                                $(".uploadify-queue").next("span").remove();
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
                        $(".addClassfile").find(".addfiletable").find("tbody").append(trHtml);
                    },
                   'onQueueComplete': function (queueData) { //当上传队列中的所有文件都完成上传时触发  
                        $(".submitfile").siblings(".successtip").remove();
                        $(".uploadify-queue").next("span").remove();
                        $(".singupbtn").prop("disabled",false);
                        $(".submitfile").before("<span class='successtip'>" + queueData.uploadsSuccessful + "个文件上传成功了！</span>");
                    }  
                });
                
                //回复投诉内容
                $(".complaindetail").on("click",".complaintsubmitbtn",function() {
                    var thisId = $(this).attr("id");
                    var thisContent = $(this).parents(".purchas-footer").siblings(".modal-body").find("textarea").val();
                    $.ajax({
                        url: "../SrmHome/SrmAdministration.jsp?__METHOD=reply_complaint",
                            type: "POST",
                            dataType: "json",
                            data: $.param({ts_header_id:thisId,ts_reply_contact:thisContent})
                    });
                    $(this).parents(".complaindetail").hide();
                    $(".wrap").find(".mask").remove();
                });
               

                //发布招标公告表单信息验证
                $("#num0").find(".singupbtn").on("click",function() {
                    srmObj.formvalidator("#zb_Form","../SrmHome/SrmAdministration.jsp?__METHOD=submit_publish");
                });
                
                $('.editor').wysihtml5();
        });
        
         function upload_zb_file(){
            $('#zb_file_input').uploadify('upload','*');
        };
        function mvc_submit() {
        };
                
        //导出excel
        function excel_import(){
            var thisId = $(".showquerydetail").find(".filedisplay").eq(0).attr("id");
            $("#excel_form").attr("action", "../SrmHome/SrmAdministration.jsp?__METHOD=exportExcel&id="+thisId);
            $("#excel_form").submit();
        }
        
        $(".longtd").on("click",function() {
            console.log($(this).find(".wysihtml5-toolbar").next("textarea").val());
        });
        </script>
    </body>
</html>
