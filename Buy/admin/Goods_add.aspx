<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Goods_add.aspx.cs" Inherits="admin_Goods_add" %>

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
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="1" width="80%">
    <tr><td class="style1">名称：</td><td class="style1">
        <asp:TextBox ID="title" runat="server"></asp:TextBox>
        </td></tr>
    <tr><td class="style1">价格：</td><td class="style1">
        <asp:TextBox ID="price" runat="server"></asp:TextBox>
        </td></tr>
     <tr><td class="style1">数量：</td><td class="style1">
         <asp:TextBox ID="num" runat="server"></asp:TextBox>
         </td></tr>
     <tr><td class="style1">封面：</td><td class="style1">
         <asp:FileUpload ID="img" runat="server" />
         </td></tr>
      <tr><td class="style2">详情：</td><td class="style2">
          <asp:TextBox ID="detail" runat="server" Height="100px" TextMode="MultiLine" 
              Width="400px"></asp:TextBox>
          </td></tr>
      <tr><td class="style1">状态：</td><td class="style1">
          <asp:DropDownList ID="state" runat="server">
              <asp:ListItem Value="1">上架</asp:ListItem>
              <asp:ListItem Value="0">下架</asp:ListItem>
          </asp:DropDownList>
          </td></tr>
      <tr><td class="style1">&nbsp;</td><td class="style1">
          <asp:Button ID="adddate" runat="server" Text="发  布" onclick="adddate_Click" />
          </td></tr>
    </table>
    </div>
    </form>
</body>
</html>
