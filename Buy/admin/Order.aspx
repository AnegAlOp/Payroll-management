<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="admin_Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" align="center" border="1">   

            <tr align="center"><td>订单号</td><td >商品详情</td><td >状态</td><td>价格</td><td>日期</td><td>&nbsp;</td></tr>
          <%

                         
              if (Request.QueryString["action"] == "fukuan")
              {
                  string id = Request.QueryString["id"];
                  
                  YF.BLL.Order.update(id, 2);
                  
                  YF.JsHelper.AlertAndParentUrl("付款完成","order.aspx");
                  
              }
                  
              else if (Request.QueryString["action"] == "over")
              {
                  string id = Request.QueryString["id"];
                  
                  YF.BLL.Order.update(id, 4);
                  
                  YF.JsHelper.AlertAndParentUrl("订单结束","order.aspx");
                  
              }
              if (Request.QueryString["action"] == "fahuo")
              {
                  string id = Request.QueryString["id"];

                  YF.BLL.Order.update(id, 3);

                  YF.JsHelper.AlertAndRedirect("已成功发货", "order.aspx");

              }
                
              
            
           

              List<YF.Model.Order> list = YF.BLL.Order.list();

            for (int i = 0; i < list.Count; i++)
            {
                string state = "";
                if(list[i].State==1)
                {
                    state="未付款";
                }
                else if (list[i].State == 2)
                {
                    state = "已付款";
                }
                else if (list[i].State == 3)
                {
                    state = "已发货";
                }
                else {
                    state = "未发货";
                
                }
               
                

                %>

            <tr align="center"><td><%=list[i].Id %></td><td>

            <table>
            <% 
                List<YF.Model.Shopping> shoppinglist = YF.BLL.Shopping.list(list[i].Id);
                for (int j = 0; j < shoppinglist.Count; j++)
            {%>
            <tr><td><img src="/img/<%=shoppinglist[j].Goods.Img %>" width="50"/></td><td>商品：<%=shoppinglist[j].Goods.Title %></td><td>件数：<%=shoppinglist[j].Num %></td><td>合：<%=shoppinglist[j].Num * shoppinglist[j].Goods.Price%></td></tr>
            <%}
                 %>
            </table>
            </td><td><%=state %></td><td><%=list[i].Amount %>.00</td><td><%=list[i].Adddate%></td><td>
                <a href="Order.aspx?id=<%=list[i].Id%>&action=fahuo">发货</a> </td></tr>



            <%} %>
            
    </div>
    </form>
</body>
</html>
