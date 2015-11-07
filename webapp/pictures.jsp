<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="common/common.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>${Title}</title>
<link href="css/base.css" rel="stylesheet">
<link href="css/case.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<article class="blogs">
<h1 class="t_nav"><span>好咖啡要和朋友一起品尝，好“模板”也要和同样喜欢它的人一起分享。 </span><a href="/" class="n1">网站首页</a><a href="/" class="n2">瞬间永恒</a></h1>
<div class="caselist left">
<ul>
<li><a href="/"><img src="images/01.jpg"></a></li>
<li><a href="/"><img src="images/02.jpg"></a></li>
<li><a href="/"><img src="images/03.jpg"></a></li>
<li><a href="/"><img src="images/04.jpg"></a></li>

<li><a href="/"><img src="images/03.jpg"></a></li>
<li><a href="/"><img src="images/04.jpg"></a></li>
<li><a href="/"><img src="images/01.jpg"></a></li>
<li><a href="/"><img src="images/02.jpg"></a></li>
<li><a href="/"><img src="images/01.jpg"></a></li>
<li><a href="/"><img src="images/02.jpg"></a></li>
<li><a href="/"><img src="images/03.jpg"></a></li>
<li><a href="/"><img src="images/04.jpg"></a></li>

<li><a href="/"><img src="images/03.jpg"></a></li>
<li><a href="/"><img src="images/04.jpg"></a></li>
<li><a href="/"><img src="images/01.jpg"></a></li>
<li><a href="/"><img src="images/02.jpg"></a></li>
</ul>
    <div class="blank"></div>
   
    <div class="page"><a title="Total record"><b>41</b></a><b>1</b><a href="/news/s/index_2.html">2</a><a href="/news/s/index_2.html">&gt;</a><a href="/news/s/index_2.html">&gt;&gt;</a></div>
</div>
<aside class="right">
   <div class="rnav">
      <h2>相册</h2>
      <ul>
          <c:forEach items="${categorys}" var="ct" >
              <li><a href="/download/" target="_blank">${ct.name}</a></li>
          </c:forEach>
     </ul>
    </div>
<div class="news">
<h3>
      <p>最新<span>模板</span></p>
    </h3>
    <ul class="rank">
      <li><a href="/" title="Column 三栏布局 个人网站模板" target="_blank">Column 三栏布局 个人网站模板</a></li>
      <li><a href="/" title="with love for you 个人网站模板" target="_blank">with love for you 个人网站模板</a></li>
      <li><a href="/" title="免费收录网站搜索引擎登录口大全" target="_blank">免费收录网站搜索引擎登录口大全</a></li>
      <li><a href="/" title="做网站到底需要什么?" target="_blank">做网站到底需要什么?</a></li>
      <li><a href="/" title="企业做网站具体流程步骤" target="_blank">企业做网站具体流程步骤</a></li>
      <li><a href="/" title="建站流程篇——教你如何快速学会做网站" target="_blank">建站流程篇——教你如何快速学会做网站</a></li>
      <li><a href="/" title="box-shadow 阴影右下脚折边效果" target="_blank">box-shadow 阴影右下脚折边效果</a></li>
      <li><a href="/" title="打雷时室内、户外应该需要注意什么" target="_blank">打雷时室内、户外应该需要注意什么</a></li>
    </ul>
    <h3 class="ph">
      <p>点击<span>排行</span></p>
    </h3>
    <ul class="paih">
      <li><a href="/" title="Column 三栏布局 个人网站模板" target="_blank">Column 三栏布局 个人网站模板</a></li>
      <li><a href="/" title="withlove for you 个人网站模板" target="_blank">with love for you 个人网站模板</a></li>
      <li><a href="/" title="免费收录网站搜索引擎登录口大全" target="_blank">免费收录网站搜索引擎登录口大全</a></li>
      <li><a href="/" title="做网站到底需要什么?" target="_blank">做网站到底需要什么?</a></li>
      <li><a href="/" title="企业做网站具体流程步骤" target="_blank">企业做网站具体流程步骤</a></li>
    </ul>
    </div>
    <div class="visitors">
      <h3><p>最近访客</p></h3>
      <ul>

      </ul>
    </div>
     <!-- Baidu Button BEGIN -->
    <div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare"><a class="bds_tsina"></a><a class="bds_qzone"></a><a class="bds_tqq"></a><a class="bds_renren"></a><span class="bds_more"></span><a class="shareCount"></a></div>
    <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585" ></script> 
    <script type="text/javascript" id="bdshell_js"></script> 
    <script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script> 
    <!-- Baidu Button END -->   
</aside>
</article>
<footer>
  <p>Design by DanceSmile <a href="http://www.mycodes.net/" title="源码之家" target="_blank">源码之家</a> <a href="/">网站统计</a></p>
</footer>
<script src="js/silder.js"></script>
</body>
</html>