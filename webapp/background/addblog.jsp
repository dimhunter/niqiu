<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>后台管理</title>
</head>
<body>
<form action="${Context}addblog.do" method="post">
<table width="60%" border="1" height="60%" cellspacing="0" cellpadding="0" >
    <tr>
        <td colspan="2" >添加文章</td>
    </tr>
    <tr>
        <td>
           名称
        </td>
        <td>
            <input type="text" name="b_name" value="" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <c:forEach items="${cats}" var="ct" >
                <c:if test="${ct.part_id != 2}">
                <input type="radio" name="b_cat" value="${ct.id}"> ${ct.name} &nbsp;&nbsp;
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>
            内容
        </td>
        <td>
            <textarea name="b_content"  rows="30" cols="100" >

            </textarea>
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