<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %> 

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                String rand = (String) session.getAttribute("rand");
                String checkNode = request.getParameter("checkNode");
                String userName = request.getParameter("userName");
//                String userName = "sysadmin";
                String password = request.getParameter("password");
//                String password ="sysadmin";
                if(!rand.equals(checkNode)){
//                if (1==2) {
                    out.print("<script>alert('请输入正确的验证码！');location.href='../SrmHome/Login.jsp'</script>");
                } else {
                    String url = "http://ps-cc1-srmcrp2.byd.com.cn:8007?userName="+userName+"&password="+password;
                    out.print("<script>location.href='"+url+"'</script>");
                }
            }catch(Exception e){
                System.out.println(e.getMessage());
            }
        %> 
</html>
