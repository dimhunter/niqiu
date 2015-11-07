<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>${Title}</title>
<link href="css/base.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header>
  <div id="logo"><a href="/"></a></div>
  <nav class="topnav" id="topnav">
    <a href="index.jsp"><span>首页</span><span class="en">Protal</span></a>
    <a href="${Context}pictures.do?part_id=2"><span>瞬间永恒</span><span class="en">Gustbook</span></a>
    <a href="${Context}mylife.do?part_id=3"><span>慢生活</span><span class="en">Life</span></a>
    <a href="moodlist.jsp"><span>学无止境</span><span class="en">Doing</span></a>
    <a href="about.jsp"><span>关于我</span><span class="en">About</span></a>
    <%--<a href="backgroud/detail.jsp"><span>留言板</span><span class="en">Learn</span></a>--%>
    <a href="background/console.jsp"><span>留言板</span><span class="en">Learn</span></a>
  </nav>
</header>
</body>
</html>