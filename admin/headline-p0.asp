<%@ Language=VBScript %>
<!--#include file="database.asp"-->
<!--#include file="data.inc"-->
<%
set rs=server.CreateObject("adodb.recordset")
RS.Open "template",conn,1,3
rs.MoveFirst 
%>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY>
<form name="form1" method="post" action="headline-p1.asp">
  <input type="text" name="headline" size="50" value="<%=rs("headline")%>">
  <br>
  <input type="submit" name="Submit" value="Submit">
  <input type="reset" name="Submit2" value="Reset">
</form>
<P>&nbsp;</P>

</BODY>
</HTML>
