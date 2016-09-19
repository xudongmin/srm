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
        <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
        <title>比亚迪供应商门户</title>
        <!--[if lt IE 9]>
        <script src="../js/html5shiv.min.js"></script>
        <script src="../js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="wrap register">
            <form action="" role="form" id="inputForm" name="inputForm">
                <div class="header register-nav navbar navbar-default  navbar-fixed-top register-navbar">
                    <h3 class="register-h2 pull-left">供应商信息登记</h3>
                    <div class="button-group pull-right">
                        <button type="submit" class="btn btn-success btn-sm">提交</button>
                        <button type="reset" class="btn btn-default btn-sm">重置</button>
                    </div>
                </div>
                <div class="register-content">
                    <div class="panel panel-primary register-panel register-comapny">
                        <div class="panel-heading">品类信息</div>
                        <div class="panel-body">
                            <div class="register-details">
                                <span class="register-title">
                                    <i class="text-danger">*</i> <span class="bold">业务类型</span>
                                </span>
                                <select name="business_category" id="business_category" class="">
                                    <option value="">IT生产性物料</option>
                                    <option value="">汽车生产性物料</option>
                                    <option value="">非生产性物料</option>
                                    <option value="">物流</option>
                                </select>
                            </div>
                            <div class="register-details">
                                <span class="register-title material-title">
                                    <i class="text-danger">*</i> <span class="bold">物料大类</span>
                                </span>
                                <div class="checkbox-group">
                                    <div class="checkbox">
                                        <label for="material_category" class="control-label">
                                            <input type="checkbox" id="material_category" name="material_category" value="IT零部件"/> IT零部件
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category1" class="control-label">
                                            <input type="checkbox" id="material_category1" name="material_category" value="三品类"/> 三品类
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category2" class="control-label">
                                            <input type="checkbox" id="material_category2" name="material_category" value="五金件"/> 五金件
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category3" class="control-label">
                                            <input type="checkbox" id="material_category3" name="material_category" value="其它"/> 其它
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category4" class="control-label">
                                            <input type="checkbox" id="material_category4" name="material_category" value="包装材料"/> 包装材料
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category5" class="control-label">
                                            <input type="checkbox" id="material_category5" name="material_category" value="化工类"/> 化工类
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category6" class="control-label">
                                            <input type="checkbox" id="material_category6" name="material_category" value="后勤物资"/> 后勤物资
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category7" class="control-label">
                                            <input type="checkbox" id="material_category7" name="material_category" value="委外加工类"/> 委外加工类
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category8" class="control-label">
                                            <input type="checkbox" id="material_category8" name="material_category" value="家用电器及零部件"/> 家用电器及零部件
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category9" class="control-label">
                                            <input type="checkbox" id="material_category9" name="material_category" value="工程类"/> 工程类
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category10" class="control-label">
                                            <input type="checkbox" id="material_category10" name="material_category" value="服务"/> 服务
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category11" class="control-label">
                                            <input type="checkbox" id="material_category11" name="material_category" value="材料类"/> 材料类
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category12" class="control-label">
                                            <input type="checkbox" id="material_category12" name="material_category" value="模具类"/> 模具类
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category13" class="control-label">
                                            <input type="checkbox" id="material_category13" name="material_category" value="汽车整车及零部件"/> 汽车整车及零部件
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category14" class="control-label">
                                            <input type="checkbox" id="material_category14" name="material_category" value="电子元器件"/> 电子元器件
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category15" class="control-label">
                                            <input type="checkbox" id="material_category15" name="material_category" value="电气类"/> 电气类
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category16" class="control-label">
                                            <input type="checkbox" id="material_category16" name="material_category" value="计量类"/> 计量类
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category17" class="control-label">
                                            <input type="checkbox" id="material_category17" name="material_category" value="设备配件"/> 设备配件
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label for="material_category18" class="control-label">
                                            <input type="checkbox" id="material_category18" name="material_category" value="资产"/> 资产
                                        </label>
                                    </div>
                                </div>
                            </div>                        
                            <div class="register-details register-comapny-name clearfix">
                                <span class="register-title">
                                    <i class="text-danger">*</i> <span class="bold">公司注册名称</span>
                                </span>
                                <input type="text" id="registered_comapny_name" name="registered_comapny_name" placeholder="输入公司中文名"/>
                            </div>
                            <div class="register-details register-comapny-name register-comapny-name2 clearfix">
                                <span class="register-title">
                                    <span class="bold">公司名称(英文)</span>
                                </span>
                                <input type="text" id="registered_comapny_enname" name="registered_comapny_enname" placeholder="输入公司英文名"/>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-primary register-panel">
                        <div class="panel-heading">公司简介(公司简史,组织结构,认证状况,行业地位及经验,供应产品,业务经验,交付能力等)<i class="text-danger" style="vertical-align: middle;margin-left:4px;">*</i></div>
                        <div class="panel-body">
                            <textarea name="company_description" id="company_description" cols="30" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="panel panel-primary register-panel register-comapny">
                        <div class="panel-heading">公司基本信息</div>
                        <div class="panel-body">
                            <ul>
                                <li>
                                    <div class="register-details">
                                        <span class="register-title">
                                            <i class="text-danger">*</i> <span class="bold">公司类型</span>
                                        </span>
                                        <select name="company_type" id="company_type" class="">
                                            <option value="有限责任公司">有限责任公司</option>
                                            <option value="股份有限公司">股份有限公司</option>
                                            <option value="其他有限公司">其他有限公司</option>
                                            <option value="国外注册公司">国外注册公司</option>
                                            <option value="其他类型公司">其他类型公司</option>
                                        </select>
                                    </div>
                                    <div class="register-details register-nature">
                                        <span class="register-title">
                                            <i class="text-danger">*</i> <span class="bold">经营性质</span>
                                        </span>
                                        <div class="checkbox-group register-manger">
                                            <div class="checkbox changecheckbox">
                                                <label for="manufacturers_supplier" class="control-label">
                                                    <input type="checkbox" id="manufacturers_supplier" name="business_type" value="N1"/> 生产厂商
                                                </label>
                                            </div>
                                            <div class="checkbox changecheckbox">
                                                <label for="agent_supplier" class="control-label">
                                                    <input type="checkbox" id="agent_supplier" name="business_type" value="N2"/> 代理商
                                                </label>
                                            </div>
                                            <div class="checkbox changecheckbox">
                                                <label for="outsourcingcompany_supplier" class="control-label">
                                                    <input type="checkbox" id="outsourcingcompany_supplier" name="business_type" value="N3"/> 委外加工厂商
                                                </label>
                                            </div>
                                            <div class="checkbox changecheckbox">
                                                <label for="retailer_supplier" class="control-label">
                                                    <input type="checkbox" id="retailer_supplier" name="business_type" value="N4"/> 贸易商
                                                </label>
                                            </div>
                                            <div class="checkbox changecheckbox">
                                                <label for="serviceprovider_supplier" class="control-label">
                                                    <input type="checkbox" id="serviceprovider_supplier" name="business_type" value="N5"/> 服务商
                                                </label>
                                            </div>
                                            <div class="checkbox changecheckbox">
                                                <label for="logisticscarriers_supplier" class="control-label">
                                                    <input type="checkbox" id="logisticscarriers_supplier" name="business_type" value="N6"/> 物流商
                                                </label>
                                            </div>
                                            <div class="checkbox changecheckbox">
                                                <label for="reclaimingagents_supplier" class="control-label">
                                                    <input type="checkbox" id="reclaimingagents_supplier" name="business_type" value="N7"/> 回收商
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="register-details">
                                        <span class="register-title">
                                            <span class="bold">公司曾用名</span>
                                        </span>
                                        <input type="text" id="company_previous_name" name="company_previous_name" placeholder="输入公司曾用名"/>
                                    </div>
                                    <div class="register-details">
                                            <span class="register-title">
                                                <span class="bold">所属集团/公司</span>
                                            </span>
                                        <input type="text" id="parent_company" name="parent_company" placeholder="输入公司所属集团"/>
                                    </div>
                                                                        <div class="register-details currency">
                                         <span class="register-title">
                                            <i class="text-danger">*</i> <span class="bold">交易币种</span>
                                         </span>
                                        <select name="unit" id="currency" class="">
                                            <option value="RMB" title="人民币">人民币</option>
                                            <option value="HKD" title="港元">港元</option>
                                            <option value="KRW" title="韩元">韩元</option>
                                            <option value="MOP" title="澳门元">澳门元</option>
                                            <option value="MXN" title="墨西哥比索">墨西哥比索</option>
                                            <option value="MYR" title="马来西亚林吉特">马来西亚林吉特</option>
                                            <option value="ROL" title="列伊">列伊</option>
                                            <option value="SEK" title="瑞典克朗">瑞典克朗</option>
                                            <option value="SGD" title="新加坡元">新加坡元</option>
                                            <option value="TWD" title="新台币">新台币</option>
                                            <option value="USD" title="美元">美元</option>
                                            <option value="ZAR" title="兰特">兰特</option>
                                            <option value="RUB" title="俄罗斯卢布">俄罗斯卢布</option>
                                            <option value="AUD" title="澳元">澳元</option>
                                            <option value="BRL" title="巴西雷阿尔">巴西雷阿尔</option>
                                            <option value="CAD" title="加拿大元">加拿大元</option>
                                            <option value="CHF" title="瑞士法郎">瑞士法郎</option>
                                            <option value="COP" title="哥伦比亚比索">哥伦比亚比索</option>
                                            <option value="DKK" title="丹麦克朗">丹麦克朗</option>
                                            <option value="EUR" title="欧元">欧元</option>
                                            <option value="GBP" title="英镑">英镑</option>
                                            <option value="INR" title="印度卢比">印度卢比</option>
                                            <option value="JPY" title="日圆">日圆</option>
                                        </select>
                                    </div>
                                </li>
                                <li>
                                    <div class="register-details">
                                         <span class="register-title">
                                             <i class="text-danger">*</i> <span class="bold">注册资金</span>
                                         </span>
                                        <input type="text" id="register_capital" name="register_capital" class="register-captial" placeholder="注册资金"/>
                                        <select name="unit" id="unit" class="">
                                            <option value="RMB" title="人民币">人民币</option>
                                            <option value="HKD" title="港元">港元</option>
                                            <option value="KRW" title="韩元">韩元</option>
                                            <option value="MOP" title="澳门元">澳门元</option>
                                            <option value="MXN" title="墨西哥比索">墨西哥比索</option>
                                            <option value="MYR" title="马来西亚林吉特">马来西亚林吉特</option>
                                            <option value="ROL" title="列伊">列伊</option>
                                            <option value="SEK" title="瑞典克朗">瑞典克朗</option>
                                            <option value="SGD" title="新加坡元">新加坡元</option>
                                            <option value="TWD" title="新台币">新台币</option>
                                            <option value="USD" title="美元">美元</option>
                                            <option value="ZAR" title="兰特">兰特</option>
                                            <option value="RUB" title="俄罗斯卢布">俄罗斯卢布</option>
                                            <option value="AUD" title="澳元">澳元</option>
                                            <option value="BRL" title="巴西雷阿尔">巴西雷阿尔</option>
                                            <option value="CAD" title="加拿大元">加拿大元</option>
                                            <option value="CHF" title="瑞士法郎">瑞士法郎</option>
                                            <option value="COP" title="哥伦比亚比索">哥伦比亚比索</option>
                                            <option value="DKK" title="丹麦克朗">丹麦克朗</option>
                                            <option value="EUR" title="欧元">欧元</option>
                                            <option value="GBP" title="英镑">英镑</option>
                                            <option value="INR" title="印度卢比">印度卢比</option>
                                            <option value="JPY" title="日圆">日圆</option>
                                        </select>
                                        <span class="register-unit text-primary">（单位：万)</span>
                                    </div>
                                    <div class="register-details register-web">
                                        <span class="register-title">
                                            <span class="bold">公司网址</span>
                                        </span>
                                        <input type="text" id="company_web" name="company_web" placeholder="输入公司网址"/>
                                    </div>
                                    <div class="register-details register-date">
                                            <span class="register-title">
                                                <i class="text-danger">*</i> <span class="bold">公司注册日期</span>
                                            </span>
                                        <input type="text" id="company_register_date" name="company_register_date" placeholder="选择公司注册日期"/>
                                    </div>
                                </li>
                                <li>
                                    <div class="register-details">
                                            <span class="register-title">
                                                <i class="text-danger">*</i> <span class="bold">营业执照号码/商业登记号码</span>
                                            </span>
                                        <input type="text" id="business_license_number" name="business_license_number" style="vertical-align:top;" placeholder="输入营业执照号码"/>
                                    </div>
                                    <div class="register-details area">
                                        <span class="register-title">
                                            <span class="bold">工厂面积</span>
                                        </span>
                                        <input type="text" id="factory_area" name="factory_area" placeholder="输入工厂面积"/>
                                        <span class="register-unit text-primary">（单位：平方米）</span>
                                    </div>
                                    <div class="register-details representative">
                                            <span class="register-title">
                                                <i class="text-danger">*</i> <span class="bold">法人代表</span>
                                            </span>
                                        <input type="text" id="corporate_representative" name="corporate_representative" placeholder="输入法人代表"/>
                                    </div>
                                </li>
                                <li>
                                    <div class="register-details">
                                            <span class="register-title">
                                                <span class="bold">组织机构代码</span>
                                            </span>
                                        <input type="text" id="organization_code" name="organization_code" placeholder="输入组织机构代码"/>
                                    </div>
                                    <div class="register-details employees-num">
                                        <span class="register-title">
                                            <i class="text-danger">*</i> <span class="bold">员工数量</span>
                                        </span>
                                        <input type="text" id="worker" name="worker" placeholder="输入员工数量"/>
                                        <span class="register-unit text-primary">（单位：人）</span>
                                    </div>
                                    <div class="register-details Property">
                                         <span class="register-title">
                                             <i class="text-danger">*</i> <span class="bold">厂房产权</span>
                                         </span>
                                        <select name="factory_property" id="factory_property" class="">
                                            <option value="自有">自有</option>
                                            <option value="租赁">租赁</option>
                                            <option value="自有,租赁">自有,租赁</option>
                                        </select>
                                    </div>
                                </li>
                                <li>
                                    <div class="register-details">
                                        <span class="register-title">
                                            <span class="bold">税务登记证号</span>
                                        </span>
                                        <input type="text" id="tax_register_number" name="tax_register_number" placeholder="输入税务登记证号"/>
                                    </div>
                                    <div class="register-details rate">
                                        <span class="register-title">
                                            <i class="text-danger">*</i> <span class="bold">税率</span>
                                        </span>
                                        <input type="text" id="tax_rate" name="tax_rate" placeholder="输入税率"/>
                                        <span class="register-unit text-primary">（单位：%）</span>
                                    </div>
                                    <div class="register-details Billing">
                                         <span class="register-title">
                                            <i class="text-danger">*</i> <span class="bold">开票方式</span>
                                         </span>
                                        <select name="tax_type" id="tax_type" class="">
                                            <option value="增值税">增值税</option>
                                            <option value="普通国税">普通国税</option>
                                            <option value="零税">零税</option>
                                            <option value="其他">其他</option>
                                        </select>
                                    </div>
                                </li>
                                <li style="overflow: hidden;" class="clearfix">
                                    <div class="register-details addressnew addressnew1">
                                        <span class="register-title">
                                            <span class="bold">公司注册地址</span>
                                        </span>
                                        <button type="button" class="btn btn-default btn-sm addAdress"><span class="icon-plus"></span><i>添加地址</i></button>
                                        <div class="sureAddress">
                                            <span class="register-title">
                                                <span class="span-first bold">国家:</span>
                                                <span class="country text-primary"></span>
                                            </span>
                                            <span class="register-title">
                                                <span class="span-first bold">省/自治区:</span>
                                                <span class="province text-primary"></span>
                                            </span>
                                            <span class="register-title">
                                                <span class="span-first bold">市/州/地区:</span>
                                                <span class="region text-primary"></span>
                                            </span>
                                            <span class="register-title">
                                                <span class="span-first bold">县/镇:</span>
                                                <span class="town text-primary"></span>
                                            </span>
                                            <span class="register-title">
                                                <span class="span-first bold">区/街道:</span>
                                                <span class="Street text-primary"></span>
                                            </span>
                                            <span class="register-title">
                                                <span class="span-first bold">邮政编码:</span>
                                                <span class="postCode text-primary"></span>
                                            </span>
                                        </div>
                                        <div class="register-address">
                                            <ul>
                                                <li>
                                                    <span class="register-title">
                                                        <i class="text-danger">*</i> <span>国家</span>
                                                    </span>
                                                    <select name="register_address_country" id="register_address_country" class="country">
                                                        <option value="CN">中国</option>
                                                        <option value="AD">安道尔</option>
                                                        <option value="AE">阿拉伯联合酋长国</option>
                                                        <option value="AF">阿富汗</option>
                                                        <option value="AG">安提瓜和巴布达</option>
                                                    </select>
                                                </li>
                                                <li>
                                                    <span class="register-title">
                                                        <i class="text-danger">*</i> <span>省/自治区</span>
                                                    </span>
                                                    <input type="text" id="register_address_province" name="register_address_province" placeholder="输入省/自治区" class="province"/>
                                                </li>
                                                <li>
                                                    <span class="register-title">
                                                        <i class="text-danger">*</i> <span>市/州/地区</span>
                                                    </span>
                                                    <input type="text" id="register_address_city" name="register_address_city" placeholder="输入市/州/地区" class="region"/>
                                                </li>
                                                <li>
                                                    <span class="register-title">
                                                        <span>县/镇</span>
                                                    </span>
                                                    <input type="text" id="register_address_town" name="register_address_town" placeholder="输入县/镇" class="town"/>
                                                </li>
                                                <li>
                                                    <span class="register-title">
                                                        <span>区/街道</span>
                                                    </span>
                                                    <input type="text" id="register_address_road" name="register_address_road" placeholder="输入区/街道" class="Street"/>
                                                </li>
                                                <li>
                                                    <span class="register-title">
                                                        <span>邮政编码</span>
                                                    </span>
                                                    <input type="text" id="register_address_postalcode" name="register_address_postalcode" placeholder="输入邮政编码" class="postCode"/>
                                                </li>
                                                <li>
                                                    <button type="button" class="btn btn-success pull-right btn-sm surebtn">确定</button>
                                                    <button type="button" class="btn btn-danger btn-sm pull-right resetbtn">重置</button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="register-details addressnew addressnew2">
                                        <span class="register-title">
                                            <span class="bold">公司办公地址</span>
                                        </span>
                                        <button type="button" class="btn btn-default btn-sm addAdress"><span class="icon-plus"></span><i>添加地址</i></button>
                                        <div class="sureAddress">
                                            <span class="register-title">
                                                <span class="span-first bold">国家:</span>
                                                <span class="country text-primary"></span>
                                            </span>
                                            <span class="register-title">
                                                <span class="span-first bold">省/自治区:</span>
                                                <span class="province text-primary"></span>
                                            </span>
                                            <span class="register-title">
                                                <span class="span-first bold">市/州/地区:</span>
                                                <span class="region text-primary"></span>
                                            </span>
                                            <span class="register-title">
                                                <span class="span-first bold">县/镇:</span>
                                                <span class="town text-primary"></span>
                                            </span>
                                            <span class="register-title">
                                                <span class="span-first bold">区/街道:</span>
                                                <span class="Street text-primary"></span>
                                            </span>
                                            <span class="register-title">
                                                <span class="span-first bold">邮政编码:</span>
                                                <span class="postCode text-primary"></span>
                                            </span>
                                        </div>
                                        <div class="register-address">
                                            <ul>
                                                <li>
                                                    <span class="register-title">
                                                    <i class="text-danger">*</i> <span>国家</span>
                                                    </span>
                                                    <select name="office_address_country" id="office_address_country" class="country">
                                                        <option value="CN">中国</option>
                                                        <option value="AD">安道尔</option>
                                                        <option value="AE">阿拉伯联合酋长国</option>
                                                        <option value="AF">阿富汗</option>
                                                        <option value="AG">安提瓜和巴布达</option>
                                                    </select>
                                                </li>
                                                <li>
                                                    <span class="register-title">
                                                        <i class="text-danger">*</i> <span>省/自治区</span>
                                                    </span>
                                                    <input type="text" id="office_address_province" name="office_address_province" placeholder="输入省/自治区" class="province"/>
                                                </li>
                                                <li>
                                                    <span class="register-title">
                                                        <i class="text-danger">*</i> <span>市/州/地区</span>
                                                    </span>
                                                    <input type="text" id="office_address_city" name="office_address_city" placeholder="输入市/州/地区" class="region"/>
                                                </li>
                                                <li>
                                                    <span class="register-title">
                                                        <span>县/镇</span>
                                                    </span>
                                                    <input type="text" id="office_address_town" name="office_address_town" placeholder="输入县/镇" class="town"/>
                                                </li>
                                                <li>
                                                    <span class="register-title">
                                                        <span>区/街道</span>
                                                    </span>
                                                    <input type="text" id="office_address_road" name="office_address_road" placeholder="输入区/街道" class="Street"/>
                                                </li>
                                                <li>
                                                    <span class="register-title">
                                                        <span>邮政编码</span>
                                                    </span>
                                                    <input type="text" id="office_address_postalcode" name="office_address_postalcode" placeholder="输入邮政编码" class="postCode"/>
                                                </li>
                                                <li>
                                                    <button type="button" class="btn btn-success pull-right btn-sm surebtn">确定</button>
                                                    <button type="button" class="btn btn-danger btn-sm pull-right resetbtn">重置</button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <h4>公司详细信息</h4>
                    <div class="panel panel-primary register-panel register-comapny">
                    <div class="panel-heading">经营状况</div>
                    <div class="panel-body">
                        <ul>
                            <li>
                                <div class="register-details rigister-rank">
                                     <span class="register-title register-company-title">
                                         <span class="bold">行业排名是否为前五</span>
                                     </span>
                                     <label for="interyes" class=""><input type="radio" name="company_rank" id="interyes"  value="Y1" checked="checked">是(国 际)</label>
                                     <label for="cnyes" class=""><input type="radio" name="company_rank" id="cnyes"  value="Y1">是(国 内)</label>
                                     <label for="no" class=""><input type="radio" name="company_rank" id="no"  value="Y1">否</label>
                                </div>
                                <div class="register-details rigister-rank">
                                     <span class="register-title register-company-title register-company-com">
                                        <i class="text-danger">*</i> <span class="bold">是否为国外知名企业在中国的分公司或设立的独资合资公司</span>
                                     </span>
                                    <label for="companyyes" class=""><input type="radio" name="company_property" id="companyyes"  value="Y" checked="checked">是</label>
                                    <label for="companyno" class=""><input type="radio" name="company_property" id="companyno"  value="N">否</label>
                                </div>
                            </li>
                            <li>
                                <div class="register-details rigister-rank">
                                     <span class="register-title register-company-title">
                                         <span class="bold">质量执行标准</span>
                                     </span>
                                     <input type="text" name="quality_standard" id="quality_standard" placeholder="输入质量执行标准"/>
                                </div>
                                <div class="register-details rigister-rank rigister-rank-left">
                                     <span class="register-title register-company-title register-company-com">
                                        <i class="text-danger">*</i> <span class="bold">产品是否通过质量或安全验证</span>
                                     </span>
                                    <label for="quantyyes" class=""><input type="radio" name="safe_quality_certificate" id="quantyyes"  value="Y" checked="checked">是</label>
                                    <label for="quantyno" class=""><input type="radio" name="safe_quality_certificate" id="quantyno"  value="N">否</label>
                                </div>
                            </li>
                            <li class="year-li">
                                <div class="register-details">
                                     <span class="register-title register-company-title">
                                        <i class="text-danger">*</i> <span class="bold">年度</span>
                                     </span>
                                    <select name="year1" id="year1" class="">
                                        <option value="2016">2016</option>
                                        <option value="2015">2015</option>
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                        <option value="2011">2011</option>
                                    </select>
                                </div>
                                 <div class="register-details">
                                     <span class="register-title register-company-title">
                                        <i class="text-danger">*</i> <span class="bold">营业额</span>
                                     </span>
                                    <input type="text" name="annual_turnover1" id="annual_turnover1" placeholder="输入营业额"/>
                                    <span class="register-unit text-primary">（单位：万元人民币）</span>
                                </div>
                            </li>
                            <li class="year-li">
                                <div class="register-details">
                                     <span class="register-title register-company-title">
                                        <i class="text-danger">*</i> <span class="bold">年度</span>
                                     </span>
                                    <select name="year2" id="year2" class="">
                                        <option value="2015">2015</option>
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                        <option value="2011">2011</option>
                                        <option value="2016">2010</option>
                                    </select>
                                </div>
                                <div class="register-details">
                                     <span class="register-title register-company-title">
                                        <i class="text-danger">*</i> <span class="bold">营业额</span>
                                     </span>
                                    <input type="text" name="annual_turnover2" id="annual_turnover2" placeholder="输入营业额"/>
                                    <span class="register-unit text-primary">（单位：万元人民币）</span>
                                </div>
                            </li>
                            <li class="year-li">
                                <div class="register-details">
                                    <span class="register-title register-company-title">
                                        <i class="text-danger">*</i> <span class="bold">年度</span>
                                    </span>
                                    <select name="year3" id="year3" class="">
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                        <option value="2011">2011</option>
                                        <option value="2010">2016</option>
                                        <option value="2009">2015</option>
                                    </select>
                                </div>
                                <div class="register-details">
                                     <span class="register-title register-company-title">
                                        <i class="text-danger">*</i> <span class="bold">营业额</span>
                                     </span>
                                    <input type="text" name="annual_turnover3" id="annual_turnover3" placeholder="输入营业额"/>
                                    <span class="register-unit text-primary">（单位：万元人民币）</span>
                                </div>
                            </li>
                            <li>
                                <div class="register-details Proportion">
                                <span class="register-title register-company-title">
                                   <i class="text-danger">*</i> <span class="bold">业务分布比例</span>
                                </span>
                                <span class="ratio">
                                    <input type="text" placeholder="0" name="business_destribution_domestic" id="business_destribution_domestic"/>
                                    % 国内
                                </span>
                                <span class="ratio">
                                    <input type="text" placeholder="0" name="business_destribution_occident" id="business_destribution_occident"/>
                                    % 欧美
                                </span>
                                <span class="ratio">
                                    <input type="text" placeholder="0" name="business_destribution_asian" id="business_destribution_asian"/>
                                    % 亚洲
                                </span>
                                <span class="ratio">
                                    <input type="text" placeholder="0" name="business_destribution_other" id="business_destribution_other"/>
                                    % 其他
                                </span>
                                <span class="ratio text-danger">
                                    业务分布比例相加需等于100%
                                </span>
                            </div>
                            </li>
                        </ul>
                    </div>
                </div>
                    <div class="panel panel-primary register-panel">
                        <div class="panel-heading">业务范围（与营业执照的经营范围保持一致)<i class="text-danger" style="vertical-align: middle;margin-left:4px;">*</i></div>
                        <div class="panel-body">
                        <textarea name="business_area" id="business_area" cols="30" rows="10"></textarea>
                    </div>
                    </div>
                    <div class="panel panel-primary register-panel register-comapny">
                        <div class="panel-heading">主要客户信息 <span class="pull-right" style="margin-top: -5px;"><button type="button" value="添加" class="btn btn-success btn-sm addtr" style="margin-right:10px;">添加</button> <button type="button" value="删除" class="btn btn-danger btn-sm removetr">删除</button></span></div>
                    <div class="panel-body changepanel">
                        <table class="table table-bordered table-striped table-responsive addUsertable">
                            <thead>
                                <tr>
                                    <td><input type='checkbox' class='checkedAll'/></td>
                                    <td>
                                        <span class="bold">TOP客户名称</span>
                                    </td>
                                    <td>
                                        <span class="bold">合作范围</span>
                                    </td>
                                    <td>
                                        <span class="bold">近三年交易额 <span class="text-primary unit">(单位：万元人民币)</span></span>
                                    </td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <input type="checkbox"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的客户名称" name="customer_name1" id="customer_name1"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的合作范围"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您近三年交易额"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                    <div class="panel panel-primary register-panel register-comapny">
                    <div class="panel-heading">工厂信息 <span class="pull-right" style="margin-top: -5px;"><button type="button" value="添加" class="btn btn-success btn-sm addtr" style="margin-right:10px;">添加</button> <button type="button" value="删除" class="btn btn-danger btn-sm removetr">删除</button></span></div>
                    <div class="panel-body changepanel">
                        <table class="table table-bordered table-striped table-responsive addUsertable">
                            <thead>
                                <tr>
                                    <td><input type='checkbox' class='checkedAll'/></td>
                                    <td>
                                        <span class="bold">公司工厂/出货地址</span>
                                    </td>
                                    <td>
                                        <span class="bold">对应物料</span>
                                    </td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <input type="checkbox"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="请输入公司出货地址"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的对应物料"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                    <h4>联系人信息</h4>
                    <div class="panel panel-primary register-panel">
                    <div class="panel-heading">公司负责人</div>
                    <div class="panel-body">
                        <table class="table table-bordered table-striped table-responsive addUsertable">
                            <thead>
                                <tr>
                                    <td>
                                        <span class="bold">姓名</span>
                                    </td>
                                    <td>
                                        <span class="bold">职务</span>
                                    </td>
                                    <td>
                                        <span class="bold">办公电话</span>
                                    </td>
                                    <td>
                                        <span class="bold">电子邮箱</span>
                                    </td>
                                    <td>
                                        <span class="bold">手机</span>
                                    </td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <input type="text" placeholder="输入您的姓名" name="general_manager_name" id="general_manager_name"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的职务" name="general_manager_position" id="general_manager_position"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的办公电话" name="general_manager_office_phone" id="general_manager_office_phone"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的电子邮箱" name="general_manager_email" id="general_manager_email"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的手机号码" name="general_manager_phone" id="general_manager_phone"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                    <div class="panel panel-primary register-panel">
                    <div class="panel-heading">业务联系人<span class="pull-right" style="margin-top: -5px;"><button type="button" value="添加" class="btn btn-success btn-sm addtr" style="margin-right:10px;">添加</button> <button type="button" value="删除" class="btn btn-danger btn-sm removetr">删除</button></span></div>
                    <div class="panel-body">
                        <table class="table table-bordered table-striped table-responsive addUsertable">
                            <thead>
                                <tr>
                                    <td><input type='checkbox' class='checkedAll'/></td>
                                    <td>
                                        <span class="bold">姓名</span>                                    
                                    </td>
                                    <td>
                                        <span class="bold">职务</span>                                  
                                    </td>
                                    <td>
                                        <span class="bold">办公电话</span>                                    
                                    </td>
                                    <td>
                                        <span class="bold">电子邮箱</span>                                    
                                    </td>
                                    <td>
                                        <span class="bold">手机</span>                                    
                                    </td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="checkbox"/></td>
                                    <td>
                                        <input type="text" placeholder="输入您的姓名" name="contancts_name" id="contancts_name"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的职务" name="contancts_position" id="contancts_position"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的办公电话" name="contancts_office_phone" id="contancts_office_phone"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的电子邮箱" name="contancts_email" id="contancts_email"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的手机号码" name="contancts_phone" id="contancts_phone"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="panel panel-primary register-panel">
                    <div class="panel-heading">原厂信息(代理商必填)<span class="pull-right" style="margin-top: -5px;"><button type="button" value="添加" class="btn btn-success btn-sm addtr" style="margin-right:10px;">添加</button> <button type="button" value="删除" class="btn btn-danger btn-sm removetr">删除</button></span></div>
                    <div class="panel-body changepanel hidepanel">
                        <table class="table table-bordered table-striped table-responsive addUsertable">
                            <thead>
                                <tr>
                                    <td><input type='checkbox' class='checkedAll'/></td>
                                    <td>
                                        <i class="text-danger">*</i> <span class="bold">原厂名称</span>
                                    </td>
                                    <td>
                                        <span class="bold">原厂公司网址</span>
                                    </td>
                                    <td>
                                        <span class="bold">姓名</span>
                                    </td>
                                    <td>
                                        <span class="bold">部门及职务</span>
                                    </td>
                                    <td>
                                        <span class="bold">电子邮箱</span>
                                    </td>
                                    <td>
                                        <span class="bold">手机</span>
                                    </td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="checkbox"/></td>
                                    <td>
                                        <input type="text" placeholder="输入您的原厂名称" />
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您原厂公司网址"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的姓名"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的部门及职务"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的电子邮箱"/>
                                    </td>
                                    <td>
                                        <input type="text" placeholder="输入您的手机号码"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="panel panel-primary register-panel">
                    <div class="panel-heading">填表人信息（创建人的联系邮箱将来会作为登陆用户名，密码在认证后会发送到邮箱中，务必填写正确）<span class="pull-right" style="margin-top: -5px;"><button type="button" value="添加" class="btn btn-success btn-sm addtr" style="margin-right:10px;">添加</button> <button type="button" value="删除" class="btn btn-danger btn-sm removetr">删除</button></span></div>
                        <div class="panel-body changepanel">
                            <table class="table table-bordered table-striped table-responsive addUsertable">
                                <thead>
                                    <tr>
                                        <td><input type='checkbox' class='checkedAll'/></td>
                                        <td>
                                            <i class="text-danger">*</i> <span class="bold">姓名</span>
                                        </td>
                                        <td>
                                            <i class="text-danger">*</i> <span class="bold">部门及职务</span>
                                        </td>
                                        <td>
                                            <i class="text-danger">*</i> <span class="bold">电子邮箱</span>
                                        </td>
                                        <td>
                                            <i class="text-danger">*</i> <span class="bold">手机</span>
                                        </td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><input type="checkbox"/></td>
                                        <td>
                                            <input type="text" placeholder="输入您的姓名" name="completed_name" id="completed_name"/>
                                        </td>
                                        <td>
                                            <input type="text" placeholder="输入您的部门职务" name="completed_position" id="completed_position"/>
                                        </td>
                                        <td>
                                            <input type="text" placeholder="输入您的电子邮箱" name="completed_email" id="completed_email"/>
                                        </td>
                                        <td>
                                            <input type="text" placeholder="输入您的手机号码" name="completed_phone" id="completed_phone"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
        <script src="../js/jquery-1.11.3.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/main.js"></script>
        <script src="../js/My97DatePicker/WdatePicker.js"></script>
        <script>
            $(function() {
//      注册地址显示隐藏
                $(".addressnew").find(".addAdress").on("click",function(){
                    $(this).find("i").text("修改地址");
                    $(this).siblings(".register-address").stop().slideToggle(500);
                    $(this).find("span").toggleClass("icon-minus");
                });
            
//      重置地址添加表单
                $(".register-address").find(".resetbtn").on("click",function(){
                   $(this).parents("li").find("input").val(""); 
                   $(this).parents("li").find("select").val("CN");
                });
            
//      点击确定按钮显示注册地址
                $(".register-address").find(".surebtn").on("click",function() {
                    $(this).parents(".register-address").find("input[type='text']").each(function(){
                        var thisClass = $(this).attr("class");
                        var thisVal = $(this).val();
                        $(this).parents(".register-address").siblings(".sureAddress").find("." + thisClass).text(thisVal);
                    });
                    var optionVal = $(this).parents(".register-address").find("select").val();
                    var thisText = $(this).parents(".register-address").find("select").find("option[value='" +optionVal+ "']").text();
                    $(this).parents(".register-address").siblings(".sureAddress").find(".country").text(thisText);
                    $(this).parents(".addressnew").find(".sureAddress").css({"display":"inline-block"});
                    $(this).parents(".register-address").siblings(".addAdress").find("span").attr("class","icon-plus");
                    $(this).parents(".register-address").slideUp();
                });
                
//                点击添加按钮添加行
                $(".register-panel").find(".addtr").on("click",function() {
                    var CloneTr = $(this).parents(".register-panel").find("tr:last").clone();
                    if($(this).parents(".panel-heading").siblings(".panel-body").is(":visible")) {
                        $(this).parents(".register-panel").find("table").append(CloneTr);
                    }
                });
                
//                点击删除按钮删除行
                $(".register-panel").find(".removetr").on("click",function() {
                    var CloneTr = $(this).parents(".register-panel").find("tr:last").clone();
                    $(this).parents(".register-panel").find("tbody").find("input[type='checkbox']:checked").parents("tr").remove();
                    if($(this).parents(".register-panel").find("tbody").find("tr").length === 0) {
                        $(this).parents(".register-panel").find("table").append(CloneTr);
                    }
                });
                
//                agent_supplier checkbox 改变状态显示原厂信息 panel
                $("#agent_supplier").on("change",function() {
                   if($(this).is(":checked")) {
                       $(".hidepanel").show();
                   } else {
                       $(".hidepanel").hide();
                   }
                });
//                全选checkbox
                $(".register-panel").find(".checkedAll").on("click",function(){
                    if($(this).is(":checked")) {
                        $(this).parents("thead").siblings("tbody").find("input[type='checkbox']").prop("checked",true);
                    } else {
                        $(this).parents("thead").siblings("tbody").find("input[type='checkbox']").prop("checked",false);
                    }
                });
                
                $(".register-panel").find("tbody").find("input[type= 'checkbox']").on("click",function(){
                    if($(this).parents("tbody").find("input[type= 'checkbox']:checked").length !== $(this).parents("tbody").find("input[type= 'checkbox']").length) {
                        $(this).parents(".register-panel").find(".checkedAll").prop("checked",false);
                    }
                });
            });
        </script>
    </body>
</html>