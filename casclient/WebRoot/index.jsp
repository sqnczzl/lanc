<%@ page import="com.sun.faces.mgbean.ManagedBeanInfo.MapEntry"%>
<%@ page import="org.apache.velocity.runtime.directive.Foreach"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="org.jasig.cas.client.authentication.*"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">

<title>CAS Client</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="CAS Client index page">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<%
		AttributePrincipal principal = (AttributePrincipal) request.getUserPrincipal();
		String username = principal.getName();
		Map<String, Object> attributes = principal.getAttributes();
	%>
	username =<%=username%>
	<br />
	<br />
	<%=attributes%>
	<br />
	<br />
	<%
		for (Map.Entry<String, Object> entry : attributes.entrySet()) {
	%>
	<%=entry.getKey()%>=<%=entry.getValue()%>
	<br />
	<%
		}
	%>
	<a href="http://localhost:71/TSB_ISCHOOL_SSO_SERVER_HUBEI/logout">退出登录</a>
</body>
</html>
