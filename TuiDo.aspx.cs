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
            //Tìm character của user này
            character userCharacter = db.characters.SingleOrDefault(c => c.username == Session["User"]);
            if (userCharacter == null) //Chưa có thì redirect qua trang tạo char
            {
                Response.Redirect("~/CreateCharacter.aspx");
            }
            else
            {
                Label lbHP = (Label)FormView1.FindControl("lbHP");
                Label lbDamage = (Label)FormView1.FindControl("lbDamage");
                Label lbDefence = (Label)FormView1.FindControl("lbDefence");
                var userItems = db.items.Where(i => i.item_username == Session["User"] && i.item_equip == 1);
                
                foreach (item ite in userItems)
                {
                    lbHP.Text = (Convert.ToInt32(lbHP.Text) + ite.item_value3).ToString();
                    lbDamage.Text = (Convert.ToInt32(lbDamage.Text) + ite.item_value1).ToString();
                    lbDefence.Text = (Convert.ToInt32(lbDefence.Text) + ite.item_value2).ToString();
                }

                //Nón
                item userHelmet = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 1);
                if (userHelmet != null)
                {
                    btnHelmet.ImageUrl = userHelmet.item_icon;
                    btnHelmet.ToolTip = "Đánh   : " + userHelmet.item_value1 + "\nĐỡ   : " + userHelmet.item_value2 + "\nMáu      : " + userHelmet.item_value3;
                }

                //Áo
                item userArmor = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 2);
                if (userArmor != null)
                {
                    btnArmor.ImageUrl = userArmor.item_icon;
                    btnArmor.ToolTip = "Đánh   : " + userArmor.item_value1 + "\nĐỡ   : " + userArmor.item_value2 + "\nMáu      : " + userArmor.item_value3;
                }

                //Giày
                item userBoots = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 6);
                if (userBoots != null)
                {
                    btnBoots.ImageUrl = userBoots.item_icon;
                    btnBoots.ToolTip = "Đánh   : " + userBoots.item_value1 + "\nĐỡ   : " + userBoots.item_value2 + "\nMáu      : " + userBoots.item_value3;
                }

                //Bao tay
                item userGloves = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 5);
                if (userGloves != null)
                {
                    btnGloves.ImageUrl = userGloves.item_icon;
                    btnGloves.ToolTip = "Đánh   : " + userGloves.item_value1 + "\nĐỡ   : " + userGloves.item_value2 + "\nMáu      : " + userGloves.item_value3;
                }

                //Vũ khí
                item userWeapon = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 4);
                if (userWeapon != null)
                {
                    btnWeapon.ImageUrl = userWeapon.item_icon;
                    btnWeapon.ToolTip = "Đánh   : " + userWeapon.item_value1 + "\nĐỡ   : " + userWeapon.item_value2 + "\nMáu      : " + userWeapon.item_value3;
                }

                //Khiên
                item userShield = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 3);
                if (userShield != null)
                {
                    btnShield.ImageUrl = userShield.item_icon;
                    btnShield.ToolTip = "Đánh   : " + userShield.item_value1 + "\nĐỡ   : " + userShield.item_value2 + "\nMáu      : " + userShield.item_value3;
                }
            }            
        }        
    }
    protected void btnHelmet_Click(object sender, ImageClickEventArgs e)
    {
        item userHelmet = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 1);
        if (userHelmet != null)
        {
            userHelmet.item_equip = 0;            
            db.SubmitChanges();
            btnHelmet.ImageUrl = "~/resources/img/item/helmet.gif";
            btnHelmet.ToolTip = null;

            //Tháo ra thì trừ điểm
            Label lbHP = (Label)FormView1.FindControl("lbHP");
            Label lbDefence = (Label)FormView1.FindControl("lbDefence");
            lbHP.Text = (Convert.ToInt32(lbHP.Text) - userHelmet.item_value3).ToString();
            lbDefence.Text = (Convert.ToInt32(lbDefence.Text) - userHelmet.item_value2).ToString();
        }
        Response.Redirect(Request.RawUrl);
    }
    protected void btnArmor_Click(object sender, ImageClickEventArgs e)
    {
        item userArmor = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 2);
        if (userArmor != null)
        {
            userArmor.item_equip = 0;
            db.SubmitChanges();
            btnArmor.ImageUrl = "~/resources/img/item/armor.gif";
            btnArmor.ToolTip = null;

            //Tháo ra thì trừ điểm
            Label lbHP = (Label)FormView1.FindControl("lbHP");
            Label lbDefence = (Label)FormView1.FindControl("lbDefence");
            lbHP.Text = (Convert.ToInt32(lbHP.Text) - userArmor.item_value3).ToString();
            lbDefence.Text = (Convert.ToInt32(lbDefence.Text) - userArmor.item_value2).ToString();
        }
        Response.Redirect(Request.RawUrl);
    }
    protected void btnBoots_Click(object sender, ImageClickEventArgs e)
    {
        item userBoots = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 6);
        if (userBoots != null)
        {
            userBoots.item_equip = 0;
            db.SubmitChanges();
            btnBoots.ImageUrl = "~/resources/img/item/boots.gif";
            btnBoots.ToolTip = null;

            //Tháo ra thì trừ điểm
            Label lbHP = (Label)FormView1.FindControl("lbHP");
            Label lbDamage = (Label)FormView1.FindControl("lbDamage");
            lbHP.Text = (Convert.ToInt32(lbHP.Text) - userBoots.item_value3).ToString();
            lbDamage.Text = (Convert.ToInt32(lbDamage.Text) - userBoots.item_value1).ToString();
        }
        Response.Redirect(Request.RawUrl);
    }
    protected void btnGloves_Click(object sender, ImageClickEventArgs e)
    {
        item userGloves = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 5);
        if (userGloves != null)
        {
            userGloves.item_equip = 0;
            db.SubmitChanges();
            btnGloves.ImageUrl = "~/resources/img/item/gloves.gif";
            btnGloves.ToolTip = null;

            //Tháo ra thì trừ điểm
            Label lbHP = (Label)FormView1.FindControl("lbHP");
            Label lbDamage = (Label)FormView1.FindControl("lbDamage");
            lbHP.Text = (Convert.ToInt32(lbHP.Text) - userGloves.item_value3).ToString();
            lbDamage.Text = (Convert.ToInt32(lbDamage.Text) - userGloves.item_value1).ToString();
        }
        Response.Redirect(Request.RawUrl);
    }
    protected void btnWeapon_Click(object sender, ImageClickEventArgs e)
    {
        item userWeapon = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 4);
        if (userWeapon != null)
        {
            userWeapon.item_equip = 0;
            db.SubmitChanges();
            btnWeapon.ImageUrl = "~/resources/img/item/weapon.gif";
            btnWeapon.ToolTip = null;

            //Tháo ra thì trừ điểm
            Label lbDamage = (Label)FormView1.FindControl("lbDamage");
            lbDamage.Text = (Convert.ToInt32(lbDamage.Text) - userWeapon.item_value1).ToString();
        }
        Response.Redirect(Request.RawUrl);
    }
    protected void btnShield_Click(object sender, ImageClickEventArgs e)
    {
        item userShield = db.items.SingleOrDefault(i => i.item_username == Session["User"] && i.item_equip == 1 && i.item_type == 3);
        if (userShield != null)
        {
            userShield.item_equip = 0;
            db.SubmitChanges();
            btnShield.ImageUrl = "~/resources/img/item/shield.gif";
            btnShield.ToolTip = null;

            //Tháo ra thì trừ điểm
            Label lbDefence = (Label)FormView1.FindControl("lbDefence");
            lbDefence.Text = (Convert.ToInt32(lbDefence.Text) - userShield.item_value2).ToString();
        }
        Response.Redirect(Request.RawUrl);
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "TrangBi1")
        {
            int selectedRow = e.Item.DataItemIndex;
            
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

            //Gán hình
            ImageButton btnItem = (ImageButton)ListView1.Items[selectedRow].FindControl("imgItem1");
            btnItem.ImageUrl = selectedItem.item_icon;

            db.SubmitChanges();
            Response.Redirect(Request.RawUrl);
        }
        else if (e.CommandName == "TrangBi2")
        {
            int selectedRow = e.Item.DataItemIndex;
            
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

            //Gán hình
            ImageButton btnItem = (ImageButton)ListView1.Items[selectedRow].FindControl("imgItem2");
            btnItem.ImageUrl = selectedItem.item_icon;

            db.SubmitChanges();
            Response.Redirect(Request.RawUrl);
        }
    }
}