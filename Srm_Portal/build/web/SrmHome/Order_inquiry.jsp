<!DOCTYPE html>
<html>
    <head lang="en">
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@ include file="../public/common/taglibs.jspf"%>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta http-equiv="X-UA-Compatible" content="IE=9" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/app.css"/>
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
                <div class="logined-nav col-lg-6" id="navbar-collapse">                    
                    <ul>
                        <li style="width: 50px;" class="menu-index">
                            <a href="index.jsp">首页</a>
                        </li>
                        <li><a href="#">采购政策</a></li>
                    </ul>
                </div>
                <div class="logined-header-right col-lg-3">
                    <span class="welcome pull-right">
                        <span class="help">帮助
                            <ul>
                                <li><a href="#">常见问题</a><li>
                                <li><a href="#">培训文档</a><li>
                                <li><a href="#">关于我们</a><li>
                            </ul>
                        </span>
                        <span class="text-danger">您好</span> <span style="margin-right:5px;">科达利科技</span><span> 30024</span> |
                        <a href="#">修改密码</a> |
                        <span class="icon-off off-icon text-danger"></span>
                        <a href="#" style="margin-right: 20px;">退出</a>
                    </span>
                </div>
            </div>            
            <div class="content srm-content">
                <div class="position">
                        <ol class="breadcrumb res-breadcrumb">
                            <li><span class="icon icon-home nowposition"></span> 当前位置:</li>
                            <li>供应链系统</li>
                            <li>订单模式</li>
                            <li>送货单管理</li>
                            <li class="active">送货单查询</li>
                        </ol>
                        <form action="" class="form-inline" role="form">
                            <div class="bg-color">
                                <div class="contation">
                                    <div class="form-group shortinput">
                                        <label for="meterialnum">料号：</label><input type="text" id="meterialnum"/>
                                    </div>
                                    <div class="form-group shortinput">
                                        <label for="purchorder">采购订单：</label><input type="text" id="purchorder"/>
                                    </div>
                                    <div class="form-group shortinput">
                                        <label for="supplier">供应商：</label><input type="text" id="supplier"/>
                                    </div>
                                    <div class="form-group shorterinput">
                                        <label>生成日期：</label><input type="text" readonly class="datetimepicker"/> 至 <input type="text" readonly class="datetimepicker"/>
                                    </div>
                                </div>
                                <div class="btn-groups pull-right contation-btns">
                                    <button tyle="button" class="btn btn-default srm-btns"><span class="icon-search"></span>查询</button>
                                    <button type="button" class="btn btn-primary srm-btns contion-button">更多条件</button>
                                    <button type="button" class="btn btn-warning srm-btns"><span class="icon-cog"></span>配置</button>
                                </div>
                                <div class="contation-hide">
                                    <div class="form-group shortinput">
                                        <label for="meterialnum">料号：</label><input type="text"/>
                                    </div>
                                    <div class="form-group shortinput">
                                        <label for="purchorder">采购订单：</label><input type="text"/>
                                    </div>
                                    <div class="form-group shortinput">
                                        <label for="supplier">供应商：</label><input type="text"/>
                                    </div>
                                    <div class="form-group shorterinput">
                                        <label>生成日期：</label><input type="text" readonly onmouseover="WdatePicker({lang:'zh_CN',dateFmt:'yyyy-MM-dd'})"> 至 <input type="text" readonly onmouseover="WdatePicker({lang:'zh_CN',dateFmt:'yyyy-MM-dd'})">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                <div class="res-right">                    
                        <form action="" class="form-inline" role="form">
                            <div class="bgcolor-content">
                                <div class="condition-filter clearfix">
                                    <div class="resultconfig pull-left">
                                        <button type="button" class="btn btn-warning btn-sm"><span class="icon-cog"></span>结果配置</button>
                                        <a href="" class="savemodify">保存修改</a>
                                    </div>
                                    <div class="pagers pull-right">
                                        <span class="pagers-details">                                          
                                        第  <input type="text" value="1"/> 页 <i class="icon-caret-right gopage"><span>跳转</span></i>
                                            <ul class="pager pagers-ul">
                                                <li><a href="#">首页</a></li>
                                                <li><a href="#">上一页</a></li>
                                                <li><a href="#">下一页</a></li>
                                                <li><a href="#">尾页</a></li>
                                            </ul>
                                            <span class="each-page">每页</span>
                                        <span class="shownum">
                                            <span class="spannum">15</span>
                                            <ul class="showul">
                                                <li>15</li>
                                                <li>30</li>
                                                <li>45</li>
                                            </ul>
                                            <span class="arrow-down icon-angle-down pull-right"></span>
                                        </span>
                                        条,共 <span class="bold">96656</span> 页 <span class="bold">1449827</span> 条数据
                                        </span>
                                    </div>
                                </div>
                                <div id="ext_grid"></div>
                            </div>
                        </form>
                </div>
            </div>            
        </div>
        <script src="../js/jquery-1.11.3.min.js"></script>
        <script src="../js/bootstrap-datetimepicker.min.js"></script>
        <script src="../js/bootstrap-datetimepicker.zh-CN.js"></script>
        <script src="../js/main.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/ext-all.js"></script>
        <script>
            $(function(){
//          建表格
        //保存按鈕显示方法
            var savemodifyshow= function() {
                $('.savemodify').show();
            };
            
            var srm_thtd = "srm-thtd";
            var srm_trtd = "srm-trtd";
            Ext.state.Manager.setProvider(new Ext.state.CookieProvider());
            Ext.create('Ext.data.Store', {
                storeId: 'simpsonsStore',
                fields: ['date', 'companynum', 'factory', 'supplier', 'suppliername', 'purchaseorder', 'lineitem', 'type', 'maternum', 'specifications', 'receptdate', 'units', 'goodreceipt'],
                data: {
                    'items': [
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30841",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30842",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30843",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30844",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30845",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30846",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30847",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30848",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30849",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30850",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30851",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30852",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        },
                        {
                            'date': '2010',
                            "companynum": "1000",
                            "factory": "HZ21",
                            "supplier": "30853",
                            "suppliername": "东莞市运通工",
                            "purchaseorder": "1900232476",
                            "lineitem": "0030",
                            "type": "",
                            "maternum": "10342957-00",
                            "specifications": "驱动器CMD21",
                            "receptdate": "20100805",
                            "units": "PCS",
                            "goodreceipt": "4"
                        }
                    ]
                },
                proxy: {
                    type: 'memory',
                    reader: {
                        type: 'json',
                        root: 'items'
                    }
                }
            });
            var grid = Ext.create('Ext.grid.Panel', {
                stateful: true,
                stateid: 'myid',
                id: 'mytable',
                store: Ext.data.StoreManager.lookup('simpsonsStore'),
                plugins: [
                    Ext.create('Ext.grid.plugin.CellEditing', {
                        clicksToEdit: 1
                    })
                ],
                columns: [
                    {
                        header: '年度',
                        dataIndex: 'date',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '公司代码',
                        dataIndex: 'companynum',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '工厂',
                        dataIndex: 'factory',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '供应商',
                        dataIndex: 'supplier',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '供应商名称',
                        dataIndex: 'suppliername',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '采购订单',
                        dataIndex: 'purchaseorder',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '行项目',
                        dataIndex: 'lineitem',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '类型',
                        dataIndex: 'type',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '料号',
                        dataIndex: 'maternum',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '规格',
                        dataIndex: 'specifications',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '收货日期',
                        dataIndex: 'receptdate',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '单位',
                        dataIndex: 'units',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '收货',
                        dataIndex: 'goodreceipt',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        listeners: {
                            resize: function () {
                                savemodifyshow();
                            },
                            hide: function () {
                                savemodifyshow();
                            },
                            sortchange: function () {
                                savemodifyshow();
                            },
                            move: function () {
                                savemodifyshow();
                            }
                        }
                    },
                    {
                        header: '',
                        dataIndex: '',
                        cls: srm_thtd,
                        tdCls: srm_trtd,
                        width: 0,
                        style: {
                            opacity: 0
                        },
                        listeners: {
                            resize: function () {
                                $('.savemodify').hide();
                            }
                        }
                    }
                ],
                viewConfig: {
                    forceFit: true,
                    scrollOffset: 0,
                    stripeRows: true,//在表格中显示斑马线
                    enableTextSelection: true //可以复制单元格文字
                },
                flex: true,
                layout: 'fit',

                renderTo: ext_grid
            });

//            悬浮显示下拉选择条数,点击选中条数
            $(".shownum").hover(function(){
                $(this).find(".showul").stop().show();
            },function(){
                $(this).find(".showul").stop().hide();
            });

            $(".showul").find("li").on("click",function(){
                var spantext=$(this).text();
                $(this).parents(".showul").siblings(".spannum").text(spantext);
                $(this).parents(".showul").hide();
            });

//             更多条件，点击显示
            $(".res-right").find(".contion-button").on("click",function(){
                $(this).parents(".contation-btns").siblings(".contation-hide").slideToggle();
                var thistext=$(this).text();
                if(thistext=="更多条件") {
                    $(this).text("更少条件");
                } else {
                    $(this).text("更多条件");
                }
            });            
//            $("#ext_grid").on("click",".srm-trtd",function(){               
//                alert("123");
//            });
        });    
        </script>
    </body>
</html>