<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Goods.aspx.cs" Inherits="admin_Goods" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <table align="center" width="1000" border="1">
    <tr align="center"><td>编号</td><td>商品</td><td>展示图片</td><td>价格</td><td>数量</td><td>时间</td><td>
        状态</td><td>操作</td></tr>
    <%
        string id = Request.QueryString["id"];
        if (id != null)
        {

            if (YF.BLL.Shopping.listgoods(int.Parse(id)).Count > 0)
            {
                YF.JsHelper.AlertAndRedirect("商品暂时不能被删除，当前已有人购买!", "Goods.aspx");
            }
            else {

                YF.BLL.Goods.del(int.Parse(id));
                YF.JsHelper.AlertAndRedirect("删除成功！", "Goods.aspx");
            }
           

        }
        List<YF.Model.Goods> list = YF.BLL.Goods.List();

        for (int i = 0; i < list.Count; i++)
        {
            string state = "";
            if (list[i].State == 1)
            {
                state = "正常";
            }
            else
            {
                state = "下架";
            }
         %>
    <tr align="center"><td><%=i+1 %></td><td><%=list[i].Title %></td><td><img src="../img/<%=list[i].Img %>" width="200px"/></td><td><%=list[i].Price %></td><td><%=list[i].Num %></td><td><%=list[i].Adddate %></td><td>
       <%=state%></td><td><a href="../goods.aspx?id=<%=list[i].Id %>" target="_blank">查看</a> | <a href="Good_edit.aspx?id=<%=list[i].Id %>">编辑</a> | <a href="Goods.aspx?id=<%=list[i].Id %>">删除</a></td></tr>
    <%} %>
    </table>
    </div>
    </form>
</body>
</html>
