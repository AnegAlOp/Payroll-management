<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Enroll.aspx.cs" Inherits="index" %>

<%@ Register src="../inc/top.ascx" tagname="top" tagprefix="uc1" %>

<%@ Register src="../inc/top.ascx" tagname="top" tagprefix="uc2" %>

<%@ Register src="../inc/down.ascx" tagname="down" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 463px;
        }
        .style4
        {
            width: 463px;
        }
        .style5
        {
            height: 20px;
            width: 463px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>  
        <uc2:top ID="top1" runat="server" />
    <table width="1000" align="center">   
    <tr>
    <td class="style3" align="right">用户名:</td> 
    <td class="style2"><asp:TextBox ID="username" runat="server"></asp:TextBox>
      </td> 
       
    </tr>
    <tr>
    <td class="style4" align="right">密码:</td> 
    <td>
        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        </td> 
       
    </tr>
    <tr>
    <td class="style5" align="right">姓名：</td> 
    <td class="style1">
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        </td> 
       
    </tr>
    <tr>
    <td class="style5" align="right">地址：</td> 
    <td class="style1">
        <asp:TextBox ID="address" runat="server"></asp:TextBox>
        </td> 
       
    </tr>
    <tr>
    <td class="style5" align="right">性别：</td> 
    <td class="style1">
        <asp:DropDownList ID="sex" runat="server">
            <asp:ListItem Value="1">友仔</asp:ListItem>
            <asp:ListItem Value="2">友女</asp:ListItem>
        </asp:DropDownList>
        </td> 
       
    </tr>
    <tr>
    <td class="style5" align="right">手机：</td> 
    <td class="style1">
        <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
        </td> 
       
    </tr>
    <tr>
    <td class="style5" align="right">邮箱</td> 
    <td class="style1">
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        </td> 
       
    </tr>
    <tr>
    <td class="style5" align="right">QQ:</td> 
    <td class="style1">
        <asp:TextBox ID="qq" runat="server"></asp:TextBox>
        </td> 
       
    </tr>
    <tr>
    <td class="style5"></td> 
    <td class="style1">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="注册" />
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回登录界面" />
        </td> 
       
    </tr>
    </table>
    </div>
   
    </form>
</body>
</html>
