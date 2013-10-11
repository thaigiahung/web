using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


public partial class adm_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        WebGameDataContext db = new WebGameDataContext();
        try
        {
            String hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "MD5");
            account admin = db.accounts.Single(a => a.username == txtUsername.Text && a.password == hashedPassword && a.role == 1);
            Session["Admin"] = admin;

            Response.Redirect("Default.aspx");
        }
        catch
        {
            lblError.Text = "Sai tên đăng nhập hoặc mật khẩu";
        }
    }
}