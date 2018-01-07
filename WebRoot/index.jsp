<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>后台管理系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="jdbc, java demo, jdbc demo">
<meta http-equiv="description" content="Jdbc Java demo">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<h1 align=center>欢迎您的注册</h1>
	<h2>URL:<%=baseUrl%></h2>
	<br>
	<font size="6"><a href="<%=baseUrl%>/register.jsp"><font color="#0000ff">点击注册 </font> </a></font>
</body>
</html>
