<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>${Title}</title>
  <link href="css/index2.css" rel="stylesheet">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/sliders.js"></script>

  <style type="text/css">
    /* 共用css */
    * { margin: 0; padding: 0 }
    body { font: 12px/1.5 'Microsoft Yahei', 'Simsun'; color: #666666; background: #fff }
    img { border: 0; display: block }
    ul { list-style: none; }
    h1, h2, h3, h4, h5, h6 { font-size: 100%; font-weight: normal; }
    a { outline: none; }
    a:link, a:visited { text-decoration: none; color: #666 }
    a:hover { text-decoration: none; }
    .clear { clear: both; }
    .blank { height: 5px; overflow: hidden; width: 100%; margin: auto; clear: both }
    .f_l { float: left }
    .f_r { float: right }
    .l_box { width: 670px; }
    .r_box { width: 300px; }
    /*footer*/
    footer { background: #333; width: 100%; clear: both; text-align: center; }
    .ft-copyright { color: #ffffff; line-height: 24px; }
    .ft-list { background: url(../images/ft-wx-s.png) no-repeat right; height: 100px }
    /*返回顶部*/
    *html { background-image: url(about:blank); background-attachment: fixed; }/*解决IE6下滚动抖动的问题*/
    #tbox { width: 54px; float: right; position: fixed; right: 50px; bottom: 15px; _position: absolute; _bottom: auto; _top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-this.offsetHeight-(parseInt(this.currentStyle.marginTop, 10)||0)-(parseInt(this.currentStyle.marginBottom, 10)||0)));
      _margin-bottom: 15px; }/*解决IE6下不兼容 position:fixed 的问题*/
    #togbook, #gotop { width: 54px; height: 56px; display: block; background: url(../images/icons.png) no-repeat #111; box-shadow: 0px 1px 0px rgba(255,255,255,.1), inset 0px 1px 1px rgba(0,0,0,.7); border-radius: 6px; }
    #togbook { margin: 5px 0; background-position: 10px -36px; }
    #gotop { background-position: 12px 10px; }
    #togbook:hover, #gotop:hover { opacity: 0.5 }
    /*标签云*/
    .cloud { width: 100%; clear: both; overflow: hidden }
    .cloud h3 { line-height: 40px; color: #38485A; font-size: 18px; border-bottom: 1px solid #E6E6E6; height: 40px; }
    .cloud ul { margin: 20px 0 }
    .cloud ul li { line-height: 24px; height: 24px; display: block; background: #999; float: left; padding: 3px 11px; margin: 10px 10px 0 0; border-radius: 8px; -moz-transition: all 0.5s; -webkit-transition: all 0.5s; -o-transition: all 0.5s; transition: all 0.5s; }
    .cloud ul li a { color: #FFF }
    .cloud ul li:nth-child(8n-7) { background: #8A9B0F }
    .cloud ul li:nth-child(8n-6) { background: #EB6841 }
    .cloud ul li:nth-child(8n-5) { background: #3FB8AF }
    .cloud ul li:nth-child(8n-4) { background: #FE4365 }
    .cloud ul li:nth-child(8n-3) { background: #FC9D9A }
    .cloud ul li:nth-child(8n-2) { background: #EDC951 }
    .cloud ul li:nth-child(8n-1) { background: #C8C8A9 }
    .cloud ul li:nth-child(8n) { background: #83AF9B }
    .cloud ul li:first-child { background: #036564 }
    .cloud ul li:last-child { background: #3299BB }
    .cloud ul li:hover { border-radius: 0; text-shadow: #000 1px 1px 1px }
    /* 切换卡 */
    .moreSelect { width: 100%; margin: 30px 0 20px 0; overflow: hidden }
    .ms-top { height: 32px; border-bottom: solid 1px #EAEAEA; font-size: 14px }
    #tab li a { float: left; height: 32px; cursor: pointer; line-height: 32px; list-style-type: none; padding: 0 15px; }
    #tab li.cur a { color: #fff; background: #f77825; }
    .bd { display: none }
    .bd-news ul { padding: 10px 0 0 10px; background: url(../images/ph2.png) no-repeat 10px 29px; }
    .bd-news ul li { border-bottom: solid 1px #EAEAEA; line-height: 30px; height: 30px; overflow: hidden; font-size: 14px; padding: 10px 0 0 30px; }
    .bd-news ul li a { display: block; }
    .bd-news ul li a:hover { color: #000; }
    .bd-news ul li:hover { border-bottom: #000 1px solid; }/* 鼠标放上去的效果 */
  </style>
<!--[if lt IE 9]>
<![endif]-->
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<article>
  <div class="l_box f_l">
    <div class="banner">
      <div id="slide-holder">
        <div id="slide-runner">
          <a href="/" target="_blank"><img id="slide-img-1" src="images/a1.jpg"  alt="" /></a>
          <a href="/" target="_blank"><img id="slide-img-2" src="images/a2.jpg"  alt="" /></a>
          <a href="/" target="_blank"><img id="slide-img-3" src="images/a3.jpg"  alt="" /></a>
          <a href="/" target="_blank"><img id="slide-img-4" src="images/a4.jpg"  alt="" /></a>
          <div id="slide-controls">
            <p id="slide-client" class="text"><strong></strong><span></span></p>
            <p id="slide-desc" class="text"></p>
            <p id="slide-nav"></p>
          </div>
        </div>
      </div>
      <script>
        if(!window.slider) {
          var slider={};
        }

        slider.data= [
          {
            "id":"slide-img-1", // 与slide-runner中的img标签id对应
            "client":"标题1",
            "desc":"这里修改描述 这里修改描述 这里修改描述" //这里修改描述
          },
          {
            "id":"slide-img-2",
            "client":"标题2",
            "desc":"add your description here"
          },
          {
            "id":"slide-img-3",
            "client":"标题3",
            "desc":"add your description here"
          },
          {
            "id":"slide-img-4",
            "client":"标题4",
            "desc":"add your description here"
          }
        ];

      </script>
    </div>
    <!-- banner代码 结束 -->
    <div class="topnews">
      <h2><span><a href="/" target="_blank">栏目标题</a><a href="/" target="_blank">栏目标题</a><a href="/" target="_blank">栏目标题</a></span><b>文章</b>推荐</h2>
      <%--<div class="blogs">--%>
        <%--<figure><img src="images/01.jpg"></figure>--%>
        <%--<ul>--%>
          <%--<h3><a href="/">住在手机里的朋友</a></h3>--%>
          <%--<p>通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是彼此交换名片，然后郑重或是出于礼貌用手机记下对方的电话号码。在快节奏的生活里，我们不知不觉中就成为住在别人手机里的朋友。又因某些意外，变成了别人手机里匆忙的过客，这种快餐式的友谊 ...</p>--%>
          <%--<p class="autor"><span class="lm f_l"><a href="/">个人博客</a></span><span class="dtime f_l">2014-02-19</span><span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span></p>--%>
        <%--</ul>--%>
      <%--</div>--%>
      <%--<div class="blogs">--%>
        <%--<figure><img src="images/02.jpg"></figure>--%>
        <%--<ul>--%>
          <%--<h3><a href="/">教你怎样用欠费手机拨打电话</a></h3>--%>
          <%--<p>初次相识的喜悦，让你觉得似乎找到了知音。于是，对于投缘的人，开始了较频繁的交往。渐渐地，初识的喜悦退尽，接下来就是仅仅保持着联系，平淡到偶尔在节假曰发短信互致问候...</p>--%>
          <%--<p class="autor"><span class="lm f_l"><a href="/">个人博客</a></span><span class="dtime f_l">2014-02-19</span><span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span></p>--%>
        <%--</ul>--%>
      <%--</div>--%>
      <%--<div class="blogs">--%>
        <%--<figure><img src="images/03.jpg"></figure>--%>
        <%--<ul>--%>
          <%--<h3><a href="/">原来以为，一个人的勇敢是，删掉他的手机号码...</a></h3>--%>
          <%--<p>原来以为，一个人的勇敢是，删掉他的手机号码、QQ号码等等一切，努力和他保持距离。等着有一天，习惯不想念他，习惯他不在身边,习惯时间把他在我记忆里的身影磨蚀干净... </p>--%>
          <%--<p class="autor"><span class="lm f_l"><a href="/">个人博客</a></span><span class="dtime f_l">2014-02-19</span><span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span></p>--%>
        <%--</ul>--%>
      <%--</div>--%>
      <%--<div class="blogs">--%>
        <%--<figure><img src="images/04.jpg"></figure>--%>
        <%--<ul>--%>
          <%--<h3><a href="/">手机的16个惊人小秘密，据说99.999%的人都不知</a></h3>--%>
          <%--<p>引导语：知道么，手机有备用电池，手机拨号码12593+电话号码=陷阱……手机具有很多你不知道的小秘密，说出来一定很惊奇！不信的话就来看看吧！...</p>--%>
          <%--<p class="autor"><span class="lm f_l"><a href="/">个人博客</a></span><span class="dtime f_l">2014-02-19</span><span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span></p>--%>
        <%--</ul>--%>
      <%--</div>--%>
      <%--<div class="blogs">--%>
        <%--<figure><img src="images/05.jpg"></figure>--%>
        <%--<ul>--%>
          <%--<h3><a href="/">你面对的是生活而不是手机</a></h3>--%>
          <%--<p>每一次与别人吃饭，总会有人会拿出手机。以为他们在打电话或者有紧急的短信，但用余光瞟了一眼之后发现无非就两件事：1、看小说，2、上人人或者QQ...</p>--%>
          <%--<p class="autor"><span class="lm f_l"><a href="/">个人博客</a></span><span class="dtime f_l">2014-02-19</span><span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span></p>--%>
        <%--</ul>--%>
      <%--</div>--%>
      <%--<div class="blogs">--%>
        <%--<figure><img src="images/06.jpg"></figure>--%>
        <%--<ul>--%>
          <%--<h3><a href="/">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></h3>--%>
          <%--<p>现在跨界联姻，时尚、汽车以及运动品牌联合手机制造商联合发布手机产品在行业里已经不再新鲜，上周我们给大家报道过著名手表制造商瑞士泰格·豪雅（Tag Heuer） 联合法国的手机制造商Modelabs发布的一款奢华手机的部分谍照，而近日该手机终于被正式发布了...</p>--%>
          <%--<p class="autor"><span class="lm f_l"><a href="/">个人博客</a></span><span class="dtime f_l">2014-02-19</span><span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span></p>--%>
        <%--</ul>--%>
      <%--</div>--%>
      <%--<div class="blogs">--%>
        <%--<figure><img src="images/04.jpg"></figure>--%>
        <%--<ul>--%>
          <%--<h3><a href="/">手机的16个惊人小秘密，据说99.999%的人都不知</a></h3>--%>
          <%--<p>引导语：知道么，手机有备用电池，手机拨号码12593+电话号码=陷阱……手机具有很多你不知道的小秘密，说出来一定很惊奇！不信的话就来看看吧！...</p>--%>
          <%--<p class="autor"><span class="lm f_l"><a href="/">个人博客</a></span><span class="dtime f_l">2014-02-19</span><span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span></p>--%>
        <%--</ul>--%>
      <%--</div>--%>
    </div>
  </div>
  <div class="r_box f_r">
    <div class="tit01">
      <h3>关注我</h3>
      <div class="gzwm">
        <ul>
          <li><a class="xlwb" href="#" target="_blank">新浪微博</a></li>
          <li><a class="txwb" href="#" target="_blank">腾讯微博</a></li>
          <li><a class="rss" href="portal.php?mod=rss" target="_blank">RSS</a></li>
          <li><a class="wx" href="mailto:admin@admin.com">邮箱</a></li>
        </ul>
      </div>
    </div>
    <!--tit01 end-->
    <div class="ad300x100"> <img src="images/ad300x100.jpg"> </div>
    <div class="moreSelect" id="lp_right_select">
      <script>
        window.onload = function ()
        {
          var oLi = document.getElementById("tab").getElementsByTagName("li");
          var oUl = document.getElementById("ms-main").getElementsByTagName("div");

          for(var i = 0; i < oLi.length; i++)
          {
            oLi[i].index = i;
            oLi[i].onmouseover = function ()
            {
              for(var n = 0; n < oLi.length; n++) oLi[n].className="";
              this.className = "cur";
              for(var n = 0; n < oUl.length; n++) oUl[n].style.display = "none";
              oUl[this.index].style.display = "block"
            }
          }
        }
      </script>
      <div class="ms-top">
        <ul class="hd" id="tab">
          <li class="cur"><a href="/">点击排行</a></li>
          <li><a href="/">最新文章</a></li>
          <li><a href="/">站长推荐</a></li>
        </ul>
      </div>
      <div class="ms-main" id="ms-main">
        <div style="display: block;" class="bd bd-news" >
          <ul>
            <li><a href="/" target="_blank">住在手机里的朋友</a></li>
            <li><a href="/" target="_blank">教你怎样用欠费手机拨打电话</a></li>
            <li><a href="/" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
            <li><a href="/" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
            <li><a href="/" target="_blank">你面对的是生活而不是手机</a></li>
            <li><a href="/" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
          </ul>
        </div>
        <div  class="bd bd-news">
          <ul>
            <li><a href="/" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
            <li><a href="/" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
            <li><a href="/" target="_blank">住在手机里的朋友</a></li>
            <li><a href="/" target="_blank">教你怎样用欠费手机拨打电话</a></li>
            <li><a href="/" target="_blank">你面对的是生活而不是手机</a></li>
            <li><a href="/" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
          </ul>
        </div>
        <div class="bd bd-news">
          <ul>
            <li><a href="/" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
            <li><a href="/" target="_blank">你面对的是生活而不是手机</a></li>
            <li><a href="/" target="_blank">住在手机里的朋友</a></li>
            <li><a href="/" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
            <li><a href="/" target="_blank">教你怎样用欠费手机拨打电话</a></li>
            <li><a href="/" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
          </ul>
        </div>
      </div>
      <!--ms-main end -->
    </div>
    <!--切换卡 moreSelect end -->

    <div class="cloud">
      <h3>标签云</h3>
      <ul>
        <li><a href="/">个人博客</a></li>
        <li><a href="/">web开发</a></li>
        <li><a href="/">前端设计</a></li>
        <li><a href="/">Html</a></li>
        <li><a href="/">CSS3</a></li>
        <li><a href="/">Html5+css3</a></li>
        <li><a href="/">百度</a></li>
        <li><a href="/">Javasript</a></li>
        <li><a href="/">web开发</a></li>
        <li><a href="/">前端设计</a></li>
        <li><a href="/">Html</a></li>
        <li><a href="/">CSS3</a></li>
        <li><a href="/">Html5+css3</a></li>
        <li><a href="/">百度</a></li>
      </ul>
    </div>
    <div class="tuwen">
      <h3>图文推荐</h3>
      <ul>
        <li><a href="/"><img src="images/01.jpg"><b>住在手机里的朋友</b></a>
          <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
        </li>
        <li><a href="/"><img src="images/02.jpg"><b>教你怎样用欠费手机拨打电话</b></a>
          <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
        </li>
        <li><a href="/" title="手机的16个惊人小秘密，据说99.999%的人都不知"><img src="images/03.jpg"><b>手机的16个惊人小秘密，据说...</b></a>
          <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
        </li>
        <li><a href="/"><img src="images/06.jpg"><b>住在手机里的朋友</b></a>
          <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
        </li>
        <li><a href="/"><img src="images/04.jpg"><b>教你怎样用欠费手机拨打电话</b></a>
          <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
        </li>
      </ul>
    </div>
    <div class="ad"> <img src="images/03.jpg"> </div>
    <div class="links">
      <h3><span>[<a href="/">申请友情链接</a>]</span>友情链接</h3>
      <ul>
        <li><a href="/">杨青个人博客</a></li>
        <li><a href="/">web开发</a></li>
        <li><a href="/">前端设计</a></li>
        <li><a href="/">Html</a></li>
        <li><a href="/">CSS3</a></li>
        <li><a href="/">Html5+css3</a></li>
        <li><a href="/">百度</a></li>
      </ul>
    </div>
  </div>
  <!--r_box end -->
</article>
<footer>
  <p class="ft-copyright">兔小白博客 Design by DanceSmile 蜀ICP备11002373号-1</p>
  <div id="tbox"> <a id="togbook" href="/"></a> <a id="gotop" href="javascript:void(0)"></a> </div>
</footer>
</body>
</html>

