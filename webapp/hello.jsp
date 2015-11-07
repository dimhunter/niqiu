<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="common/common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>${Title}</title>
</head>
<body>
	${username}
	${password}
	<c:forEach items="${users}" var="u">
		${u.username}<br/>
	</c:forEach>
</body>
</html>