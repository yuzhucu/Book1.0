<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%> 
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>信息管理系统_用户登录</title>
<style type="text/css">

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #016aa9;
	overflow:hidden;
}
.STYLE1 {
	color: #000000;
	font-size: 12px;
}

.STYLE2 {
	width:140px; 
	height:20px; 
	background-color:#292929; 
	border:solid 1px #7dbad7; 
	font-size:14px; 
	color:#6cd0ff
}

</style></head>

<body>

<sf:form method="post" modelAttribute="admin">  
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="480" border="0" align="center" cellpadding="0" cellspacing="0">
  
      <tr>
        <td height="53"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="160" background="<%=basePath %>images/login_06.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="80px" height="25"><div align="center"><span class="STYLE1">用户</span></div></td>
                <td width="80px" height="25"><div align="left">
                 <input type="text" name="username" class="STYLE2">
                  <sf:errors path="username" cssStyle="color:red" />
                </div></td>
                <td width="20px" height="25"></td>
              </tr>
              <tr>
                <td height="25"><div align="center"><span class="STYLE1">密码</span></div></td>
                <td height="25"><div align="left">
                  <input type="password" name="password" class="STYLE2">
                   <sf:errors path="password" cssStyle="color:red" />
                </div></td>
                <td height="25"><div width="50px" align="left"><img style="cursor:hand;" onclick="document.forms[0].submit();" src="<%=basePath %>images/dl.gif" width="49" height="18" border="0"></div></td>
              </tr>
            </table></td>
          
          </tr>
        </table></td>
      </tr>
      
    </table></td>
  </tr>
</table>
</sf:form>
 
 

</body>
</html>
