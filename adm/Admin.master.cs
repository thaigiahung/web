using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_Admin : System.Web.UI.MasterPage
{
    protected void Page_PreRender(object sender, EventArgs e)
    {
        
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        WebGameDataContext db = new WebGameDataContext();
        account user = db.accounts.SingleOrDefault(a => a.username == Session["Admin"]);
        if (user != null)
            lblName.Text = user.name;
    }

    protected void btnSignout_Click(object sender, EventArgs e)
    {
        Session.Remove("Admin");
        Response.Redirect("~/adm/login.aspx");
    }
}
