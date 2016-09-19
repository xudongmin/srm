/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

//两个参数，一个是cookie的名称，一个是值
function setCookie(name,value,savetime)
{
    //   var Days = 30; 此 cookie 将被保存 30 天  Days*24*60*60*1000
    var exp  = new Date();    //new Date("December 31, 9998");
    exp.setTime(exp.getTime() +savetime);
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
}

//读取cookies函数
function getCookie(name)
{
    var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
    if(arr != null) return unescape(arr[2]); return null;
}

//删除cookie
function delCookie(name)
{
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval=getCookie(name);
    if(cval!=null) document.cookie= name + "="+cval+";expires="+exp.toGMTString();
}

window.onload=function(){
    var lg=getCookie('language');
    var lgs=document.getElementsByName("language");
    for(i=0;i<lgs.length;i++){
        if(lgs[i].value==lg){
            lgs[i].checked=true;
        }
    }
};
