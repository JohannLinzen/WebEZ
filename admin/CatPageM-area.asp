<%@ Language=VBScript %>

<!--#include file="database.asp"-->
<!--#include file="data.inc"-->
<%
id=cint(Request.QueryString("id"))
Response.Write "catcontent 資料庫識別代碼" & id & "<br>"
Response.Write "<A HREF=CatpageM-del.asp?id=" & id & ">刪除此段圖文</A><br>"
set rs=server.CreateObject("adodb.recordset")
	SQLStr="select * from catcontent where id=" & id
	set rs=conn.Execute (SQLstr)
	

%>





<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<META HTTP-EQUIV="Content-Type" content="text/html; charset=iso-950">

</HEAD>
<BODY>
<p>或修改文字及圖片 
  <%
''以下的form必須配合SAfileup元件使用語法傳送圖片及文字並在下一步驟中寫入資料庫中
''其中有4個元素 title & id & file1 & content1
%>
  <br>
</p>
<p> <a href="CatpageM-area-layout.asp?id=<%=id%>" >修改此段圖文排版</a></p>
<FORM action="catPageM-area-p1.asp" ENCTYPE="multipart/form-data" METHOD="post" id=form1 name=form1>
  <TABLE WIDTH=100% BORDER=0 CELLSPACING=1 CELLPADDING=1>
    <TR> 
      <TD align="left" valign="top">Title</TD>
      <TD valign="top" align="left"> 
        <input type="text" name="title" value="<%=rs("title")%>">
      </TD>
    </TR>
    <TR> 
      <TD align="left" valign="top">文字</TD>
      <TD valign="top" align="left"> 
        <INPUT type="hidden" id=text2 name=id value=<%=id%>>
        <textarea id="text1" name="content1" cols="100" rows="10" ><%=rs("content1")%>
		</textarea>
      </TD>
    </TR>
    <TR> 
      <TD align="left" valign="top">編修圖片</TD>
      <TD valign="top" align="left"> 
        <INPUT type="file" id=file1 name=file1>
      </TD>
    </TR>
    <TR> 
      <TD colspan="2" align="left" valign="top"> 
        <div align="center"> 
          <input type="submit" name="Submit" value="Submit">
        </div>
      </TD>
    </TR>
  </TABLE>


</FORM>
</BODY>
</HTML>
<%
rs.Close 
set rs=nothing
conn.close
set conn=nothing	
%>
