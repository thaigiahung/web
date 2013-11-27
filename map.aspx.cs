using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class map : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            WebGameDataContext db = new WebGameDataContext();
            character user_char = db.characters.Single(c => c.username == Session["User"]);
            if (user_char.char_level < 10)
            {
                imgLv1_1.Visible = true;
                imgLv1_2.Visible = true;
                imgLv1_3.Visible = true;
                imgLv1_4.Visible = true;
            }
            else if (user_char.char_level < 20)
            {
                imgLv2_1.Visible = true;
                imgLv2_2.Visible = true;
                imgLv2_3.Visible = true;
                imgLv2_4.Visible = true;
            }
            else if (user_char.char_level < 30)
            {
                imgLv3_1.Visible = true;
                imgLv3_2.Visible = true;
                imgLv3_3.Visible = true;
                imgLv3_4.Visible = true;
            }
            else if (user_char.char_level < 40)
            {
                imgLv4_1.Visible = true;
                imgLv4_2.Visible = true;
                imgLv4_3.Visible = true;
                imgLv4_4.Visible = true;
            }
            else
            {
                imgLv5_1.Visible = true;
                imgLv5_2.Visible = true;
                imgLv5_3.Visible = true;
                imgLv5_4.Visible = true;
            }
        }
    }
}