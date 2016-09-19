<%-- 
    Document   : RegisterProtocol
    Created on : 2015-7-14, 14:56:19
    Author     : zjl2084149
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/public/common/taglibs.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key="xieyi00000" bundle="${xieyi}"/></title>
        <script type="text/javascript" >
            window.moveTo(0, 0);
            window.resizeTo(screen.availWidth, screen.availHeight);
            function closewin() {
                alert("<fmt:message key="xieyi00099" bundle="${xieyi}"/>");
                window.opener = null;
                window.close();
            }
        </script>
    </head>
    <body>
        <div style="width: 78%;margin: 0px auto;">
            <div style="color: #FFFFFF;background-color: #003377;height: 40px;text-align: center;line-height: 40px;font-size: 20px;"><b><fmt:message key="xieyi00001" bundle="${xieyi}"/></b></div>
            <div>
                <span style="font-size: 14px;">
                    <img src="../public/images/xieyi.jpg" width="41" height="57" align="middle">
                    <fmt:message key="xieyi00002" bundle="${xieyi}"/>
                </span>
            </div>
            <iframe src="RegisterContent.jsp" width="100%" height="500px"></iframe>
            <div id="foot">
                <div class="kop_skin" style="text-align: center;">
                    <!--<input class="button" type="button" name="agree"  id="agree"  value="<fmt:message key="xieyi00097" bundle="${xieyi}"/>" onclick="window.location.href = 'http://sp.byd.com.cn:6888/Srm_Register/supplierregister/Register.jsp'"/>-->
                    <input class="button" type="button" name="agree"  id="agree"  value="<fmt:message key="xieyi00097" bundle="${xieyi}"/>" onclick="window.location.href = '../supplierregister/Register.jsp'"/>
                    <input class="button" type="button" name="no" id="no" onclick="closewin();" value="<fmt:message key="xieyi00098" bundle="${xieyi}"/>"/>
                </div>
            </div>
        </div>
    </body>
</html>
