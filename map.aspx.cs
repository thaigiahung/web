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
                imgLv1.Visible = true;
            }
            else if (user_char.char_level < 20)
            {
                imgLv2.Visible = true;
            }
            else if (user_char.char_level < 30)
            {
                imgLv3.Visible = true;
            }
            else if (user_char.char_level < 40)
            {
                imgLv4.Visible = true;
            }
            else
            {
                imgLv5.Visible = true;
            }
        }
    }
}