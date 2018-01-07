<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String baseUrl = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!
DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>后台管理系统</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="jdbc, java demo, jdbc demo">
<meta http-equiv="description" content="Jdbc Java demo">
<style type="text/css">
.neon {
	FILTER: glow(color = #002E60, strength	= 3)
}

DIV {
	WIDTH: 70px
}

BODY {
	MARGIN: 0px
}

BODY {
	MARGIN-TOP: 0px;
	SCROLLBAR-FACE-COLOR: #005fc5;
	FONT-SIZE: 12px;
	BACKGROUND: #ffffff;
	SCROLLBAR-HIGHLIGHT-COLOR: #799ae1;
	SCROLLBAR-SHADOW-COLOR: #799ae1;
	SCROLLBAR-3DLIGHT-COLOR: #005fc5;
	SCROLLBAR-ARROW-COLOR: #ffffff;
	SCROLLBAR-TRACK-COLOR: #aabfec;
	SCROLLBAR-DARKSHADOW-COLOR: #799ae1
}
</STYLE>
<style type="text/css">
.style6 {
	COLOR: #0000ff
}

.STYLE7 {
	COLOR: #003366;
	font-size: 12px;
}
</style>
<script type="text/javascript">
	function dosubmit() {
		var th = document.form1;
		if (th.username.value == "") {
			alert("用户名不能为空");
			th.username.focus();
			return;
		}

		if (th.realname.value == "") {
			alert("姓名 不能为空");
			th.realname.focus();
			return;
		}

		if (th.pswd.value == "") {
			alert("密码不能为空");
			th.pswd.focus();
			return;
		}
		th.action = "<%=baseUrl%>/RegisterAct.do"
		th.submit();

	}
</script>
</head>

<body bgColor=#ffffff
	onload="MM_preloadImages('<%=baseUrl%>/images/ok_2.jpg', '<%=baseUrl%>/images/fh_2.jpg')">
	<form action="" name="form1" method="post">
		<table height=470 cellSpacing=0 cellPadding=0 width=580 aligen=center
			border=0>
			<tbody>
				<tr>
					<td colSpan=3 height=9 />
				</tr>
				<tr>
					<td vAlign=top width=8 background="<%=baseUrl%>/images/dhpddw.gif"
						rowSpan=2>
						<!-- DWLayoutEmptyCell --> &nbsp;</td>
					<td background="<%=baseUrl%>/images/h-1.gif" height=9></td>
					<td width=9 height=9><IMG height=9
						src="<%=baseUrl%>/images/jiao.gif" width=9>
					</td>
				</tr>
				<tr>
					<td vAlign=top align=right width=743 height=452>
						<table cellSpacing=0 cellPadding=0 width=556 border=0>
							<!-- DWLayoutTable -->
							<tbody>
								<tr>
									<td vAligh=bottom width=548 height=27><IMG height=10
										src="<%=baseUrl%>/images/jt2.gif" width=10> <span
										class="1bt">用户注册</span>
									</td>
									<td width=8 rowSpan=3>&nbsp;</td>
								</tr>
								<tr>
									<td bgColor="#ffffff" height=22></td>
								</tr>
								<tr>
									<td class=unnamed1 vAligh=top height=9>
										<table width="99%" border=0 cellPadding=4 cellSpacing=1
											bgColor="#0867b3">
											<tbody>
												<TR bgColor=#ffffff height=20>
													<TD width=14% noWrap class="STYLE7">用户名</TD>
													<TD width=24% valign="top" noWrap><INPUT class=text2
														maxLength=20 size=18 name="username" minLength="1">
													</TD>
													<TD width=62% noWrap><span class="STYLE7">必须填写！</span>
													</TD>
												</TR>
												<TR bgColor=#ffffff height=20>
													<TD height="4" noWrap><span class="STYLE7">姓&nbsp;&nbsp;名</span>
													</TD>
													<TD height="4" valign="top" noWrap><INPUT class=text2
														maxLength=20 size=18 name="realname" minLength="1">
													</TD>
													<TD height="4" noWrap><span class="STYLE7">必须填写！</span>
													</TD>
												</TR>
												<TR bgColor=#ffffff height=20>
													<TD height="2" noWrap><span class="STYLE7">密码 </span>
													</TD>
													<TD height="2" valign="top" noWrap><INPUT
														type="password" class=text2 maxLength=20 size=18
														name="pswd" minLength="1">
													</TD>
													<TD height="2" noWrap><span class="STYLE7">必填项</span>
													</TD>
												</TR>
											</tbody>
										</table> <br>
									</td>
								</tr>
								<TR>
									<TD height=20 align="center"><a
										href="javascript:dosubmit();"><img
											src="<%=baseUrl%>/images/ok_1.jpg" name="Image8" width="60"
											height="22" border="0"> </a>&nbsp; <a
										href="<%=baseUrl%>/index.jsp"><img
											src="<%=baseUrl%>/images/fh_1.jpg" name="Image9" width="60"
											height="22" border="0"> </a>
									</TD>
									<TD></TD>
								</TR>
							</tbody>
						</table>
					</td>
					<TD width=9 background="<%=baseUrl%>/images/s-1.gif"></TD>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>
