<%-- 
    Document   : Register
    Created on : 2015-5-19, 13:56:31
    Author     : zac2078106
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/public/common/taglibs.jspf"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key="srm000001" bundle="${biaodan}"/></title>
        <script type="text/javascript" src="../public/js/My97DatePicker/WdatePicker.js" ></script>
        <script type="text/javascript" src="../public/js/jquery.js"></script>
        <script type="text/javascript" src="../public/js/jquery.min.js"></script>
        <script type="text/javascript" src="../public/js/jquery.validate.min.js"></script>
        <!--<script type="text/javascript" src="../public/js/jquery.validate.js"></script>-->
        <script type="text/javascript" src="../public/js/messages_bs_zh.js"></script>
        <script type="text/javascript" src="../public/js/jquery.metadata.js"></script>
        <link href="../public/css/byd_validate.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" src="../public/js/cookieMg.js"></script>
        <script type="text/javascript">
            var indexNum = 0;
            //年度加载
            function onLoadYear1() {
                var obj = document.getElementById("year1");
                var year = new Date().getFullYear();
                for (var i = year; i > year - 6; i--) {
                    var op = new Option(i, i);
                    obj.add(op);
                }
            }
            function onLoadYear2() {
                var obj = document.getElementById("year2");
                var year = new Date().getFullYear();
                for (var i = year-1; i > year - 7; i--) {
                    var op = new Option(i, i);
                    obj.add(op);
                }
            }
            function onLoadYear3() {
                var obj = document.getElementById("year3");
                var year = new Date().getFullYear();
                for (var i = year-2; i > year - 8; i--) {
                    var op = new Option(i, i);
                    obj.add(op);
                }
            }
            function changeYear(){
                var year = document.getElementById("year1").value;
                document.getElementById("year2").value = year -1;
                document.getElementById("year3").value = year -2;
            }
            window.onload = function() {
                onLoadYear1();
                onLoadYear2();
                onLoadYear3();
            }
            //重置确认
            function confirmd() {
                var msg = "<fmt:message key="srm000127" bundle="${biaodan}"/>";
                if (confirm(msg) == true) {
                    return true;
                } else {
                    return false;
                }
            }
            //代理商显示原厂信息
            function showOriginfactorymsg(obj) {
                if (document.getElementById("agent_supplier").checked == true) {
                    $("#originfactorymsg").show();
                } else {
                    $("#originfactorymsg").hide();
                }
            }
            //添加业务联系人
            function addContacts() {
                indexNum++;
                var newtr = "<tr>";
                newtr += "<th style='text-align: left'><fmt:message key="srm000109" bundle="${biaodan}"/></th>";
                newtr += "<td><input type='text' name='contancts_name' id='contancts_name" + indexNum + "' maxlength='75'/></td>";
                newtr += "<th style='text-align: left'><fmt:message key="srm000110" bundle="${biaodan}"/></th>";
                newtr += "<td><input type='text' name='contancts_position' id='contancts_position" + indexNum + "' maxlength='30'/></td>";
                newtr += "<th style='text-align: left'><fmt:message key="srm000111" bundle="${biaodan}"/></th>";
                newtr += "<td><input type='text' name='contancts_office_phone' id='contancts_office_phone" + indexNum + "' maxlength='40'/></td>";
                newtr += "<th style='text-align: left'><fmt:message key="srm000112" bundle="${biaodan}"/></th>";
                newtr += "<td><input type='text' name='contancts_email' id='contancts_email" + indexNum + "' class='email' onchange='trim(this)' onblur='check_email()' maxlength='2000'/><font style='font-size: 15px;color: red; display: none' id='email2_msg" + indexNum + "'><fmt:message key="srm000135" bundle="${biaodan}"/></font></td>";
                newtr += "<th style='text-align: left'><fmt:message key="srm000113" bundle="${biaodan}"/></th>";
                newtr += "<td><input type='text' name='contancts_phone' id='contancts_phone" + indexNum + "' maxlength='40'/></td>";
                $("#contacts").find("tr:last").after(newtr);
            }
            //删除联系人
            function deleteContacts() {
                if (document.getElementById("contacts").rows.length > 1) {
                    document.getElementById("contacts").deleteRow(document.getElementById("contacts").rows.length - 1);
                }
            }
            //刷新验证码
            function changeCode() {
                document.getElementById("code").src = "../common/code.jsp" + "?nocache=" + new Date().getTime();
            }
            //去除两边空格
            function trim(obj) {
                var y = document.getElementById(obj.id).value;
                document.getElementById(obj.id).value = y.replace(/(^\s*)|(\s*$)/g, "");
            }
            //年度重复验证
            function check_year() {
                var year1 = document.getElementById("year1").value;
                var year2 = document.getElementById("year2").value;
                var year3 = document.getElementById("year3").value;
                if (year2 == year1) {
                    $("#year2_msg").show();
                } else {
                    $("#year2_msg").hide();
                }
                if (year3 == year1 || year3 == year2) {
                    $("#year3_msg").show();
                } else {
                    $("#year3_msg").hide();
                }
                if (year2 != year1 && year3 != year1 && year3 != year2) {
                    return true;
                } else {
                    return false;
                }
            }
            //邮箱重复验证
            function check_email() {
                var email1 = document.getElementById("general_manager_email").value;//公司负责人邮箱
                var email3 = document.getElementById("completed_email").value;//注册邮箱
                var email2_ary = document.getElementsByName("contancts_email");//业务联系人邮箱
                for (var i = 0; i < email2_ary.length; i++) {
                    if (email2_ary[i].value != "") {
                        if (email2_ary[i].value == email1) {
                            $("#email2_msg" + i).show();
                        } else {
                            $("#email2_msg" + i).hide();
                        }
                    }
                }
                if (email2_ary.length > 1) {
                    for (var i = 0; i < email2_ary.length - 1; i++) {
                        var floag = false;
                        for (var j = i + 1; j < email2_ary.length; j++) {
                            if (email2_ary[i].value != "" && email2_ary[j].value != "") {
                                if (email2_ary[i].value == email2_ary[j].value || email2_ary[j].value == email1) {
                                    $("#email2_msg" + j).show();
                                    floag = true;
                                } else {
                                    $("#email2_msg" + j).hide();
                                }
                            }
                        }
                        if (floag) {
                            break;
                        }
                    }
                }
                if (email3 != "") {
                    for (var i = 0; i < email2_ary.length; i++) {
                        if (email3 == email1 || email3 == email2_ary[i].value) {
                            $("#email3_msg").show();
                            break;
                        } else {
                            $("#email3_msg").hide();
                        }
                    }
                }
                if (email2_ary.length > 1){
                    for (var i = 0; i < email2_ary.length; i++) {
                        if (email2_ary[i].value != email1 && email3 != email1 && email3 != email2_ary[i].value) {
                            return true;
                        } else {
                            return false;
                        }
                    }
                }else{
                    if(email2_ary != email1 && email3 != email1 && email3 != email2_ary){
                        return true;
                    }else{
                        return false;
                    }
                }
            }
            //分布比例验证
            function check_scale() {
                var numa;
                var numb;
                var numc;
                var numd;
                if ($("#business_destribution_domestic").val() == null || $("#business_destribution_domestic").val() == "") {
                    $("#business_destribution_domestic").val(0);
                    numa = 0;
                } else {
                    numa = $("#business_destribution_domestic").val();
                }
                if ($("#business_destribution_occident").val() == null || $("#business_destribution_occident").val() == "") {
                    $("#business_destribution_occident").val(0);
                    numb = 0;
                } else {
                    numb = $("#business_destribution_occident").val();
                }
                if ($("#business_destribution_asian").val() == null || $("#business_destribution_asian").val() == "") {
                    numc = $("#business_destribution_asian").val(0);
                    numc = 0;
                } else {
                    numc = $("#business_destribution_asian").val();
                }
                if ($("#business_destribution_other").val() == null || $("#business_destribution_other").val() == "") {
                    $("#business_destribution_other").val(0);
                    numd = 0;
                } else {
                    numd = $("#business_destribution_other").val();
                }
                var num = parseFloat(numa) + parseFloat(numb) + parseFloat(numc) + parseFloat(numd);
                if (num == 100) {
                    $("#scale_msg").hide();
                    return true;
                } else {
                    $("#scale_msg").show();
                    return false;
                }
            }
            //textarea输入字符数限制
            $(function() {
                //IE也能用textarea 
                $("textarea[maxlength]").keyup(function() {
                    var area = $(this);
                    var max = parseInt(area.attr("maxlength"), 10); //获取maxlength的值 
                    if (max > 0) {
                        if (area.val().length > max) { //textarea的文本长度大于maxlength 
                            area.val(area.val().substr(0, max)); //截断textarea的文本重新赋值 
                        }
                    }
                });
                //复制的字符处理问题 
                $("textarea[maxlength]").blur(function() {
                    var area = $(this);
                    var max = parseInt(area.attr("maxlength"), 10); //获取maxlength的值 
                    if (max > 0) {
                        if (area.val().length > max) { //textarea的文本长度大于maxlength 
                            area.val(area.val().substr(0, max)); //截断textarea的文本重新赋值 
                        }
                    }
                });
            });
            function referto() {
                var msg = "<fmt:message key="srm000128" bundle="${biaodan}"/>";
                if (confirm(msg) == true) {
                    $("#inputForm").validate();
                    if ($("#inputForm").valid()) {
                        if (!check_year() || !check_email()  || !check_scale()) {
                            return;
                        }
                        $("#inputForm").attr("action", "../supplierregister/Register.jsp?__METHOD=referto_submint");
                        $("#inputForm").submit();
                    }
                } else {
                    return false;
                }
            }
            function mvc_submit() {
            }
            ;
        </script>
    </head>
    <body>
        <font color="red">${error}</font>
        <div style="border: 1px solid; background: #DFEAFC;margin-bottom:10px">
            <img src="../public/images/u22.png" style="float:left;height: 75px;width:80px "/>
            <h1 style="text-align: center"><fmt:message key="srm000001" bundle="${biaodan}"/></h1>
            <!--<div style="float: right; right: 15px;top: 15px;position:absolute;"><a href="#" style="color: blue; font-size: 20px; text-decoration: underline;">English</a></div>-->
        </div>
        <div>
            <form method="post" name="inputForm" id="inputForm" >
                <!-- 品类信息-->
                <table id="" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="line-height: 30px">
                    <div style="border: 1px solid; background: #DFEAFC;margin-bottom: 10px;">
                        <h3><fmt:message key="srm000002" bundle="${biaodan}"/></h3>
                    </div>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000003" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td>
                            <select id="business_category" name="business_category" style="width:200px">
                                <option value="<fmt:message key="srm000004" bundle="${biaodan}"/>"><fmt:message key="srm000004" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000005" bundle="${biaodan}"/>"><fmt:message key="srm000005" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000006" bundle="${biaodan}"/>"><fmt:message key="srm000006" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000007" bundle="${biaodan}"/>"><fmt:message key="srm000007" bundle="${biaodan}"/></option>
                            </select>
                        </td>
                    </tr>
                    <tr style="vertical-align: top">
                        <th style="text-align: left"><fmt:message key="srm000008" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td colspan="3">
                            <!-- 物料大类 -->
                            <c:forEach items="${materials}" var="materials" varStatus="status">
                                <c:if test="${status.index=='10'}"><br></c:if>
                                <input type="checkbox" name="material_category" value="${materials.material_value}" class="required"/><font style="font-size:15px">${materials.material_name}</font>&nbsp;&nbsp;
                            </c:forEach>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000023" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="registered_comapny_name" id="registered_comapny_name" style="width: 200px" class="required" maxlength="120"/></td>
                        <th style="text-align: left"><fmt:message key="srm000024" bundle="${biaodan}"/></th>
                        <td><input type="text" name="registered_comapny_enname" id="registered_comapny_enname" style="width: 200px" maxlength="120"/></td>
                    </tr>
                </table>
                <!-- 公司简介-->
                <table id="" width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <div style="border: 1px solid; background: #DFEAFC;margin-bottom: 5px;margin-top: 10px">
                        <h3><fmt:message key="srm000025" bundle="${biaodan}"/><font color="red">*</font></h3>
                    </div>
                    <tr>
                        <td>
                            <textarea name="company_description" id="company_description" rows="5" style="width: 90%" class="required" maxlength="2000"></textarea>
                        </td>
                    </tr>
                </table>
                <!-- 公司基本信息 -->
                <table id="" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="line-height: 30px">
                    <div style="border: 1px solid; background: #DFEAFC;margin-top: 5px;margin-bottom: 5px">
                        <h3><fmt:message key="srm000026" bundle="${biaodan}"/></h3>
                    </div>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000027" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td>
                            <select id="company_type" name="company_type" style="width:80%">
                                <option value="<fmt:message key="srm000028" bundle="${biaodan}"/>"><fmt:message key="srm000028" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000029" bundle="${biaodan}"/>"><fmt:message key="srm000029" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000030" bundle="${biaodan}"/>"><fmt:message key="srm000030" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000031" bundle="${biaodan}"/>"><fmt:message key="srm000031" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000032" bundle="${biaodan}"/>"><fmt:message key="srm000032" bundle="${biaodan}"/></option>
                            </select>
                        </td>
                        <th style="text-align: left"><fmt:message key="srm000033" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td>
                            <input type="checkbox" name="business_type" id="manufacturers_supplier" value="N1" class="required" onclick="showOriginfactorymsg(this);" /><font><fmt:message key="srm000034" bundle="${biaodan}"/></font>&nbsp;
                            <input type="checkbox" name="business_type" id="agent_supplier" value="N2" onclick="showOriginfactorymsg(this);"/><font><fmt:message key="srm000035" bundle="${biaodan}"/></font>&nbsp;
                            <input type="checkbox" name="business_type" id="outsourcingcompany_supplier" value="N3" onclick="showOriginfactorymsg(this);"/><font><fmt:message key="srm000036" bundle="${biaodan}"/></font>&nbsp;
                            <input type="checkbox" name="business_type" id="retailer_supplier" value="N4" onclick="showOriginfactorymsg(this);"/><font><fmt:message key="srm000037" bundle="${biaodan}"/></font>&nbsp;
                            <input type="checkbox" name="business_type" id="serviceprovider_supplier" value="N5" onclick="showOriginfactorymsg(this);"/><font><fmt:message key="srm000038" bundle="${biaodan}"/></font>&nbsp;
                            <input type="checkbox" name="business_type" id="logisticscarriers_supplier" value="N6" onclick="showOriginfactorymsg(this);"/><font><fmt:message key="srm000039" bundle="${biaodan}"/></font>&nbsp;
                            <input type="checkbox" name="business_type" id="reclaimingagents_supplier" value="N7" onclick="showOriginfactorymsg(this);"/><font><fmt:message key="srm000040" bundle="${biaodan}"/></font>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000041" bundle="${biaodan}"/></th>
                        <td><input type="text" name="company_previous_name" id="company_previous_name" style="width:80%" maxlength="160"/></td>
                        <th style="text-align: left"><fmt:message key="srm000042" bundle="${biaodan}"/></th>
                        <td><input type="text" name="parent_company" id="parent_company" style="width:50%" maxlength="75"/></td>
                    </tr>
                    <tr style="vertical-align: top">
                        <th style="text-align: left;"><fmt:message key="srm000043" bundle="${biaodan}"/></th>
                        <td colspan="1">
                            <!-- 公司注册地址 -->
                            <table id="" width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th style="text-align: left;width: 30%"><fmt:message key="srm000044" bundle="${biaodan}"/><font color="red">*</font></th>
                                    <!--<td><input type="text" name="register_address_country" id="register_address_country" class="required"/></td>-->
                                    <td>
                                        <select id="register_address_country" name="register_address_country" style="width:70%">
                                            <c:forEach items="${countrylist}" var="countrys">
                                                <option  value="${countrys.country_code}" title="${countrys.country_name}">${countrys.country_name}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th style="text-align: left;width: 30%"><fmt:message key="srm000046" bundle="${biaodan}"/><font color="red">*</font></th>
                                    <td><input type="text" name="register_address_province" id="register_address_province" class="required" maxlength="30"/></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left;width: 30%"><fmt:message key="srm000047" bundle="${biaodan}"/><font color="red">*</font></th>
                                    <td><input type="text" name="register_address_city" id="register_address_city" class="required" maxlength="30"/></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left;width: 30%"><fmt:message key="srm000048" bundle="${biaodan}"/></th>
                                    <td><input type="text" name="register_address_town" id="register_address_town" maxlength="30"/></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left;width: 30%"><fmt:message key="srm000049" bundle="${biaodan}"/></th>
                                    <td><input type="text" name="register_address_road" id="register_address_road" maxlength="30"/></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left;width: 30%"><fmt:message key="srm000050" bundle="${biaodan}"/></th>
                                    <td><input type="text" name="register_address_postalcode" id="register_address_postalcode" maxlength="30"/></td>
                                </tr>
                            </table>
                        </td>
                        <th style="text-align: left"><fmt:message key="srm000051" bundle="${biaodan}"/></th>
                        <td colspan="1">
                            <!-- 公司办公地址 -->
                            <table id="" width="100%" border="0" cellpadding="0" cellspacing="0" >
                                <tr>
                                    <th style="text-align: left;width: 20%"><fmt:message key="srm000044" bundle="${biaodan}"/><font color="red">*</font></th>
                                    <td>
                                        <select id="office_address_country" name="office_address_country" style="width:35%">
                                            <c:forEach items="${countrylist}" var="countrys">
                                                <option  value="${countrys.country_code}" title="${countrys.country_name}">${countrys.country_name}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                    <!--<td><input type="text" name="office_address_country" id="office_address_country"  style="width: 35%" class="required"/></td>-->
                                </tr>
                                <tr>
                                    <th style="text-align: left"><fmt:message key="srm000046" bundle="${biaodan}"/><font color="red">*</font></th>
                                    <td><input type="text" name="office_address_province" id="office_address_province" style="width: 35%" class="required" maxlength="30"/></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left"><fmt:message key="srm000047" bundle="${biaodan}"/><font color="red">*</font></th>
                                    <td><input type="text" name="office_address_city" id="office_address_city" style="width: 35%" class="required" maxlength="30"/></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left"><fmt:message key="srm000048" bundle="${biaodan}"/></th>
                                    <td><input type="text" name="office_address_town" id="office_address_town" style="width: 35%" maxlength="30"/></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left"><fmt:message key="srm000049" bundle="${biaodan}"/></th>
                                    <td><input type="text" name="office_address_road" id="office_address_road" style="width: 35%" maxlength="30"/></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left"><fmt:message key="srm000050" bundle="${biaodan}"/></th>
                                    <td><input type="text" name="office_address_postalcode" id="office_address_postalcode" style="width: 35%" maxlength="30"/></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000052" bundle="${biaodan}"/></th>
                        <td><input type="text" name="company_web" id="company_web" style="width:80%" maxlength="75"/></td>
                        <th style="text-align: left"><fmt:message key="srm000053" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td>
                            <select id="currency" name="currency" style="width:50%" class="required">
                                <c:forEach items="${currencylist}" var="currencys">
                                    <option  value="${currencys.currency_code}" title="${currencys.currency_name}">${currencys.currency_name}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000055" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td colspan="1">
                            <input type="text" name="register_capital" id="register_capital" style="width:40%" class="number required isPositive"/>
                            <select id="unit" name="unit" style="width:90px" class="required">
                                <c:forEach items="${currencylist}" var="currencys">
                                    <option  value="${currencys.currency_code}" title="${currencys.currency_name}">${currencys.currency_name}</option>
                                </c:forEach>
                            </select>
                            <font style="font-size: 12px;color: blue"><fmt:message key="srm000056" bundle="${biaodan}"/></font>
                        </td>
                        <th style="text-align: left"><fmt:message key="srm000057" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="worker" id="worker" style="width:50%" class="required digits isPositive"/><font style="font-size: 12px;color: blue"><fmt:message key="srm000071" bundle="${biaodan}"/></font></td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000058" bundle="${biaodan}"/></th>
                        <td><input type="text" name="factory_area" id="factory_area" style="width:50%" class="number isPositive"><font style="font-size: 12px;color: blue"><fmt:message key="srm000072" bundle="${biaodan}"/></font></td>
                        <th style="text-align: left"><fmt:message key="srm000059" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td>
                            <select id="factory_property" name="factory_property" style="width:50%">
                                <option value="<fmt:message key="srm000060" bundle="${biaodan}"/>"><fmt:message key="srm000060" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000061" bundle="${biaodan}"/>"><fmt:message key="srm000061" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000062" bundle="${biaodan}"/>"><fmt:message key="srm000062" bundle="${biaodan}"/></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000063" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="business_license_number" id="business_license_number" style="width:80%" class="required" maxlength="75"/></td>
                        <th style="text-align: left"><fmt:message key="srm000064" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="tax_register_number" id="tax_register_number" style="width:50%" class="required" maxlength="75"/></td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000065" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="organization_code" id="organization_code" style="width:80%" class="required" maxlength="75"/></td>
                        <th style="text-align: left"><fmt:message key="srm000066" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td>
                            <select id="tax_type" name="tax_type" style="width:50%">
                                <option value="<fmt:message key="srm000067" bundle="${biaodan}"/>"><fmt:message key="srm000067" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000068" bundle="${biaodan}"/>"><fmt:message key="srm000068" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000069" bundle="${biaodan}"/>"><fmt:message key="srm000069" bundle="${biaodan}"/></option>
                                <option value="<fmt:message key="srm000070" bundle="${biaodan}"/>"><fmt:message key="srm000070" bundle="${biaodan}"/></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000075" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" id="company_register_date" name="company_register_date" class="dateISO required" style="width:80%" onFocus="WdatePicker({lang: 'zh_cn', dateFmt: 'yyyy-MM-dd'})"/></td>
                        <th style="text-align: left"><fmt:message key="srm000076" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="tax_rate" id="tax_rate" style="width:50%" class="number required isPositive"/><font style="font-size: 12px;color: blue"><fmt:message key="srm000073" bundle="${biaodan}"/></font></td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000077" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="corporate_representative" id="corporate_representative" style="width:80%" class="required" maxlength="75"/></td>
                    </tr>
                </table>
                <!-- 公司详细信息 -->
                <div style="border: 1px solid; background: #DFEAFC;margin-top: 10px">
                    <h3><fmt:message key="srm000078" bundle="${biaodan}"/></h3>
                </div>
                <!-- 经营状况 -->
                <table id="" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="line-height: 30px">
                    <div style="border: 1px solid; background: #DFEAFC;margin-bottom: 10px;height: 30px;line-height: 30px">
                        <font><fmt:message key="srm000079" bundle="${biaodan}"/></font>
                    </div>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000080" bundle="${biaodan}"/></th>
                        <td colspan="1">
                            <input type="radio" name="company_rank"  id="" checked="checked" value="Y1"/>
                            <label><font style="font-size:15px"><fmt:message key="srm000081" bundle="${biaodan}"/></font></label>&nbsp;&nbsp;
                            <input type="radio" name="company_rank"  id=""  value="Y2"/>
                            <label><font style="font-size:15px"><fmt:message key="srm000082" bundle="${biaodan}"/></font></label>&nbsp;&nbsp;
                            <input type="radio" name="company_rank"  id=""  value="N"/>
                            <label><font style="font-size:15px"><fmt:message key="srm000083" bundle="${biaodan}"/></font></label>
                        </td>
                        <td colspan="1">
                            <span style="text-align: left;font-weight: bold;color: black"><fmt:message key="srm000084" bundle="${biaodan}"/><font color="red">*</font></span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="company_property"  id="" checked="checked" value="Y"/><font style="font-size: 15px"><fmt:message key="srm000085" bundle="${biaodan}"/></font>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="company_property"  id="" value="N" /><font style="font-size: 15px"><fmt:message key="srm000083" bundle="${biaodan}"/></font>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000086" bundle="${biaodan}"/></th>
                        <td><input type="text" name="quality_standard" id="quality_standard" maxlength="75"/></td>
                        <td colspan="1">
                            <span style="text-align: left;font-weight: bold;color: black"><fmt:message key="srm000087" bundle="${biaodan}"/><font color="red">*</font></span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="safe_quality_certificate"  id="" checked="checked" value="Y"/><font style="font-size: 15px"><fmt:message key="srm000085" bundle="${biaodan}"/></font>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="safe_quality_certificate"  id="" value="N" /><font style="font-size: 15px"><fmt:message key="srm000083" bundle="${biaodan}"/></font>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000088" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td>
                            <select id="year1" name="year1" style="width:150px" onblur="check_year()" onchange="changeYear()">
                            </select>
                        </td>
                        <td colspan="1">
                            <span style="text-align: left;font-weight: bold;color: black"><fmt:message key="srm000089" bundle="${biaodan}"/><font color="red">*</font></span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" name="annual_turnover1" id="annual_turnover1" class="number required isPositive"/><font style="font-size: 12px;color: blue" ><fmt:message key="srm000074" bundle="${biaodan}"/></font>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000088" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td>
                            <select id="year2" name="year2" style="width:150px" onblur="check_year()">
                            </select><font style="font-size: 15px;color: red; display: none" id="year2_msg"><fmt:message key="srm000136" bundle="${biaodan}"/></font>
                        </td>
                        <td colspan="1">
                            <span style="text-align: left;font-weight: bold;color: black"><fmt:message key="srm000089" bundle="${biaodan}"/><font color="red">*</font></span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" name="annual_turnover2" id="annual_turnover2" class="number required isPositive"/><font style="font-size: 12px;color: blue" ><fmt:message key="srm000074" bundle="${biaodan}"/></font>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000088" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td>
                            <select id="year3" name="year3" style="width:150px" onblur="check_year()">
                            </select><font style="font-size: 15px;color: red; display: none" id="year3_msg"><fmt:message key="srm000136" bundle="${biaodan}"/></font>
                        </td>
                        <td colspan="1">
                            <span style="text-align: left;font-weight: bold;color: black"><fmt:message key="srm000089" bundle="${biaodan}"/><font color="red">*</font></span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" name="annual_turnover3" id="annual_turnover3" class="number required isPositive"/><font style="font-size: 12px;color: blue" ><fmt:message key="srm000074" bundle="${biaodan}"/></font>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000090" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td colspan="3">
                            <input type="text" name="business_destribution_domestic" id="business_destribution_domestic" style="width:80px;" class="number isPositive" onblur="check_scale()"/><font style="font-size:15px"><fmt:message key="srm000091" bundle="${biaodan}"/></font>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" name="business_destribution_occident"id="business_destribution_occident" style="width:80px;" class="number isPositive" onblur="check_scale()"/><font style="font-size:15px"><fmt:message key="srm000092" bundle="${biaodan}"/></font>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" name="business_destribution_asian" id="business_destribution_asian" style="width:80px;" class="number isPositive" onblur="check_scale()"/><font style="font-size:15px"><fmt:message key="srm000093" bundle="${biaodan}"/></font>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" name="business_destribution_other" id="business_destribution_other" style="width:80px;" class="number isPositive" onblur="check_scale()"/><font style="font-size:15px"><fmt:message key="srm000094" bundle="${biaodan}"/></font>&nbsp;&nbsp;<font style="font-size: 15px;color: red; display: none" id="scale_msg"><fmt:message key="srm000129" bundle="${biaodan}"/></font>
                        </td>
                    </tr>
                </table>
                <!-- 业务范围（与营业执照的经营范围保持一致） -->
                <table id="" width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <div style="border: 1px solid; background: #DFEAFC;margin-bottom: 5px;margin-top: 5px;height: 30px;line-height: 30px">
                        <span><fmt:message key="srm000095" bundle="${biaodan}"/><font color="red">*</font></span>
                    </div>
                    <tr>
                        <td>
                            <textarea name="business_area" id="business_area" rows="3" style="width: 90%" class="required" maxlength="75"></textarea>
                        </td>
                    </tr>
                </table>
                <!-- 主要客户信息 -->
                <table id="" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="line-height: 30px">
                    <div style="border: 1px solid; background: #DFEAFC;margin-bottom: 10px;margin-top: 10px;height: 30px;line-height: 30px">
                        <span><fmt:message key="srm000096" bundle="${biaodan}"/></span>
                    </div>
                    <tr>
                        <th style="text-align: left;width: 20%"><fmt:message key="srm000097" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td style="width: 30%"><input type="text" name="customer_name1" id="customer_name1" style="width: 75%" class="required" maxlength="75"/></td>
                        <th style="text-align: left;width: 15%"><fmt:message key="srm000098" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td style="width: 30%"><input type="text" name="three_year_turnover1" id="three_year_turnover1" class="number required isPositive"/><font style="font-size: 12px;color: blue"><fmt:message key="srm000074" bundle="${biaodan}"/></font></td>
                    </tr>
                    <tr>
                        <th style="text-align: left;width: 20%"><fmt:message key="srm000099" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="business_range1" id="business_range1" style="width: 75%" class="required" maxlength="75"/></td>
                    </tr>
                    <tr>
                        <th style="text-align: left;width: 20%"><fmt:message key="srm000100" bundle="${biaodan}"/></th>
                        <td style="width: 30%"><input type="text" name="customer_name2" id="customer_name2" style="width: 75%" maxlength="75"/></td>
                        <th style="text-align: left;width: 15%"><fmt:message key="srm000098" bundle="${biaodan}"/></th>
                        <td style="width: 30%"><input type="text" name="three_year_turnover2" id="three_year_turnover2" class="isPositive number"/><font style="font-size: 12px;color: blue"><fmt:message key="srm000074" bundle="${biaodan}"/></font></td>
                    </tr>
                    <tr>
                        <th style="text-align: left;width: 20%"><fmt:message key="srm000099" bundle="${biaodan}"/></th>
                        <td><input type="text" name="business_range2" id="business_range2" style="width: 75%" maxlength="75"/></td>
                    </tr>
                    <tr>
                        <th style="text-align: left;width: 20%"><fmt:message key="srm000101" bundle="${biaodan}"/></th>
                        <td style="width: 30%"><input type="text" name="customer_name3" id="customer_name3" style="width: 75%" maxlength="75"/></td>
                        <th style="text-align: left;width: 15%"><fmt:message key="srm000098" bundle="${biaodan}"/></th>
                        <td style="width: 30%"><input type="text" name="three_year_turnover3" id="three_year_turnover3" class="isPositive number"/><font style="font-size: 12px;color: blue"><fmt:message key="srm000074" bundle="${biaodan}"/></font></td>
                    </tr>
                    <tr>
                        <th style="text-align: left;width: 20%"><fmt:message key="srm000099" bundle="${biaodan}"/></th>
                        <td><input type="text" name="business_range3" id="business_range3" style="width: 75%" maxlength="75"/></td>
                    </tr>
                </table>
                <!-- 工厂信息 -->
                <table id="" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="line-height: 30px">
                    <div style="border: 1px solid; background: #DFEAFC;margin-bottom: 10px;margin-top: 10px;height: 30px;line-height: 30px">
                        <span><fmt:message key="srm000102" bundle="${biaodan}"/></span>
                    </div>
                    <tr>
                        <th style="text-align: left;width: 20%"><fmt:message key="srm000103" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td style="width: 30%"><input type="text" name="factory_address1" id="factory_address1" style="width: 75%" class="required" maxlength="75"/></td>
                        <th style="text-align: left;width: 15%"><fmt:message key="srm000104" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td style="width: 30%"><input type="text" name="material1" id="material1" style="width: 75%" class="required" maxlength="75"/></td>
                    </tr>
                    <tr>
                        <th style="text-align: left;width: 20%"><fmt:message key="srm000105" bundle="${biaodan}"/></th>
                        <td style="width: 30%"><input type="text" name="factory_address2" id="factory_address2" style="width: 75%" maxlength="75"/></td>
                        <th style="text-align: left;width: 15%"><fmt:message key="srm000104" bundle="${biaodan}"/></th>
                        <td style="width: 30%"><input type="text" name="material2" id="material2" style="width: 75%" maxlength="75"/></td>
                    </tr>
                    <tr>
                        <th style="text-align: left;width: 20%"><fmt:message key="srm000106" bundle="${biaodan}"/></th>
                        <td style="width: 30%"><input type="text" name="factory_address3" id="factory_address3" style="width: 75%" maxlength="75"/></td>
                        <th style="text-align: left;width: 15%"><fmt:message key="srm000104" bundle="${biaodan}"/></th>
                        <td style="width: 30%"><input type="text" name="material3" id="material3" style="width: 75%" maxlength="75"/></td>
                    </tr>
                </table>
                <!-- 联系人信息 -->
                <div style="border: 1px solid; background: #DFEAFC;margin-top: 10px">
                    <h3><fmt:message key="srm000107" bundle="${biaodan}"/></h3>
                </div>
                <!--公司负责人信息-->
                <table id="" width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <div style="border: 1px solid; background: #DFEAFC;margin-bottom: 10px;height: 30px;line-height: 30px">
                        <font><fmt:message key="srm000108" bundle="${biaodan}"/></font>
                    </div>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000109" bundle="${biaodan}"/></th>
                        <td><input type="text" name="general_manager_name" id="general_manager_name"  maxlength="75"/></td>
                        <th style="text-align: left"><fmt:message key="srm000110" bundle="${biaodan}"/></th>
                        <td><input type="text" name="general_manager_position" id="general_manager_position" maxlength="30"/></td>
                        <th style="text-align: left"><fmt:message key="srm000111" bundle="${biaodan}"/></th>
                        <td><input type="text" name="general_manager_office_phone" id="general_manager_office_phone" maxlength="40"/></td>
                        <th style="text-align: left"><fmt:message key="srm000112" bundle="${biaodan}"/></th>
                        <td><input type="text" name="general_manager_email" id="general_manager_email" class="email" onchange="trim(this)" onblur="check_email()" maxlength="2000"/></td>
                        <th style="text-align: left"><fmt:message key="srm000113" bundle="${biaodan}"/></th>
                        <td><input type="text" name="general_manager_phone" id="general_manager_phone"  maxlength="40"/></td>
                    </tr>
                </table>
                <!--业务联系人-->
                <table id="contacts" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="line-height: 30px">
                    <div style="border: 1px solid; background: #DFEAFC;margin-bottom: 10px;margin-top: 10px;height: 30px;line-height: 30px;">
                        <font style="float: left"><fmt:message key="srm000114" bundle="${biaodan}"/></font>
                        <span style="float: right">
                            <input name="" type="button" id="" value="<fmt:message key="srm000125" bundle="${biaodan}"/>" style="width:45px;height:20px;" onclick="addContacts()"/>
                            <input name="" type="button" id="" value="<fmt:message key="srm000126" bundle="${biaodan}"/>" style="width:45px;height:20px;" onclick="deleteContacts()"/>
                        </span>
                    </div>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000109" bundle="${biaodan}"/></th>
                        <td><input type="text" name="contancts_name" id="contancts_name"  maxlength="75"/></td>
                        <th style="text-align: left"><fmt:message key="srm000110" bundle="${biaodan}"/></th>
                        <td><input type="text" name="contancts_position" id="contancts_position"  maxlength="30"/></td>
                        <th style="text-align: left"><fmt:message key="srm000111" bundle="${biaodan}"/></th>
                        <td><input type="text" name="contancts_office_phone" id="contancts_office_phone"  maxlength="40"/></td>
                        <th style="text-align: left"><fmt:message key="srm000112" bundle="${biaodan}"/></th>
                        <td><input type="text" name="contancts_email" id="contancts_email" class="email" onblur="check_email()" onchange="trim(this)" maxlength="2000"/><font style="font-size: 15px;color: red; display: none" id="email2_msg0"><fmt:message key="srm000135" bundle="${biaodan}"/></font></td>
                        <th style="text-align: left"><fmt:message key="srm000113" bundle="${biaodan}"/></th>
                        <td><input type="text" name="contancts_phone" id="contancts_phone" maxlength="40"/></td>
                    </tr>
                </table>
                <!--原厂信息-->
                <table id="originfactorymsg" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="line-height: 30px;display: none">
                    <div style="border: 1px solid; background: #DFEAFC;margin-bottom: 10px;margin-top: 10px;height: 30px;line-height: 30px">
                        <font><fmt:message key="srm000115" bundle="${biaodan}"/></font>
                    </div>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000116" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td colspan="2"><input type="text" name="original_factory" id="original_factory" style="width:80%" class="required" maxlength="75"/></td>
                        <th style="text-align: left"><fmt:message key="srm000117" bundle="${biaodan}"/></th>
                        <td colspan="2"><input type="text" name="original_factory_web" id="original_factory_web" style="width:80%" maxlength="75"/></td>
                    </tr>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000109" bundle="${biaodan}"/></th>
                        <td><input type="text" name="original_factory_name" id="original_factory_name" maxlength="75"/></td>
                        <th style="text-align: left"><fmt:message key="srm000118" bundle="${biaodan}"/></th>
                        <td><input type="text" name="original_factory_position" id="original_factory_position"  maxlength="30"/></td>
                        <th style="text-align: left"><fmt:message key="srm000112" bundle="${biaodan}"/></th>
                        <td><input type="text" name="original_factory_email" id="original_factory_email" class="email" onchange="trim(this)" maxlength="2000"/></td>
                        <th style="text-align: left"><fmt:message key="srm000113" bundle="${biaodan}"/></th>
                        <td><input type="text" name="original_factory_phone" id="original_factory_phone" maxlength="40"/></td>
                    </tr>
                </table>
                <!--填表人信息-->
                <table id="" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="line-height: 30px;">
                    <div style="border: 1px solid; background: #DFEAFC;margin-bottom: 10px;margin-top: 10px;height: 30px;line-height: 30px">
                        <font><fmt:message key="srm000119" bundle="${biaodan}"/></font>
                    </div>
                    <tr>
                        <th style="text-align: left"><fmt:message key="srm000109" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="completed_name" id="completed_name" class="required" maxlength="75"/></td>
                        <th style="text-align: left"><fmt:message key="srm000118" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="completed_position" id="completed_position" class="required" maxlength="30"/></td>
                        <th style="text-align: left"><fmt:message key="srm000112" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="completed_email" id="completed_email" class="required email" onblur="check_email()" onchange="trim(this)" maxlength="2000"/><font style="font-size: 15px;color: red; display: none" id="email3_msg"><fmt:message key="srm000135" bundle="${biaodan}"/></font></td>
                        <th style="text-align: left"><fmt:message key="srm000113" bundle="${biaodan}"/><font color="red">*</font></th>
                        <td><input type="text" name="completed_phone" id="completed_phone" class="required" maxlength="40"/></td>
                    </tr>
                </table>
                <!--                <table style="line-height: 30px;">
                                    <th style="text-align: left"><fmt:message key="srm000120" bundle="${biaodan}"/><font color="red">*</font></th>
                                    <td colspan="1">
                                        <input type="text" name="rand" id="rand" style="vertical-align:middle"/>
                                        <img id="code" border=0 src="../common/code.jsp" onclick="changeCode()" style="vertical-align:middle">
                                        <a href="javascript:changeCode();"><font style="font-size: 15px;vertical-align:middle"><fmt:message key="srm000121" bundle="${biaodan}"/></font></a>
                                    </td>
                                </table>-->
                <div style="width: 100%; margin: 0px auto; padding: 10px 0px 10px 0px;text-align:center;">
                    <input name="referto_submint" id="referto_submint" style="width: 70px; margin-right: 20px" type="button" value= "<fmt:message key="srm000122" bundle="${biaodan}"/>" onclick="referto()"/>
                    <input name="reset" id="reset" type="reset" style="width: 70px;" value= "<fmt:message key="srm000123" bundle="${biaodan}"/>" onclick=" return confirmd()"/>
                </div>
            </form>
        </div>
    </body>
</html>
