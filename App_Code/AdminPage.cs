using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for AdminPage
/// </summary>
public class AdminPage : Page
{
    protected WebGameDataContext db = new WebGameDataContext();

    public void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
            Response.Redirect("login.aspx");
    }
}