//设置cookie 
function setCookie(name, value) {
    var exp = new Date();
    exp.setTime(exp.getTime() + (30 * 24 * 60 * 60 * 1000));
    window.document.cookie = name + "=" + escape(value) + "; expires=" + exp.toGMTString() + "; path=/";
}
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