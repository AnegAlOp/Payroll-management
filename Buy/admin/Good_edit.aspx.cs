using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YF;
using System.IO;
public partial class admin_Good_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

        string goodsid = Request.QueryString["id"];

        YF.Model.Goods mygoods = YF.BLL.Goods.GetGoods(int.Parse(goodsid));
        this.goodsid.Value = mygoods.Id.ToString();

        this.title.Text = mygoods.Title;

        this.price.Text = mygoods.Price.ToString();

        this.num.Text = mygoods.Num.ToString();

        this.detail.Text = mygoods.Detail;

        this.state.Text = mygoods.State.ToString();

        this.imgold.Value = mygoods.Img;
        }

    }
    protected void adddate_Click(object sender, EventArgs e)
    {
        YF.Model.Goods mygoods = new YF.Model.Goods();

        mygoods.Id=int.Parse(this.goodsid.Value);

        mygoods.Title = this.title.Text;

        mygoods.Price = int.Parse(this.price.Text);

        mygoods.Num = int.Parse(this.num.Text);

        mygoods.Detail = this.detail.Text;

        mygoods.State = int.Parse(this.state.Text);
        if (img.HasFile)
        {
            string filename = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString() + Path.GetExtension(img.FileName);
            string filePath = "~/img/" + filename;
            img.SaveAs(MapPath(filePath));
            mygoods.Img = filename;//上传新图片
        }
        else
        {
            mygoods.Img = this.imgold.Value;//老旧的图片
        }
        if (YF.BLL.Goods.update(mygoods))
        {
            YF.JsHelper.AlertAndRedirect("编辑成功！", "../admin/Goods.aspx");
        }
        else
        {
            YF.JsHelper.AlertAndRedirect("编辑失败", "../admin/Goods.aspx");
        }
        
    }
}