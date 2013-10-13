using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckUserName : User
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Services.WebMethod]
    public bool CheckUN(string UserName)
    {
        bool check = false;
        string username = UserName; 
        account user = db.accounts.Single(n => n.username == username);
        if (user != null)
        {
            check = false;
            
        }
        else check = true;
        
        return check;
    }
}
