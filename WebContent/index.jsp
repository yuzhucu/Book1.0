<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%> <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<title>ͼ�����ϵͳ-��ҳ</title>
<link href="<%=basePath %>css/index.css" rel="stylesheet" type="text/css" />
 </head>
<body>
<div id="container">
	<div id="banner"><img src="<%=basePath %>images/top.jpg" /></div>
	<div id="globallink">
		<ul>
			<li><a href="<%=basePath %>index.jsp">��ҳ</a></li>
			<li><a href="<%=basePath %>BookType/frontlist" target="OfficeMain">ͼ������</a></li> 
			<li><a href="<%=basePath %>Book/frontlist" target="OfficeMain">ͼ��</a></li> 
			<li><a href="<%=basePath%>login" target="OfficeMain">��̨��½</a></li> 
		</ul>
		<br />
	</div> 
	<div id="main">
	 <iframe id="frame1" src="<%=basePath %>desk.jsp" name="OfficeMain" width="100%" height="100%"  marginwidth=0 marginheight=0 frameborder=0 vspace=0 hspace=0 >
	 </iframe>
	</div>
	<div id="footer">
		<p> &copy;��Ȩ����&nbsp;&nbsp; �汾��2016V1.0</p>
	</div>
</div>
</body>
</html>
