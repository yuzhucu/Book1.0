<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<%@ page import="com.book.domain.Book" %>
<%@ page import="com.book.domain.BookType" %>
 
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    //获取所有的bookType信息
    List<BookType> bookTypeList = (List<BookType>)request.getAttribute("bookTypeList");
    Book book = (Book)request.getAttribute("book");

%>
<HTML><HEAD><TITLE>查看图书</TITLE>
<STYLE type=text/css>
body{margin:0px; font-size:12px;  background-position:bottom; background-repeat:repeat-x;}
.STYLE1 {color: #ECE9D8}
.label {font-style.:italic; }
.errorLabel {font-style.:italic;  color:red; }
.errorMessage {font-weight:bold; color:red; }
</STYLE>
 <script src="<%=basePath %>calendar.js"></script>
</HEAD>
<BODY><br/><br/>
<s:fielderror cssStyle="color:red" />
<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top ><s:form action="" method="post" onsubmit="return checkForm();" enctype="multipart/form-data" name="form1">
<table width='100%' cellspacing='1' cellpadding='3'  class="tablewidth">
  <tr>
    <td width=30%>图书条形码:</td>
    <td width=70%><%=book.getBarcode() %></td>
  </tr>

  <tr>
    <td width=30%>图书名称:</td>
    <td width=70%><%=book.getBookName() %></td>
  </tr>
  
   <tr>
    <td width=30%>图书作者:</td>
    <td width=70%><%=book.getAuthor() %></td>
  </tr>

  <tr>
    <td width=30%>图书类别:</td>
    <td width=70%>
      <select name="book.bookType.bookTypeId" disabled>
      <%
        for(BookType bookType:bookTypeList) {
          String selected = "";
          if(bookType.getBookTypeId() == book.getBookType().getBookTypeId())
            selected = "selected";
      %>
          <option value='<%=bookType.getBookTypeId() %>' <%=selected %>><%=bookType.getBookTypeName() %></option>
      <%}%>
    </td>
  </tr>

  <tr>
    <td width=30%>图书价格:</td>
    <td width=70%><%=book.getPrice() %></td>
  </tr>
  
   <tr>
    <td width=30%>购买价格:</td>
    <td width=70%><%=book.getBuyPrice() %></td>
  </tr>
  
   <tr>
    <td width=30%>购买日期:</td>
    <td width=70%><%=book.getBuyDate() %></td>
  </tr>

  <tr>
    <td width=30%>库存:</td>
    <td width=70%><%=book.getCount() %></td>
  </tr>

  <tr>
    <td width=30%>出版社:</td>
    <td width=70%><%=book.getPublish() %></td>
  </tr>

  <tr>
    <td width=30%>图书图片:</td>
    <td width=70%><img src="<%=basePath %><%=book.getPhotoBook() %>" width="200px" border="0px"/></td>
  </tr>
  <tr>
      <td colspan="4" align="center">
        <input type="button" value="返回" onclick="history.back();"/>
      </td>
    </tr>

</table>
</s:form>
   </TD></TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>
