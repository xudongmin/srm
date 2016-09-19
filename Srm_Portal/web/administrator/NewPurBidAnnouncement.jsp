<%-- 
    Document   : NewAnnouncement
    Created on : 2015-5-27, 16:10:11
    Author     : zjl2084149
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/public/common/taglibs.jspf"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key="srm000030" bundle="${messages}"/></title>
        <script src="../public/js/jquery.min.js" type="text/javascript"></script>
        <style type='text/css'>
            .button {
                width: 80px;
                font-size: 16px;
                font-weight: 700;
                background-color: #87CEFA;
                border: 0px;
                height: 24px;
            }
        </style>
        <script type="text/javascript">
            function tijiao() {
                var title = document.getElementById("title").value;
                var content = document.getElementById("content").value;
                if (title != "" && title != null && content != "" && content != null) {
//                    $("#form").attr("action", "NewAnnouncement.jsp?title="+title+"&content="+content);
                    $("#form").submit;
                }else{
                    alert("<fmt:message key='srm000032' bundle='${messages}'/>");
                }
            }
        </script>
    </head>
    <body>
        <font color="red">${error}</font>
        <form id="form" method="post">
            <div style="width: 600px;">
                <div style="margin-bottom: 10px;">
                    <b><fmt:message key="srm000033" bundle="${messages}"/></b>
                    <input type="text" id="title" name="title" style="width: 500px;" required=""/>
                </div>
                <div>
                    <b><fmt:message key="srm000034" bundle="${messages}"/></b>
                    <textarea class="textarea" id="content" name="content" style="width:500px;" rows="15" required=""></textarea>
                </div>
            </div>
            <div style="margin-top: 20px;margin-left: 60px;">
                <input class="button" type="submit" name="submit" value="<fmt:message key='srm000035' bundle='${messages}'/>" onclick="tijiao()"/>
                <input class="button" type="button" value="<fmt:message key='srm000036' bundle='${messages}'/>" onclick="window.location.href = 'AdminPurBidAnnouncement.jsp'"/>
            </div>
        </form>
    </body>
</html>
