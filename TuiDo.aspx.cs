using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TuiDo : System.Web.UI.Page
{
    WebGameDataContext db = new WebGameDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["User"] = "hung";
        if (Session["User"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {     
            //Nón
            item userHelmet = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 1);
            if (userHelmet != null)
                btnHelmet.ToolTip = "Máu   : " + userHelmet.item_value2 + "\nĐỡ      : " + userHelmet.item_value3;

            //Áo
            item userArmor = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 2);
            if (userArmor != null)
                btnArmor.ToolTip = "Máu   : " + userArmor.item_value2 + "\nĐỡ      : " + userArmor.item_value3;

            //Giày
            item userBoots = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 6);
            if (userBoots != null)
                btnBoots.ToolTip = "Đánh  : " + userBoots.item_value1 + "\nMáu     : " + userBoots.item_value3;

            //Bao tay
            item userGloves = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 5);
            if (userGloves != null)
                btnGloves.ToolTip = "Đánh  : " + userGloves.item_value1 + "\nMáu     : " + userGloves.item_value3;

            //Vũ khí
            item userWeapon = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 4);
            if (userWeapon != null)
                btnWeapon.ToolTip = "Đánh  : " + userWeapon.item_value1;

            //Khiên
            item userShield = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 3);
            if (userShield != null)
                btnShield.ToolTip = "Đỡ  : " + userShield.item_value2;
        }
    }
    protected void btnHelmet_Click(object sender, ImageClickEventArgs e)
    {
        item userHelmet = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 1);
        if (userHelmet != null)
        {
            userHelmet.item_equip = 0;
            db.SubmitChanges();
            btnHelmet.ToolTip = null;
        }
        ListView1.DataBind();
    }
    protected void btnArmor_Click(object sender, ImageClickEventArgs e)
    {
        item userArmor = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 2);
        if (userArmor != null)
        {
            userArmor.item_equip = 0;
            db.SubmitChanges();
            btnArmor.ToolTip = null;
        }
        ListView1.DataBind();
    }
    protected void btnBoots_Click(object sender, ImageClickEventArgs e)
    {
        item userBoots = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 6);
        if (userBoots != null)
        {
            userBoots.item_equip = 0;
            db.SubmitChanges();
            btnBoots.ToolTip = null;
        }
        ListView1.DataBind();
    }
    protected void btnGloves_Click(object sender, ImageClickEventArgs e)
    {
        item userGloves = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 5);
        if (userGloves != null)
        {
            userGloves.item_equip = 0;
            db.SubmitChanges();
            btnGloves.ToolTip = null;
        }
        ListView1.DataBind();
    }
    protected void btnWeapon_Click(object sender, ImageClickEventArgs e)
    {
        item userWeapon = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 4);
        if (userWeapon != null)
        {
            userWeapon.item_equip = 0;
            db.SubmitChanges();
            btnWeapon.ToolTip = null;
        }
        ListView1.DataBind();
    }
    protected void btnShield_Click(object sender, ImageClickEventArgs e)
    {
        item userShield = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 3);
        if (userShield != null)
        {
            userShield.item_equip = 0;
            db.SubmitChanges();
            btnShield.ToolTip = null;
        }
        ListView1.DataBind();
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "TrangBi1")
        {
            int selectedRow = e.Item.DataItemIndex;
            ImageButton item = (ImageButton)ListView1.Items[selectedRow].FindControl("imgItem1");
            Label lblItemId = (Label)ListView1.Items[selectedRow].FindControl("lbItemId1");
            Label lblItemType = (Label)ListView1.Items[selectedRow].FindControl("lblItemType1");            
             
            //Tìm ra item có id được user chọn
            item selectedItem = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.ID == Convert.ToInt32(lblItemId.Text));

            //Kiểm tra hiện tại có mang loại trang bị này chưa
            item userItem = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == Convert.ToInt32(lblItemType.Text));
            if (userItem != null) //Nếu đã có thì phải tháo ra và gắn cái được chọn vào
            { 
                userItem.item_equip = 0;                
            }
            selectedItem.item_equip = 1;
            db.SubmitChanges();
            ListView1.DataBind();
        }
        else if (e.CommandName == "TrangBi2")
        {
            int selectedRow = e.Item.DataItemIndex;
            ImageButton item = (ImageButton)ListView1.Items[selectedRow].FindControl("imgItem2");
            Label lblItemId = (Label)ListView1.Items[selectedRow].FindControl("lbItemId2");
            Label lblItemType = (Label)ListView1.Items[selectedRow].FindControl("lblItemType2");

            //Tìm ra item có id được user chọn
            item selectedItem = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.ID == Convert.ToInt32(lblItemId.Text));

            //Kiểm tra hiện tại có mang loại trang bị này chưa
            item userItem = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == Convert.ToInt32(lblItemType.Text));
            if (userItem != null) //Nếu đã có thì phải tháo ra và gắn cái được chọn vào
            {
                userItem.item_equip = 0;
            }
            selectedItem.item_equip = 1;
            db.SubmitChanges();
            ListView1.DataBind();
        }
    }
}