using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class adm_account : AdminPage
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

    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        sqlAccount.SelectCommand = "SELECT * FROM [account] WHERE [username] LIKE '%" + txtSearch.Text + "%' OR [email] LIKE '%" + txtSearch.Text + "%' OR [name] LIKE N'%" + txtSearch.Text + "%' OR [phone] LIKE '%" + txtSearch.Text + "%'";
    }
}