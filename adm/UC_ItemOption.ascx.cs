using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_ItemOption_UC : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string s = searchbox.Text;
        SQL_Gridview.SelectCommand = "SELECT * FROM [item_option] WHERE opt_name LIKE '%" + s + "%'";
    }
}