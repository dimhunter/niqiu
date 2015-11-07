<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>后台管理</title>
</head>
<body>
<form action="${Context}addcategory.do" method="post">
<table width="60%" border="1" height="60%" cellspacing="0" cellpadding="0" >
    <tr>
        <td colspan="2" >添加类别</td>
    </tr>
    <tr>
        <td>
           名称
        </td>
        <td>
            <input type="text" name="cat_name" value="" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <c:forEach items="${parts}" var="pt" >
                <c:if test="${pt.name != '首页'}" >
                    <input type="radio" name="cat_part" value="${pt.id}"> ${pt.name} &nbsp;&nbsp;
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td colspan="2" >
            <input type="submit" >
            <input type="reset" >
        </td>
    </tr>
</table>
</form>
</body>
</html>