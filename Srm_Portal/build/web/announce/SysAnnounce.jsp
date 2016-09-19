<%-- 
    Document   : SysAnnounce
    Created on : 2015-5-25, 17:13:19
    Author     : zjl2084149
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/public/common/taglibs.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
    </head>
    <body style="width: 900px;margin: 0 auto;">
        <div style="border-bottom: 1px solid;margin-top: 20px;">
            <div style="text-align: center;font-size: 28px;font-weight:700;margin-bottom: 10px;"><span>${title}</span></div>
            <div style="text-align: center;font-size: 12px;margin-bottom: 5px;">
                <!--<b><fmt:message key="srm000041" bundle="${messages}"/>${announcer}</b>-->
                <b style="margin-left: 30px;"><fmt:message key="srm000042" bundle="${messages}"/>${createDate}</b>
            </div>
        </div>
        <div style="margin-top: 10px;font-size: 18px;line-height: 1.5;">
            ${content}
        </div>
        <div class="end" align="center" style="border-top: 1px solid;margin-top: 10px;padding-top: 10px;">
            <input type="button" onclick="window.close()" value="<fmt:message key='srm000043' bundle='${messages}'/>"/>
        </div>
    </body>
</html>
