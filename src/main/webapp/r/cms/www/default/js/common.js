UA = navigator.userAgent.toLowerCase();
url = window.location;
url = url.toString();
if((UA.indexOf('iphone') != -1 || UA.indexOf('mobile') != -1 || UA.indexOf('android') != -1 || UA.indexOf('ipad') != -1 || UA.indexOf('windows ce') != -1 || UA.indexOf('ipod') != -1) && UA.indexOf('ipod') == -1) {

    id = url.match(/\/book\/(\d+?)\.html/);
    if (id){Go('http://wap.mianhuatang.la/'+id[1]+'/');}

    id = url.match(/\/\d+?\/(\d+?)\//);
    if (id){Go('http://wap.mianhuatang.la/'+id[1]+'/');}

    id = url.match(/\/down\/txt(\d+?)\.html/);
    if (id){Go('http://wap.mianhuatang.la/'+id[1]+'/');}

    id = url.match(/\/(\d+?)\/(\d+?)\/(\d+?)\.html/);
    if (id){Go('http://wap.mianhuatang.la/'+id[2]+'/'+id[3]+'.html');}

    id = url.match(/^http:\/\/www\.mianhuatang\.la\/$/);
    if (id){Go('http://wap.mianhuatang.la/');}
}
function Go(url) { window.location = url;}

document.writeln('<script src="/ab_my/pc_pf.js" language="JavaScript"></script>');
function novel_menu(){document.writeln("<ul class=\"novel_menu\"><li><a id=\"new\" href=\"/top/lastupdate.html\"><i class=\"new\"></i>小说<br>更新</a></li><li><a href=\"/top/goodnum.html\"><i class=\"top\"></i>好评<br>排行</a></li><li><a href=\"/help/\"><i class=\"help\"></i>会员<br>帮助</a></li><li><a rel=\"nofollow\" href=\"\"><i class=\"info\"></i>信息<br>反馈</a></li><li><a id=\"a-clo\" rel=\"nofollow\" onclick=\"fav();\" href=\"javascript:void(0);\"><i class=\"fav\"></i>收藏<br>本站</a></li></ul>");}
function topbar(){document.writeln("<div class=\"topbar\"><ul><li id=\"home\"><a href=\"http://www.mianhuatang.la/\">棉花糖小说网首页</a></li><script>bookcase();</script><li id=\"toplist\"><a href=\"/quanben/\">全本小说</a></li><li id=\"quanben\"><a href=\"/top/toptime.html\" title=\"小说点击榜\">点击榜</a></li><li id=\"visit\"><a href=\"/top/allvisit.html\">口水榜</a></li><li id=\"vote\"><a href=\"/top/allvote.html\">推荐榜</a></li><li id=\"fav\"><a href=\"/top/goodnum.html\">收藏榜</a></li><li id=\"so\"><a href=\"http://zhannei.baidu.com/cse/search?s=7965856832468911224&entry=1\" rel=\"nofollow\" target=\"_blank\">站内搜索</a></li><script>userdetail();</script></ul></div>");}
function toutiao(){
document.writeln("<div style=\"wwidth: 978px; margin: 0 auto 10px; border:1px solid #ddd;background:#fcfcfc;clear: both;overflow:hidden;\"><div style=\"width: 978x;margin: 0px auto;height: 35px;line-height: 35px;text-align: center;background: #FC0;\">积极配合“净网2015”专项行动，共同抵制网络淫秽色情信息，创建健康的网络文学环境，本站正在自纠自查，欢迎用户举报，我们将第一时间清理！</div>");
document.writeln("<p style=\"padding: 5px 10px;line-height: 24px;font-family: \">");
document.writeln("<font color=\"#FF1593\" size=\"3px\">棉花糖小说网，无弹窗小说网。如果你觉得www.mianhuatang.la不错，还请您向QQ群和微博里的朋友推荐分享下，谢谢！</font><br>");
document.writeln("倡导文明阅读，绿色网络，从我做起，如发现侵权、非法、色情类小说或章节,<a href=\"\" target=\"_blank\"><span style=\"color:red\">点此举报</span></a> 或联系 <span style=\"color:red\">admin#mianhuatang.la</span> 删除！！</p></div>");
}
function down(v,a){document.writeln("<a rel=\"nofollow\" href=\"http://www.mianhuatang.la/down/txt"+v+".html\" target=\"_blank\"><img src=\"/images/down.gif\" title=\""+a+"txt下载地址\" /></a>");}

document.writeln("<script src='\/css\/btn.js'><\/script>");

function addbookcase(v){document.writeln("<a target=\"_blank\" rel=\"nofollow\" href=\"javascript:;\" onclick=\"myaddbookcase("+v+");\" title=\"我要把这本书放入到我的书架去\" class=\"fxcs\">加入书架</a> <a target=\"_blank\" rel=\"nofollow\" href=\"javascript:;\" onclick=\"myvote("+v+");\" title=\"我要推荐这本书\">推荐本书</a>");}
function Cookie_set(){
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?7fb7ea849a4a945602490041a1994870";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
document.writeln("<div style=\"display:none\">");
document.writeln("<script src=\"https://s19.cnzz.com/z_stat.php?id=1265551891&web_id=1265551891\" language=\"JavaScript\"></script>");
document.writeln("</div>");
}
function searchs(v){document.writeln("<div class=\"ui-search\"><form action=\"http://zhannei.baidu.com/cse/search\" target=\"_blank\"><input type=\"hidden\" name=\"s\" value=\"7965856832468911224\"><input type=\"hidden\" name=\"entry\" value=\"1\"><input id=\"wd\" class=\"search-input\" type=\"text\" name=\"q\" baidusug=\"2\" placeholder=\"请输入小说或者作者名字...\" autocomplete=\"off\"><input id=\"searchbutton\" type=\"submit\" class=\"search-button\" value=\"\"></form></div>");}
function searchs_old(){document.writeln("<div class=\"ui-search\">");
document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E%3Cscript charset="utf-8" src="http://znsv.baidu.com/customer_search/api/js?sid=7965856832468911224') + '&plate_url=' + (encodeURIComponent(window.location.href)) + '&t=' + (Math.ceil(new Date()/3600000)) + unescape('"%3E%3C/script%3E'));
document.writeln("</div>");}
function searchs_bak(v){document.writeln("<div class=\"ui-search\"><form action=\"http://www.baidu.com/s\" target=\"_blank\"><input type=\"hidden\" name=\"ie\" value=\"gbk\"><input id=\"wd\" class=\"search-input\" type=\"text\" name=\"wd\"><input name=\"ct\" type=\"hidden\" value=\"2097152\"><input name=\"si\" type=\"hidden\" value=\"mianhuatang.la\"><input name=\"sts\" type=\"hidden\" value=\"mianhuatang.la\"><input id=\"searchbutton\" type=\"submit\" class=\"search-button\" value=\"\"></form></div>");}
function bookcase(){document.writeln("<li id=\"bookcase\"><a href=\"http://www.mianhuatang.la/modules/article/bookcase.php\" rel=\"nofollow\" target=\"_blank\">我的书架</a></li>");}
function userdetail(){
  var username = getCookie("username");
  if (username) {
    document.writeln("<li id=\"loginbarx\"><a href=\"http://www.mianhuatang.la/modules/article/bookcase.php\" rel=\"nofollow\" target=\"_blank\">个人中心</a></li><li><a rel=\"nofollow\" href=\"http://www.mianhuatang.la/logout.php\">退出登录</a></li>");
  }else{
    var jumpurl="";
    if(location.href.indexOf("jumpurl") == -1){
      jumpurl=location.href;
    }
    document.writeln("<li id=\"loginbarx\"><a href=\"http://www.mianhuatang.la/login.php?jumpurl="+jumpurl.replace('&','%26')+"\" rel=\"nofollow\" target=\"_blank\">个人中心</a></li>");
  }
}
function getCookie(name){
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}

function get_down_url(url,durl,name){
    // if (getCookie("username")) {
        document.write('<a rel="nofollow" href="'+durl+'">'+name+'</a>');
    // }else{
        // document.write('<a rel="nofollow" href="/login.php?jumpurl='+url+'">'+name+'</a>');
    // }
}

function read_top(){}
function read_bot(){}
function down_center(){}
function get_err(v){document.writeln("<a rel=\"nofollow\" href=\"\" target=\"_blank\" style=\"color:red\">错误举报</a>");}
function qqtix(v,n,t){
var __qqClockShare = {
   content: "《"+n+"》貌似有新章节了，赶紧去看看吧【请记得加入收藏,免费txt阅读,超快的更新,不要错过精彩内容】",
   time: GetDateStr(2)+" 20:30",
   advance: 0,
   url: "http://www.mianhuatang.la/book/"+v+".html",
   icon: "1_1"
};
document.write('<a rel=\"nofollow\" id="qqtix" href="http://qzs.qq.com/snsapp/app/bee/widget/open.htm#content=' + encodeURIComponent(__qqClockShare.content) +'&time=' + encodeURIComponent(__qqClockShare.time) +'&advance=' + __qqClockShare.advance +'&url=' + encodeURIComponent(__qqClockShare.url) + '" target="_blank">提醒更新</a>');}
function fullflag(ful){
if(ful=="连载中"){document.writeln("<span class=\"lzzico\"></span>");}else{document.writeln("<span class=\"lzzico ywjico\"></span>");}
}
function GetDateStr(AddDayCount){
    var dd = new Date();
    dd.setDate(dd.getDate()+AddDayCount);
    var y = dd.getFullYear();
    var m = dd.getMonth()+1;
    var d = dd.getDate();
    return y+"-"+m+"-"+d;}
    
// 列表300:250*3中
function a(){
    // document.writeln("<div class=\"top_ad\">");
    // document.writeln("<span>");
    // document.writeln('<script src="/ab_res/pc/fixed/fixed.js?type=300&flag=0&res_root=/ab_res&ab_key=k12"></script>');

    // document.writeln("</span>");
    // document.writeln("<span>");
    // document.writeln('<script src="/ab_res/pc/fixed/fixed.js?type=300&flag=1&res_root=/ab_res&ab_key=k12"></script>');

    // document.writeln("</span>");
    // document.writeln("<span>");
    // document.writeln('<script src="/ab_res/pc/fixed/fixed.js?type=300&flag=2&res_root=/ab_res&ab_key=k12"></script>');

    // document.writeln("</span>");
    // document.writeln("</div>");
}
function b(){}
function c(){}
function d(){}
// 通栏960:90顶部
function top_ad(){
    // document.writeln("<div style=\"margin:10px 5px;\">");
    // document.writeln('<script src="/ab_res/pc/fixed/fixed.js?type=960&res_root=/ab_res&ab_key=k12"></script>');
    // document.writeln("</div>");
}
// 通栏960:90底部
function bot_ad(){
//document.writeln("<div style=\"margin:10px 5px;\">");
//document.writeln("<script type=\"text/javascript\">/*mianhuatang通栏960:90底部*/ var cpro_id = \"u2764994\";</script><script src=\"http://cpro.baidustatic.com/cpro/ui/c.js\" type=\"text/javascript\"></script>");
//document.writeln("</div>");
}
// down 中
function txt_center(){
    // document.writeln('<script src="/ab_res/pc/fixed/fixed.js?type=300&flag=0&res_root=/ab_res&ab_key=k12"></script>');
}
// down 中
function r_txt_center(){
    // document.writeln('<script src="/ab_res/pc/fixed/fixed.js?type=300&flag=1&res_root=/ab_res&ab_key=k12"></script>');
}
function share(){document.writeln("<div class=\"bdsharebuttonbox\" style=\"float:right\"><a href=\"#\" class=\"bds_more\" data-cmd=\"more\"></a><a href=\"#\" class=\"bds_mshare\" data-cmd=\"mshare\" title=\"分享到一键分享\"></a><a href=\"#\" class=\"bds_qzone\" data-cmd=\"qzone\" title=\"分享到QQ空间\"></a><a href=\"#\" class=\"bds_tsina\" data-cmd=\"tsina\" title=\"分享到新浪微博\"></a><a href=\"#\" class=\"bds_tqq\" data-cmd=\"tqq\" title=\"分享到腾讯微博\"></a><a href=\"#\" class=\"bds_renren\" data-cmd=\"renren\" title=\"分享到人人网\"></a><a href=\"#\" class=\"bds_weixin\" data-cmd=\"weixin\" title=\"分享到微信\"></a><a href=\"#\" class=\"bds_bdysc\" data-cmd=\"bdysc\" title=\"分享到百度云收藏\"></a><a href=\"#\" class=\"bds_bdxc\" data-cmd=\"bdxc\" title=\"分享到百度相册\"></a><a href=\"#\" class=\"bds_tieba\" data-cmd=\"tieba\" title=\"分享到百度贴吧\"></a><a href=\"#\" class=\"bds_sqq\" data-cmd=\"sqq\" title=\"分享到QQ好友\"></a><a href=\"#\" class=\"bds_qq\" data-cmd=\"qq\" title=\"分享到QQ收藏\"></a><a href=\"#\" class=\"bds_tqf\" data-cmd=\"tqf\" title=\"分享到腾讯朋友\"></a><a href=\"#\" class=\"bds_bdhome\" data-cmd=\"bdhome\" title=\"分享到百度新首页\"></a><a href=\"#\" class=\"bds_kaixin001\" data-cmd=\"kaixin001\" title=\"分享到开心网\"></a><a href=\"#\" class=\"bds_tqq\" data-cmd=\"tqq\" title=\"分享到腾讯微博\"></a></div>");}
function infoshare(){document.writeln("<div class=\"bdsharebuttonbox\" style=\"float:right\"><a href=\"#\" class=\"bds_more\" data-cmd=\"more\"></a><a href=\"#\" class=\"bds_mshare\" data-cmd=\"mshare\" title=\"分享到一键分享\"></a><a href=\"#\" class=\"bds_qzone\" data-cmd=\"qzone\" title=\"分享到QQ空间\"></a><a href=\"#\" class=\"bds_tieba\" data-cmd=\"tieba\" title=\"分享到百度贴吧\"></a><a href=\"#\" class=\"bds_tsina\" data-cmd=\"tsina\" title=\"分享到新浪微博\"></a></div>");}
