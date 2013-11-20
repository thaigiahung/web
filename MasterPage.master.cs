using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = (Session["User"] != null ? 1 : 0);
        MultiView2.ActiveViewIndex = (Session["User"] != null ? 1 : 0);
    }
    protected void btnSignout_Click(object sender, EventArgs e)
    {
        Session.Remove("User");
        Response.Redirect("login.aspx");
    }
}
