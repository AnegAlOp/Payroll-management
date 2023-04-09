<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="../img/1290409.png">
 <table align="center" width="1000" border="0" style="margin:200px 0 0 0">
 <tr><td>&nbsp;</td></tr>
 </table>
  <table align="center"   width="1000" border="0" style="background:#DEDEDE; ">
  <tr align="center"><td><a href="index.aspx" style="text-decoration: none"">商品列表</a></td><td><a href="../user/index.aspx" style="text-decoration: none">会员中心</a></td><td><a href="main.aspx" style="text-decoration: none">[测试]系统后台管理</a></td></tr>
</table>
  <div style="width:1000px; margin:0 auto;">
  <ul style="list-style:none; margin:0; padding:0;">
        <%
        List<YF.Model.Goods> list = YF.BLL.Goods.listUI();

        for (int i = 0; i < list.Count; i++)
        {
         %>
         <li style="float:left; height:220px;width:300px; text-align:center; border:#DEDEDE solid 0px;margin:10px 10px 10px 0; padding:10px;text-decoration: none; font-size:20px;"><a href="../goods.aspx?id=<%=list[i].Id %>"style="text-decoration: none;color:Black;" ><img src="../img/<%=list[i].Img %>" width="100px" /><br />书名：<%=list[i].Title %><br />价格：<%=list[i].Price %></a></li>
          <%} %>
          </ul>
  
    </body>
</html>
