using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class nhaplieu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        WebGameDataContext db = new WebGameDataContext();
        var q = from n in db.original_items
                select n;
        foreach (var w in q)
        {
            shop s = new shop();
            s.shop_item_id = w.ID;
            s.shop_item_price = 1000;
            db.shops.InsertOnSubmit(s);
        }
        try
        {
            db.SubmitChanges();
            lbTB.Text = "Done!";
        }
        catch
        {
            lbTB.ForeColor = Color.Maroon;
            lbTB.Text = "Error!";
        }
    }
}