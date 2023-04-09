<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goods.aspx.cs" Inherits="goods" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 22px;
        }
        .style2
        {
            height: 22px;
            width: 143px;
        }
        .style3
        {
            width: 143px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div>

    <table align="center" width="1000" border="0">
 <tr><td>&nbsp;</td></tr>
 </table>
  <table align="center"   width="1000" border="0" style="background:#FAEBD7;">
  <tr align="center"><td><a href="../admin/index.aspx" style="text-decoration">商品列表</a></td><td>会员中心</td><td><a href="../admin/main.aspx" style="text-decoration">后台管理</a></td></tr>
</table>
    <table align="center" width="1000" border="0">
    <tr><td rowspan="4" style="width:300px;">
      <asp:Image ID="img" runat="server"  />
        </td><td class="style2">商品:
        <asp:Label ID="title" runat="server" Text="Label"></asp:Label>
        </td>
        <td rowspan="4">
            <p style="font-size:20px;color:Red;">详细信息：</p><asp:Label ID="detail" runat="server" Text="Label"></asp:Label>
        </td>
        </tr>
    <tr><td class="style3">价格：<asp:Label ID="price" runat="server" Text="Label"></asp:Label>
        </td></tr>
    <tr><td class="style3">数量：<asp:Label ID="num" runat="server" Text="Label"></asp:Label>
        </td></tr>
    <tr><td class="style3"><a href="user/shopping_add.aspx?id=<%=Request.QueryString["id"] %>" style="text-decoration: none;font-size:20px;color:Green;"">购买</a></td></tr>
    </table>
    <table align="center" width="1000" border="0">
    <tr><td class="style1">
        &nbsp;</td></tr>
    </table>
</table>
    </div>
    </form>
</body>
</html>
