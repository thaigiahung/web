using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class adm_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        WebGameDataContext db = new WebGameDataContext();
        try
        {
            account acc = new account
                        {
                            ID =  Guid.NewGuid(),
                            username = txtUsername.Text,
                            password = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "MD5"),
                            email = txtEmail.Text,
                            name = txtName.Text,
                            status = 1,
                            role = int.Parse(ddlRole.SelectedValue)
                        };
            db.accounts.InsertOnSubmit(acc);
            db.SubmitChanges();

            lblError.Text = "Thành công!";

            gvAccount.DataBind();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}