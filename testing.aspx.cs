using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testing : User
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void check_Click(object sender, EventArgs e)
    {
        try
        {
            bool result = CheckUN(UsrName.Text);
            if (result == true)
                Label1.Text = "ko tồn tại";
            else
                Label1.Text = "tồn tại";
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    [System.Web.Services.WebMethod]
    public bool CheckUN(string UserName)
    {
        bool check = false;
        string username = UserName;
        account user = db.accounts.SingleOrDefault(n => n.username == username);
        if (user != null)
        {
            check = false;

        }
        else check = true;

        return check;
    }
}