using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class market : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["User"] = "hung";
        if (Session["User"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            WebGameDataContext db = new WebGameDataContext();
            var cha1 = from n in db.characters
                      where n.username == Session["User"].ToString()
                      select n;
            lbName.Text = Session["User"].ToString();
            lbMoney.Text = cha1.First().char_money.ToString();
            if (!IsPostBack)
            {
                DropDownList1.SelectedValue = Session["ShopType"].ToString();
            }
            if (Request.QueryString["act"] == "buy" && Request.QueryString["id"] != "")
            {
                character userCharacter = db.characters.SingleOrDefault(c => c.username == Session["User"]);
                if (userCharacter == null) //Chưa có thì redirect qua trang tạo char
                {
                    Response.Redirect("~/CreateCharacter.aspx");
                }
                else
                {
                    var cha = from n in db.characters
                              where n.username == Session["User"].ToString()
                              select n;
                    var itemshop = from n in db.shops
                               where n.ID == int.Parse(Request.QueryString["id"].ToString())
                               select n;
                    if (itemshop.Count() > 0)
                    {
                        var item = from n in db.original_items
                                   where n.ID == itemshop.First().shop_item_id
                                   select n;
                        if (cha.First().char_money >= itemshop.First().shop_item_price)
                        {
                            cha.First().char_money -= itemshop.First().shop_item_price;
                            item ai = new item();
                            ai.item_name = item.First().item_name;
                            ai.item_description = item.First().item_description;
                            ai.item_level = item.First().item_level;
                            ai.item_require_level = 1;
                            ai.item_value1 = item.First().item_value1;
                            ai.item_value2 = item.First().item_value2;
                            ai.item_value3 = item.First().item_value3;
                            ai.item_username = Session["User"].ToString();
                            ai.item_type = item.First().item_type;
                            ai.item_icon = item.First().item_icon;
                            try
                            {
                                db.items.InsertOnSubmit(ai);
                                db.SubmitChanges();
                                Func.Alert("Bạn đã mua trang bị <" + item.First().item_name + "> thành công!");
                                Func.Move("market.aspx");
                            }
                            catch
                            {
                                Func.Alert("Có lỗi xảy ra, vui lòng thử lại!");
                                Func.Move("market.aspx");
                            }
                        }
                        else
                        {
                            Func.Alert("Bạn không đủ tiền!");
                            Func.Move("market.aspx");
                        }
                    }
                    else
                    {
                        Func.Alert("Trang bị này không tồn tại!");
                        Func.Move("market.aspx");
                    }
                }
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ShopType"] = DropDownList1.SelectedValue;
        ListView1.DataBind();
    }
}