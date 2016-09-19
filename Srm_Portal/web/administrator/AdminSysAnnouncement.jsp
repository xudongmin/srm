<%-- 
    Document   : AdminSysAnnouncement
    Created on : 2015-5-28, 15:14:56
    Author     : zjl2084149
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/public/common/taglibs.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key="srm000046" bundle="${messages}"/></title>
        <script src="../public/js/jquery.min.js" type="text/javascript"></script>
        <style type='text/css'>
            A:link {//未访问
                    font-size: 14px; 
                    color: #003377;
                    text-decoration: none;
            }
            A:visited {//已访问
                       font-size: 14px; 
                       color: #003377;
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
            .button {
                font-size: 16px;
                font-weight: 700;
                background-color: #87CEFA;
                border: 0px;
                height: 24px;
            }
        </style>
        <script type="text/javascript">
            function selectAll(v) {    //全部勾选框
                objs = document.getElementsByName("ids");
                for (var i = 0; i < objs.length; i++) {
                    objs[i].checked = v.checked;
                }
            }
            ;
            function update() {
                var strContextId = document.getElementsByName("ids");
                var num;
                for (var i = 0; i < strContextId.length; i++) {
                    if (strContextId[i].checked) {
                        num = strContextId[i].value;
                    }
                }
                document.getElementById("it").value = num;
                if (num != null && num != undefined) {
                    for (var i = 0; i < strContextId.length; i++) {
                        if (strContextId[i].checked) {
                            window.open("UpdateSysAnnouncement.jsp?strContextId=" + strContextId[i].value);
                        }
                    }
                }else{
                    alert("<fmt:message key="srm000044" bundle="${messages}"/>");
                }
            }
            ;
            function setInvalid() {
                var strContextId = document.getElementsByName("ids");
                var num;
                for (var i = 0; i < strContextId.length; i++) {
                    if (strContextId[i].checked) {
                        num = strContextId[i].value;
                    }
                }
                document.getElementById("it").value = num;
                $.ajax({
                    type: 'post',
                    url: '../administrator/AdminSysAnnouncement.jsp?__METHOD=setInvalid',
                    data: {"ids": num}
                });
                $("#form").submit;
                if (num != null && num != undefined) {
                    alert("<fmt:message key="srm000027" bundle="${messages}"/>");
                } else {
                    alert("<fmt:message key="srm000045" bundle="${messages}"/>");
                }
                document.location.href = "../administrator/AdminSysAnnouncement.jsp";
            }
            ;
        </script>
    </head>
    <body style="margin: 0 auto;width: 900px;">
        <h1 style="text-align: center;font-size: 32px;font-weight: 700;border-bottom: 1px solid;border-bottom-color: #003C9D;"><fmt:message key="srm000028" bundle="${messages}"/></h1>
        <input type="hidden" id="it" name="it"/>
        <div style="text-align: center;font-size: 18px;margin-bottom: 20px;">
            <input class="button" type="button" value="<fmt:message key='srm000021' bundle='${messages}'/>" name="create" onclick="window.open('NewSysAnnouncement.jsp')"/>
            <input class="button" type="button" value="<fmt:message key='srm000022' bundle='${messages}'/>" name="update" onclick="update()"/>
            <input class="button" type="button" value="<fmt:message key='srm000023' bundle='${messages}'/>" name="setInvalid" id="setInvalid" onclick="setInvalid()" />
        </div>
        <form action="Admin.jsp" method="post" id="form" >
            <table  style="width: 800px;margin-left: 20px;margin: 0 auto;" border="1">
                <tr style="width: 780px;">
                    <th style="width: 50px;"><input type="checkbox" onclick="selectAll(this);"/></th>
                    <th style="width: 120px;"><fmt:message key="srm000024" bundle="${messages}"/></th>
                    <th style="width: 420px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><fmt:message key="srm000029" bundle="${messages}"/></th>
                    <th style="width: 120px;"><fmt:message key="srm000026" bundle="${messages}"/></th>
                </tr>
                <c:forEach items="${purSysAnc}" var="purSysAnnounce">
                    <tr style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
                        <th style="width: 50px;"><input type="checkbox" name="ids" value="${purSysAnnounce.strContextId}"/></th>
                        <td style="width: 120px;text-align: center;">${purSysAnnounce.strContextId}</td>
                        <td style="width: 420px;padding-left: 10px;">
                            <div style="width: 400px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
                                <a href="UpdateSysAnnouncement.jsp?strContextId=${purSysAnnounce.strContextId}" target="_blank" title="${purSysAnnounce.title}">${purSysAnnounce.title}</a>
                            </div>
                        </td>
                        <td style="width: 120px;text-align: center;">${purSysAnnounce.creation_date}</td>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </body>
</html>
