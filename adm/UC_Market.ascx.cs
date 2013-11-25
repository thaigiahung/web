using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_UC_Market : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string s = searchbox.Text;
        SQL_GridView.SelectCommand = "SELECT * FROM item i JOIN market m on i.ID = m.market_item_id WHERE i.item_name LIKE '%" + s + "%'";
    }
}