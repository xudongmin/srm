<%-- 
    Document   : Login
    Created on : 2015-5-7, 14:24:57
    Author     : zjl2084149
--%>

<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/public/common/taglibs.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title><fmt:message key="srm000001" bundle="${messages}"/></title>
            <link href="../css/login-new.css" rel='stylesheet' type='text/css'/>
            <script type="text/javascript" src="../public/js/cookieMg.js"></script>
            <style type='text/css'>
                A:link {//未访问
                        font-size: 14px; 
                        color: #000000;
                        text-decoration: none;
                }
                A:visited {//已访问
                           font-size: 14px; 
                           color: #000000;
                           text-decoration: none;
                }
                A:active {//被选择的
                          font-size: 14px; 
                          color: #0099ff;
                          text-decoration: none;
                }
                A:hover {//有鼠标悬停
                         font-size: 14px;
                         color: #ff6102;
                         text-decoration: none;
                }
                ul{
                    list-style-type: none;/*取消li前面的园点*/
                }


                .li1{
                    position:absolute;
                    left: 500px;/*li 区块大小*/
                    top:582px;
                    text-align:center;/*li文本居中*/
                    width: 15px;/*li 大小*/
                    height: 15px;/*li 大小*/
                    border-style: solid;/*li 边框样式*/
                    border-color: #F2D8CA;/*li 边框color*/
                    border-width: thin;/*设置li 边框线条*/
                    background-color: #E6E6FA;
                }

                .li2 {
                    position:absolute;
                    left: 520px;
                    top:582px;
                    text-align:center;
                    width: 15px; 
                    height: 15px;
                    border-style: solid;
                    border-color: #F2D8CA;
                    border-width: thin;
                    background-color: #E6E6FA;
                }

                .li3 {
                    position:absolute;
                    left: 540px;
                    top:582px;
                    text-align:center;
                    width: 15px; 
                    height: 15px;
                    border-style: solid;
                    border-color: #F2D8CA;
                    border-width: thin;
                    background-color: #E6E6FA;
                }
                .li4 {
                    position:absolute;
                    left: 560px;
                    top:582px;
                    text-align:center;
                    width: 15px; 
                    height: 15px;
                    border-style: solid;
                    border-color: #F2D8CA;
                    border-width: thin;
                    background-color: #E6E6FA;
                }
                .li5 {
                    position:absolute;
                    left: 580px;
                    top:582px;
                    text-align:center;
                    width: 15px; 
                    height: 15px;
                    border-style: solid;
                    border-color: #F2D8CA;
                    border-width: thin;
                    background-color: #E6E6FA;
                }
            </style>
            <script type="text/javascript">
