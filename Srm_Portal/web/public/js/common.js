var currentLanguage = getCookie("language");
function typeChange(source) {
    if (source == "zh_CN")
        return 1;
    if (source == "en_US")
        return 2;
}
//加载中英文文件
var strlanguage_s = new Array();
var strlanguage_en = new Array();
function langString(source) {
    var choose = typeChange(currentLanguage);
    switch (choose) {
        case 1:
            return  strlanguage_s[source];
        case 2:
            return  strlanguage_en[source];
        default:
            alert("default");
            return strlanguage_s[source];
    }
    return  strlanguage_s[source];
}
//设置cookie 
function setCookie(name, value) {
    var exp = new Date();
    exp.setTime(exp.getTime() + (30 * 24 * 60 * 60 * 1000));
    window.document.cookie = name + "=" + escape(value) + "; expires=" + exp.toGMTString() + "; path=/";
}
//function setCookie(name, value, savetime, urlstring)
//{
//    //   var Days = 30; 此 cookie 将被保存 30 天  Days*24*60*60*1000
//    var exp = new Date();    //new Date("December 31, 9998");
//    exp.setTime(exp.getTime() + savetime);
//    document.cookie = name + "=" + escape(value) + ";domain=.byd.com.cn;path=/;expires=" + exp.toGMTString();
//    window.location.href = urlstring;
//}
//取得cookie 
function getCookie(name) {
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null)
        return unescape(arr[2]);
    return null;
}
//取出cookie的值   
function getCookieVal(offset) {
    var endstr = window.document.cookie.indexOf(";", offset);
    if (endstr == -1)
        endstr = window.document.cookie.length;
    return unescape(window.document.cookie.substring(offset, endstr));
}
//删除cookie 
function deleteCookie(name) {
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = GetCookie(name);
    window.document.cookie = name + "=" + cval + "; expires=" + exp.toGMTString() + "; path=/";
}
function checkLanguage() {
    var checks = document.getElementsByName("language");
    var len = checks.length;
    for (var i = 0; i < len; i++) {
        if (checks[i].checked) {
            setCookie("language", checks[i].value);
        }
    }
    window.location.reload();
}
window.onload = function() {
    var lg = getCookie('language');
    var lgs = document.getElementsByName("language");
    for (i = 0; i < lgs.length; i++) {
        if (lgs[i].value == lg) {
            lgs[i].checked = true;
        }
    }
};