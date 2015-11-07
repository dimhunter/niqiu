<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>后台管理</title>
</head>
<body>
<table width="100%" border="1" height="100%" cellspacing="0" cellpadding="0" >
    <tr>
        <td height="100px" colspan="2" >泥鳅啊啊啊啊-后台管理   <a href="${Context}index.jsp">返回首页</a></td>
    </tr>
    <tr>
        <td width="200px" valign="top">
            <a href="${Context}toaddcategory.do" target="bk_iframe">添加类别</a>
            <br/>
            <br/>
            <a href="${Context}toaddblog.do" target="bk_iframe">上传照片</a>
            <br/>
            <br/>
            <a href="${Context}toaddblog.do" target="bk_iframe">添加文章</a>
        </td>
        <td>
            <iframe name="bk_iframe" width="100%" height="100%" frameborder="0" scrolling="auto" src="http://www.baidu.com"></iframe>
        </td>
    </tr>
</table>
</body>
</html>