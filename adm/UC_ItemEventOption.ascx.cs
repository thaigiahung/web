using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_UC_ItemEventOption : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string s = searchbox.Text;
        SQL_GridView.SelectCommand = "SELECT * FROM [itemevent_option] WHERE eventopt_name LIKE '%" + s + "%'";
    }
}