//                function changeCode() {
//                    document.getElementById("code").src = "../common/code.jsp?nocache=" + new Date().getTime();
//                }
                function li1() /*触发mouseover事件，改变第一张图片*/
                {
                    document.getElementById("img").src = "../public/images/u1.jpg";
                    document.getElementById("li1").style.backgroundColor = "#FFAA33";
                    document.getElementById("li2").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li3").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li4").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li5").style.backgroundColor = "#E6E6FA";
                }
                function li2() /*触发mouseover事件，改变第二张图片*/
                {
                    document.getElementById("img").src = "../public/images/u2.jpg";
                    document.getElementById("li1").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li2").style.backgroundColor = "#FFAA33";
                    document.getElementById("li3").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li4").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li5").style.backgroundColor = "#E6E6FA";
                }
                function li3()/*触发mouseover事件，改变第三张图片*/
                {
                    document.getElementById("img").src = "../public/images/u3.png";
                    document.getElementById("li1").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li2").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li3").style.backgroundColor = "#FFAA33";
                    document.getElementById("li4").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li5").style.backgroundColor = "#E6E6FA";
                }
                function li4()/*触发mouseover事件，改变第三张图片*/
                {
                    document.getElementById("img").src = "../public/images/u4.png";
                    document.getElementById("li1").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li2").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li3").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li4").style.backgroundColor = "#FFAA33";
                    document.getElementById("li5").style.backgroundColor = "#E6E6FA";
                }
                function li5()/*触发mouseover事件，改变第三张图片*/
                {
                    document.getElementById("img").src = "../public/images/u5.jpg";
                    document.getElementById("li1").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li2").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li3").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li4").style.backgroundColor = "#E6E6FA";
                    document.getElementById("li5").style.backgroundColor = "#FFAA33";
                }
                ;
            </script>
    </head>
    <body>
        <!--<font color="red">${error}</font>-->
        <div style="font-size: 12px;width: 1200px;margin: 0 auto;">
            <div class="head">
                <div class="logo" style="background-color: #DFEAFC;border: 1px solid;width: 1200px;height: 75px;text-align: center;font-size: 32px;font-weight: 700;">
                    <img src="../public/images/u0.png" style="float: left;width: 77px;height: 75px;" />
                    <span style="line-height: 75px"><fmt:message key="srm000001" bundle="${messages}"/></span>
                    </div>
                </div>
            <div  class="content" style="width: 1200px;padding: 0px;">
                <div class="left" style="float: left;">
                    <!--<div style="margin-bottom: 0px;">-->
                    <img src="../public/images/u1.jpg" style="width: 800px;height: 532px;" id="img" class="img"/>
                    <ul>
                        <li id="li1" class="li1" onmouseover="li1()">1</li>
                        <li id="li2" class="li2" onmouseover="li2()">2</li>
                        <li id="li3" class="li3" onmouseover="li3()">3</li>
                        <li id="li4" class="li4" onmouseover="li4()">4</li>
                        <li id="li5" class="li5" onmouseover="li5()">5</li>
                    </ul>
                    <!--</div>-->
                    <div class="purannounce"  style="width: 798px;height: 728px;overflow: hidden;border: 1px solid;">
                        <div class="left-bottom" style="background-color: #DFEAFC;height: 50px;border-bottom: 1px solid;text-align: center;">
                            <span class="" style="width: 800px;font-weight:700;font-size:28px;height: 50px;line-height: 50px;"><fmt:message key="srm000002" bundle="${messages}"/></span>
                        </div>
                        <c:forEach items="${purBidAnc}" var="purBidAnnounce">
                            <div style="font-size: 18px;height: 20px;margin: 20px 30px auto;">
                                <div class="purBidannounce" style="float: left;width: 585px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><a href="../announce/PurBidAnnounce.jsp?strContextId=${purBidAnnounce.strContextId}" target="_blank" title="${purBidAnnounce.title}">${purBidAnnounce.title}</a></div>
                                <div style="float: right;margin-right: 10px;">${purBidAnnounce.creation_date}</div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="right" style="float: right;">
                    <div class="login" style="border: 1px solid;width: 385px;height: 260px;" >
                        <div class="logintitle" style="background-color: #DFEAFC;width: 385px; height: 50px;text-align:center;border-bottom: 1px solid;">
                            <span class="title" style="font-weight:700;font-size:28px;line-height: 50px;"><fmt:message key="srm000003" bundle="${messages}"/></span>
                        </div>
                        <form id="form" action="${serverName}OA_HTML/Login.jsp">
                            <div class="logindiv" style="margin-top: 24px; margin-left: 35px;width: 300px;">

                                <div style="height: 15px;color: red;margin-left: 200px;">
                                    <c:if test="${codeResult=='0'}"><fmt:message key="srm000004" bundle="${messages}"/></c:if>
                                    </div>
                                    <div class="loginUser">
                                        <span class="user" style="width: 76px;height: 27px;font-size: 24px;"><label for="userName"><fmt:message key="srm000005" bundle="${messages}"/></label></span>
                                    <input id="userName" name="userName" type="text" style="width: 200px;height: 20px;"/>
                                </div>
                                <div class="loginPsw" style="margin-top: 20px;">
                                    <span class="psw" style="width: 76px;height: 27px;font-size: 24px;"><label for="password"><fmt:message key="srm000006" bundle="${messages}"/></label></span>
                                    <input id="password" name="password" type="password" style="width: 200px;height: 20px;"/>
                                </div>
                                <!--                                    <div class="check" style="margin-top: 10px;">
                                                                        <span class="check" style="width: 76px;height: 27px;font-size: 24px;"><label for="checkNode"><fmt:message key="srm000007" bundle="${messages}"/></label></span>
                                                                        <input id="checkNode" name="checkNode" type="text" style="width: 80px;height: 20px;vertical-align:middle"/>
                                                                        <img id="code" border=0 src="../common/code.jsp" onclick="changeCode()" style="vertical-align:middle;border: 1px solid;"/>
                                                                        <a href="javascript:changeCode();"><fmt:message key="srm000008" bundle="${messages}"/></a>
                                                                    </div>-->
                                <div style="margin-top: 18px;margin-left: 77px;">
                                    <input type="submit" value="<fmt:message key="srm000009" bundle="${messages}"/>" id="submit" name="submit" style="font-size: 14px;width: 100px;height: 25px;"/>
                                    <input type="button" value="<fmt:message key="srm000010" bundle="${messages}"/>" style="font-size: 14px;width: 100px;height: 25px;" onclick="window.open('../protocol/RegisterProtocol.jsp')"/>
                                </div>
                                <div style="margin-top: 10px;margin-right: 17px;float: right;"><a href="${serverName}OA_HTML/RF.jsp?function_id=28846" target="_blank" style="font-size: 16px;font-weight: 700;"><fmt:message key="srm000011" bundle="${messages}"/></a></div>
                            </div>
                        </form>
                    </div>
                    <div class="sys" style="width: 385px;height: 260px;border: 1px solid;margin-top: 8px;overflow: hidden">
                        <div class="area" style="background-color: #DFEAFC;width: 385px; height: 49px;text-align:center;border-bottom: 1px solid;">
                            <span class="title" style="font-weight:700;font-size:28px;line-height: 50px;"><fmt:message key="srm000012" bundle="${messages}"/></span>
                        </div>
                        <c:forEach items="${sysAnc}" var="sysAnnounce">
                            <div style="font-size: 16px;height: 18px;margin: 10px 10px auto;">
                                <div class="sysannounce" style="float: left;width: 250px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><a href="../announce/SysAnnounce.jsp?strContextId=${sysAnnounce.strContextId}" target="_blank" title="${sysAnnounce.title}">${sysAnnounce.title}</a></div>
                                <div style="float: right;margin-right: 10px;">${sysAnnounce.creation_date}</div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="pubinf" style="width: 385px;height: 200px;border: 1px solid;margin-top: 12px;overflow:hidden">
                        <div class="area" style="background-color: #DFEAFC;width: 385px; height: 50px;text-align:center;border-bottom: 1px solid;">
                            <span class="title" style="font-weight:700;font-size:28px;line-height: 50px;"><fmt:message key="srm000013" bundle="${messages}"/></span>
                        </div>
                    </div>
                    <div class="connection" style="width: 385px;height: 308px;border: 1px solid;margin-top: 8px;">
                        <div class="area" style="background-color: #DFEAFC;width: 385px; height: 50px;text-align:center;border-bottom: 1px solid;">
                            <span class="title" style="font-weight:700;font-size:28px;line-height: 50px;"><fmt:message key="srm000014" bundle="${messages}"/></span>
                        </div>
                        <img src='../images/caigouweiyuanchu.jpg' style='margin-left: 25px;'/>
                    </div>
                    <div class="download" style="width: 385px;height: 200px;border: 1px solid;margin-top: 8px;">
                        <div class="area" style="background-color: #DFEAFC;width: 385px; height: 50px;text-align:center;border-bottom: 1px solid;">
                            <span class="title" style="font-weight:700;font-size:28px;line-height: 50px;"><fmt:message key="srm000018" bundle="${messages}"/></span>
                        </div>
                        <div class="download1" style="margin: 10px 10px auto;font-size: 16px;height: 18px;"><a href="../file/修改英文页面语言为中文.docx">修改英文页面语言为中文</a></div>
                        <div class="download1" style="margin: 10px 10px auto;font-size: 16px;height: 18px;"><a href="../file/BYD供应商门户新注册操作手册.pdf">BYD供应商门户新注册操作手册</a></div>
                        <div class="download1" style="margin: 10px 10px auto;font-size: 16px;height: 18px;"><a href="../file/BYD供应商门户注册后信息自维护操作手册.pdf">BYD供应商门户注册后信息自维护操作手册</a></div>
                        <div class="download1" style="margin: 10px 10px auto;font-size: 16px;height: 18px;"><a href="../file/BYD供应商门户报价操作手册(详尽版)-20151101.pptx">BYD供应商门户报价操作手册(详尽版)-20151101</a></div>
                        <div class="download1" style="margin: 10px 10px auto;font-size: 16px;height: 18px;"><a href="../file/BYD供应商（批量）报价操作手册_20151215.pptx">BYD供应商（批量）报价操作手册_20151215</a></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
