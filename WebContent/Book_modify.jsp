<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<%@ page import="com.book.domain.Book" %>
<%@ page import="com.book.domain.BookType" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
 
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    //��ȡ���е�bookType��Ϣ
    List<BookType> bookTypeList = (List<BookType>)request.getAttribute("bookTypeList");
    Book book = (Book)request.getAttribute("book");

    String username=(String)session.getAttribute("username");
    if(username==null){
        response.getWriter().println("<script>top.location.href='" + basePath + "login';</script>");
    }
%>
<HTML><HEAD><TITLE>�޸�ͼ��</TITLE>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
.label {font-style.:italic; }
.errorLabel {font-style.:italic;  color:red; }
.errorMessage {font-weight:bold; color:red; }
</STYLE>
 <script src="<%=basePath %>calendar.js"></script> 
</HEAD>
<BODY background="<%=basePath %>images/adminBg.jpg"> 
<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top > 
 <sf:form method="post" modelAttribute="book" enctype="multipart/form-data" > 
<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">
  <tr>
    <td width=30%>ͼ��������:</td>
    <td width=70%><sf:input path="barcode" readOnly="true" size="20"/> 
     <sf:errors path="barcode" cssStyle="color:red" /></td>
  </tr>

  <tr>
    <td width=30%>ͼ������:</td>
    <td width=70%><sf:input path="bookName" size="20"/> 
     <sf:errors path="bookName" cssStyle="color:red" /></td>
  </tr>
 <tr>
    <td width=30%>ͼ������:</td>
    <td width=70%><sf:input path="author" size="20"/> 
     <sf:errors path="author" cssStyle="color:red" /></td>
  </tr>
  <tr>
    <td width=30%>ͼ�����:</td>
    <td width=70%>
      <select name="bookType.bookTypeId">
      <%
        for(BookType bookType:bookTypeList) {
          String selected = "";
          if(bookType.getBookTypeId() == book.getBookType().getBookTypeId())
            selected = "selected";
      %>
          <option value='<%=bookType.getBookTypeId() %>' <%=selected %>><%=bookType.getBookTypeName() %></option>
      <%
        }
      %>
    </td>
  </tr>

  <tr>
    <td width=30%>ͼ��۸�:</td>
    <td width=70%><sf:input path="price" size="8"/>Ԫ
     <sf:errors path="price" cssStyle="color:red" /></td>
  </tr>
  
  <tr>
    <td width=30%>����۸�:</td>
    <td width=70%><sf:input path="buyPrice" size="8"/>Ԫ
     <sf:errors path="buyPrice" cssStyle="color:red" /></td>
  </tr>
  
   <tr>
    <td width=30%>��������:</td>
    <td width=70%><sf:input path="buyDate" readonly="true" onclick="setDay(this);"/> 
     <sf:errors path="buyDate" cssStyle="color:red" /> </td>
  </tr>
  
  <tr>
    <td width=30%>���:</td>
    <td width=70%><sf:input path="count" size="8"/> 
     <sf:errors path="count" cssStyle="color:red" /></td>
  </tr>

  <tr>
    <td width=30%>������:</td>
    <td width=70%><sf:input path="publish" size="20"/> 
     <sf:errors path="publish" cssStyle="color:red" /></td>
  </tr>
  
   <tr>
    <td width=30%>��������:</td>
    <td width=70%><sf:input path="publishDate" readonly="true" onclick="setDay(this);"/> 
     <sf:errors path="publishDate" cssStyle="color:red" /> </td>
  </tr>
  

  <tr>
    <td width=30%>ͼ��ͼƬ:</td>
    <td width=70%><img src="<%=basePath %><%=book.getPhotoBook() %>" width="200px" border="0px"/><br/>
    <sf:hidden path="photoBook"/>
    <input id="photoBookFile" name="photoBookFile" type="file" size="50" /></td>
  </tr>
  <tr bgcolor='#FFFFFF'>
      <td colspan="4" align="center">
        <input type='submit' name='button' value='����' >
        &nbsp;&nbsp;
        <input type="reset" value='��д' />
      </td>
    </tr>

</table>
</sf:form>
   </TD></TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>