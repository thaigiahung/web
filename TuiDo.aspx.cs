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
    }
}