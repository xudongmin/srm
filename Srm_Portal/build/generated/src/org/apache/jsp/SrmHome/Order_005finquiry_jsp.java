package org.apache.jsp.SrmHome;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Order_005finquiry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/SrmHome/../public/common/taglibs.jspf");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_setLocale_value_scope_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_setBundle_var_basename_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_fmt_setLocale_value_scope_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_setBundle_var_basename_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_fmt_setLocale_value_scope_nobody.release();
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_fmt_setBundle_var_basename_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head lang=\"en\">\n");
      out.write("        \n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write('\r');
      out.write('\n');
      if (_jspx_meth_c_set_1(_jspx_page_context))
        return;
      out.write('\r');
      out.write('\n');

    if (session.getAttribute("language") == null) {//language
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (int idx = 0; idx < cookies.length; idx++) {
                Cookie cookie = cookies[idx];
                if ("language".equalsIgnoreCase(cookie.getName())) {
                    session.setAttribute("language", cookie.getValue());
                }
            }
        }
        if (session.getAttribute("language") == null) {
            session.setAttribute("language", "zh_CN");
            //session.setAttribute("language", "en_US");
        }
    }


      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_fmt_setLocale_0(_jspx_page_context))
        return;
      out.write('\r');
      out.write('\n');
      if (_jspx_meth_fmt_setBundle_0(_jspx_page_context))
        return;
      out.write('\r');
      out.write('\n');
      if (_jspx_meth_fmt_setBundle_1(_jspx_page_context))
        return;
      out.write('\r');
      out.write('\n');
      if (_jspx_meth_fmt_setBundle_2(_jspx_page_context))
        return;
      out.write('\r');
      out.write('\n');
      if (_jspx_meth_fmt_setBundle_3(_jspx_page_context))
        return;
      out.write('\r');
      out.write('\n');
      out.write("\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=9\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/app.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/font-awesome.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/style.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap-datetimepicker.min.css\"/>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"../favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("        <title>比亚迪供应商门户</title>\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"../js/html5shiv.min.js\"></script>\n");
      out.write("        <script src=\"../js/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"wrap\">\n");
      out.write("            <div class=\"header navbar navbar-default loginedheader\">\n");
      out.write("                <div class=\"navbar-header header-left logined-nav-header col-md-3\">\n");
      out.write("                    <img src=\"../images/logo.png\" alt=\"\" class=\"pull-left\"/>\n");
      out.write("                    <h3 class=\"pull-left\">比亚迪供应商门户</h3>  \n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle showbars\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"logined-nav col-lg-6\" id=\"navbar-collapse\">                    \n");
      out.write("                    <ul>\n");
      out.write("                        <li style=\"width: 50px;\" class=\"menu-index\">\n");
      out.write("                            <a href=\"index.jsp\">首页</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li><a href=\"#\">采购政策</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"logined-header-right col-lg-3\">\n");
      out.write("                    <span class=\"welcome pull-right\">\n");
      out.write("                        <span class=\"help\">帮助\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\">常见问题</a><li>\n");
      out.write("                                <li><a href=\"#\">培训文档</a><li>\n");
      out.write("                                <li><a href=\"#\">关于我们</a><li>\n");
      out.write("                            </ul>\n");
      out.write("                        </span>\n");
      out.write("                        <span class=\"text-danger\">您好</span> <span style=\"margin-right:5px;\">科达利科技</span><span> 30024</span> |\n");
      out.write("                        <a href=\"#\">修改密码</a> |\n");
      out.write("                        <span class=\"icon-off off-icon text-danger\"></span>\n");
      out.write("                        <a href=\"#\" style=\"margin-right: 20px;\">退出</a>\n");
      out.write("                    </span>\n");
      out.write("                </div>\n");
      out.write("            </div>            \n");
      out.write("            <div class=\"content srm-content\">\n");
      out.write("                <div class=\"position\">\n");
      out.write("                        <ol class=\"breadcrumb res-breadcrumb\">\n");
      out.write("                            <li><span class=\"icon icon-home nowposition\"></span> 当前位置:</li>\n");
      out.write("                            <li>供应链系统</li>\n");
      out.write("                            <li>订单模式</li>\n");
      out.write("                            <li>送货单管理</li>\n");
      out.write("                            <li class=\"active\">送货单查询</li>\n");
      out.write("                        </ol>\n");
      out.write("                        <form action=\"\" class=\"form-inline\" role=\"form\">\n");
      out.write("                            <div class=\"bg-color\">\n");
      out.write("                                <div class=\"contation\">\n");
      out.write("                                    <div class=\"form-group shortinput\">\n");
      out.write("                                        <label for=\"meterialnum\">料号：</label><input type=\"text\" id=\"meterialnum\"/>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group shortinput\">\n");
      out.write("                                        <label for=\"purchorder\">采购订单：</label><input type=\"text\" id=\"purchorder\"/>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group shortinput\">\n");
      out.write("                                        <label for=\"supplier\">供应商：</label><input type=\"text\" id=\"supplier\"/>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group shorterinput\">\n");
      out.write("                                        <label>生成日期：</label><input type=\"text\" readonly class=\"datetimepicker\"/> 至 <input type=\"text\" readonly class=\"datetimepicker\"/>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"btn-groups pull-right contation-btns\">\n");
      out.write("                                    <button tyle=\"button\" class=\"btn btn-default srm-btns\"><span class=\"icon-search\"></span>查询</button>\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-primary srm-btns contion-button\">更多条件</button>\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-warning srm-btns\"><span class=\"icon-cog\"></span>配置</button>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"contation-hide\">\n");
      out.write("                                    <div class=\"form-group shortinput\">\n");
      out.write("                                        <label for=\"meterialnum\">料号：</label><input type=\"text\"/>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group shortinput\">\n");
      out.write("                                        <label for=\"purchorder\">采购订单：</label><input type=\"text\"/>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group shortinput\">\n");
      out.write("                                        <label for=\"supplier\">供应商：</label><input type=\"text\"/>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group shorterinput\">\n");
      out.write("                                        <label>生成日期：</label><input type=\"text\" readonly onmouseover=\"WdatePicker({lang:'zh_CN',dateFmt:'yyyy-MM-dd'})\"> 至 <input type=\"text\" readonly onmouseover=\"WdatePicker({lang:'zh_CN',dateFmt:'yyyy-MM-dd'})\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                <div class=\"res-right\">                    \n");
      out.write("                        <form action=\"\" class=\"form-inline\" role=\"form\">\n");
      out.write("                            <div class=\"bgcolor-content\">\n");
      out.write("                                <div class=\"condition-filter clearfix\">\n");
      out.write("                                    <div class=\"resultconfig pull-left\">\n");
      out.write("                                        <button type=\"button\" class=\"btn btn-warning btn-sm\"><span class=\"icon-cog\"></span>结果配置</button>\n");
      out.write("                                        <a href=\"\" class=\"savemodify\">保存修改</a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"pagers pull-right\">\n");
      out.write("                                        <span class=\"pagers-details\">                                          \n");
      out.write("                                        第  <input type=\"text\" value=\"1\"/> 页 <i class=\"icon-caret-right gopage\"><span>跳转</span></i>\n");
      out.write("                                            <ul class=\"pager pagers-ul\">\n");
      out.write("                                                <li><a href=\"#\">首页</a></li>\n");
      out.write("                                                <li><a href=\"#\">上一页</a></li>\n");
      out.write("                                                <li><a href=\"#\">下一页</a></li>\n");
      out.write("                                                <li><a href=\"#\">尾页</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                            <span class=\"each-page\">每页</span>\n");
      out.write("                                        <span class=\"shownum\">\n");
      out.write("                                            <span class=\"spannum\">15</span>\n");
      out.write("                                            <ul class=\"showul\">\n");
      out.write("                                                <li>15</li>\n");
      out.write("                                                <li>30</li>\n");
      out.write("                                                <li>45</li>\n");
      out.write("                                            </ul>\n");
      out.write("                                            <span class=\"arrow-down icon-angle-down pull-right\"></span>\n");
      out.write("                                        </span>\n");
      out.write("                                        条,共 <span class=\"bold\">96656</span> 页 <span class=\"bold\">1449827</span> 条数据\n");
      out.write("                                        </span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"ext_grid\"></div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                </div>\n");
      out.write("            </div>            \n");
      out.write("        </div>\n");
      out.write("        <script src=\"../js/jquery-1.11.3.min.js\"></script>\n");
      out.write("        <script src=\"../js/bootstrap-datetimepicker.min.js\"></script>\n");
      out.write("        <script src=\"../js/bootstrap-datetimepicker.zh-CN.js\"></script>\n");
      out.write("        <script src=\"../js/main.js\"></script>\n");
      out.write("        <script src=\"../js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"../js/ext-all.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(function(){\n");
      out.write("//          建表格\n");
      out.write("        //保存按鈕显示方法\n");
      out.write("            var savemodifyshow= function() {\n");
      out.write("                $('.savemodify').show();\n");
      out.write("            };\n");
      out.write("            \n");
      out.write("            var srm_thtd = \"srm-thtd\";\n");
      out.write("            var srm_trtd = \"srm-trtd\";\n");
      out.write("            Ext.state.Manager.setProvider(new Ext.state.CookieProvider());\n");
      out.write("            Ext.create('Ext.data.Store', {\n");
      out.write("                storeId: 'simpsonsStore',\n");
      out.write("                fields: ['date', 'companynum', 'factory', 'supplier', 'suppliername', 'purchaseorder', 'lineitem', 'type', 'maternum', 'specifications', 'receptdate', 'units', 'goodreceipt'],\n");
      out.write("                data: {\n");
      out.write("                    'items': [\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30841\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30842\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30843\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30844\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30845\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30846\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30847\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30848\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30849\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30850\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30851\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30852\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        },\n");
      out.write("                        {\n");
      out.write("                            'date': '2010',\n");
      out.write("                            \"companynum\": \"1000\",\n");
      out.write("                            \"factory\": \"HZ21\",\n");
      out.write("                            \"supplier\": \"30853\",\n");
      out.write("                            \"suppliername\": \"东莞市运通工\",\n");
      out.write("                            \"purchaseorder\": \"1900232476\",\n");
      out.write("                            \"lineitem\": \"0030\",\n");
      out.write("                            \"type\": \"\",\n");
      out.write("                            \"maternum\": \"10342957-00\",\n");
      out.write("                            \"specifications\": \"驱动器CMD21\",\n");
      out.write("                            \"receptdate\": \"20100805\",\n");
      out.write("                            \"units\": \"PCS\",\n");
      out.write("                            \"goodreceipt\": \"4\"\n");
      out.write("                        }\n");
      out.write("                    ]\n");
      out.write("                },\n");
      out.write("                proxy: {\n");
      out.write("                    type: 'memory',\n");
      out.write("                    reader: {\n");
      out.write("                        type: 'json',\n");
      out.write("                        root: 'items'\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("            var grid = Ext.create('Ext.grid.Panel', {\n");
      out.write("                stateful: true,\n");
      out.write("                stateid: 'myid',\n");
      out.write("                id: 'mytable',\n");
      out.write("                store: Ext.data.StoreManager.lookup('simpsonsStore'),\n");
      out.write("                plugins: [\n");
      out.write("                    Ext.create('Ext.grid.plugin.CellEditing', {\n");
      out.write("                        clicksToEdit: 1\n");
      out.write("                    })\n");
      out.write("                ],\n");
      out.write("                columns: [\n");
      out.write("                    {\n");
      out.write("                        header: '年度',\n");
      out.write("                        dataIndex: 'date',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '公司代码',\n");
      out.write("                        dataIndex: 'companynum',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '工厂',\n");
      out.write("                        dataIndex: 'factory',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '供应商',\n");
      out.write("                        dataIndex: 'supplier',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '供应商名称',\n");
      out.write("                        dataIndex: 'suppliername',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '采购订单',\n");
      out.write("                        dataIndex: 'purchaseorder',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '行项目',\n");
      out.write("                        dataIndex: 'lineitem',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '类型',\n");
      out.write("                        dataIndex: 'type',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '料号',\n");
      out.write("                        dataIndex: 'maternum',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '规格',\n");
      out.write("                        dataIndex: 'specifications',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '收货日期',\n");
      out.write("                        dataIndex: 'receptdate',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '单位',\n");
      out.write("                        dataIndex: 'units',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '收货',\n");
      out.write("                        dataIndex: 'goodreceipt',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            hide: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            sortchange: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            },\n");
      out.write("                            move: function () {\n");
      out.write("                                savemodifyshow();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    {\n");
      out.write("                        header: '',\n");
      out.write("                        dataIndex: '',\n");
      out.write("                        cls: srm_thtd,\n");
      out.write("                        tdCls: srm_trtd,\n");
      out.write("                        width: 0,\n");
      out.write("                        style: {\n");
      out.write("                            opacity: 0\n");
      out.write("                        },\n");
      out.write("                        listeners: {\n");
      out.write("                            resize: function () {\n");
      out.write("                                $('.savemodify').hide();\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                ],\n");
      out.write("                viewConfig: {\n");
      out.write("                    forceFit: true,\n");
      out.write("                    scrollOffset: 0,\n");
      out.write("                    stripeRows: true,//在表格中显示斑马线\n");
      out.write("                    enableTextSelection: true //可以复制单元格文字\n");
      out.write("                },\n");
      out.write("                flex: true,\n");
      out.write("                layout: 'fit',\n");
      out.write("\n");
      out.write("                renderTo: ext_grid\n");
      out.write("            });\n");
      out.write("\n");
      out.write("//            悬浮显示下拉选择条数,点击选中条数\n");
      out.write("            $(\".shownum\").hover(function(){\n");
      out.write("                $(this).find(\".showul\").stop().show();\n");
      out.write("            },function(){\n");
      out.write("                $(this).find(\".showul\").stop().hide();\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            $(\".showul\").find(\"li\").on(\"click\",function(){\n");
      out.write("                var spantext=$(this).text();\n");
      out.write("                $(this).parents(\".showul\").siblings(\".spannum\").text(spantext);\n");
      out.write("                $(this).parents(\".showul\").hide();\n");
      out.write("            });\n");
      out.write("\n");
      out.write("//             更多条件，点击显示\n");
      out.write("            $(\".res-right\").find(\".contion-button\").on(\"click\",function(){\n");
      out.write("                $(this).parents(\".contation-btns\").siblings(\".contation-hide\").slideToggle();\n");
      out.write("                var thistext=$(this).text();\n");
      out.write("                if(thistext==\"更多条件\") {\n");
      out.write("                    $(this).text(\"更少条件\");\n");
      out.write("                } else {\n");
      out.write("                    $(this).text(\"更多条件\");\n");
      out.write("                }\n");
      out.write("            });            \n");
      out.write("//            $(\"#ext_grid\").on(\"click\",\".srm-trtd\",function(){               \n");
      out.write("//                alert(\"123\");\n");
      out.write("//            });\n");
      out.write("        });    \n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("ctx");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_c_set_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_1.setPageContext(_jspx_page_context);
    _jspx_th_c_set_1.setParent(null);
    _jspx_th_c_set_1.setVar("jsessionid");
    _jspx_th_c_set_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.requestedSessionId}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_1 = _jspx_th_c_set_1.doStartTag();
    if (_jspx_th_c_set_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
    return false;
  }

  private boolean _jspx_meth_fmt_setLocale_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:setLocale
    org.apache.taglibs.standard.tag.rt.fmt.SetLocaleTag _jspx_th_fmt_setLocale_0 = (org.apache.taglibs.standard.tag.rt.fmt.SetLocaleTag) _jspx_tagPool_fmt_setLocale_value_scope_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.SetLocaleTag.class);
    _jspx_th_fmt_setLocale_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_setLocale_0.setParent(null);
    _jspx_th_fmt_setLocale_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${language}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_setLocale_0.setScope("session");
    int _jspx_eval_fmt_setLocale_0 = _jspx_th_fmt_setLocale_0.doStartTag();
    if (_jspx_th_fmt_setLocale_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_setLocale_value_scope_nobody.reuse(_jspx_th_fmt_setLocale_0);
      return true;
    }
    _jspx_tagPool_fmt_setLocale_value_scope_nobody.reuse(_jspx_th_fmt_setLocale_0);
    return false;
  }

  private boolean _jspx_meth_fmt_setBundle_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:setBundle
    org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag _jspx_th_fmt_setBundle_0 = (org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag) _jspx_tagPool_fmt_setBundle_var_basename_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag.class);
    _jspx_th_fmt_setBundle_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_setBundle_0.setParent(null);
    _jspx_th_fmt_setBundle_0.setBasename("xiaoxi");
    _jspx_th_fmt_setBundle_0.setVar("xiaoxi");
    int _jspx_eval_fmt_setBundle_0 = _jspx_th_fmt_setBundle_0.doStartTag();
    if (_jspx_th_fmt_setBundle_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_setBundle_var_basename_nobody.reuse(_jspx_th_fmt_setBundle_0);
      return true;
    }
    _jspx_tagPool_fmt_setBundle_var_basename_nobody.reuse(_jspx_th_fmt_setBundle_0);
    return false;
  }

  private boolean _jspx_meth_fmt_setBundle_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:setBundle
    org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag _jspx_th_fmt_setBundle_1 = (org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag) _jspx_tagPool_fmt_setBundle_var_basename_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag.class);
    _jspx_th_fmt_setBundle_1.setPageContext(_jspx_page_context);
    _jspx_th_fmt_setBundle_1.setParent(null);
    _jspx_th_fmt_setBundle_1.setBasename("messages");
    _jspx_th_fmt_setBundle_1.setVar("messages");
    int _jspx_eval_fmt_setBundle_1 = _jspx_th_fmt_setBundle_1.doStartTag();
    if (_jspx_th_fmt_setBundle_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_setBundle_var_basename_nobody.reuse(_jspx_th_fmt_setBundle_1);
      return true;
    }
    _jspx_tagPool_fmt_setBundle_var_basename_nobody.reuse(_jspx_th_fmt_setBundle_1);
    return false;
  }

  private boolean _jspx_meth_fmt_setBundle_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:setBundle
    org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag _jspx_th_fmt_setBundle_2 = (org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag) _jspx_tagPool_fmt_setBundle_var_basename_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag.class);
    _jspx_th_fmt_setBundle_2.setPageContext(_jspx_page_context);
    _jspx_th_fmt_setBundle_2.setParent(null);
    _jspx_th_fmt_setBundle_2.setBasename("xieyi");
    _jspx_th_fmt_setBundle_2.setVar("xieyi");
    int _jspx_eval_fmt_setBundle_2 = _jspx_th_fmt_setBundle_2.doStartTag();
    if (_jspx_th_fmt_setBundle_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_setBundle_var_basename_nobody.reuse(_jspx_th_fmt_setBundle_2);
      return true;
    }
    _jspx_tagPool_fmt_setBundle_var_basename_nobody.reuse(_jspx_th_fmt_setBundle_2);
    return false;
  }

  private boolean _jspx_meth_fmt_setBundle_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:setBundle
    org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag _jspx_th_fmt_setBundle_3 = (org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag) _jspx_tagPool_fmt_setBundle_var_basename_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.SetBundleTag.class);
    _jspx_th_fmt_setBundle_3.setPageContext(_jspx_page_context);
    _jspx_th_fmt_setBundle_3.setParent(null);
    _jspx_th_fmt_setBundle_3.setBasename("biaodan");
    _jspx_th_fmt_setBundle_3.setVar("biaodan");
    int _jspx_eval_fmt_setBundle_3 = _jspx_th_fmt_setBundle_3.doStartTag();
    if (_jspx_th_fmt_setBundle_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_setBundle_var_basename_nobody.reuse(_jspx_th_fmt_setBundle_3);
      return true;
    }
    _jspx_tagPool_fmt_setBundle_var_basename_nobody.reuse(_jspx_th_fmt_setBundle_3);
    return false;
  }
}
