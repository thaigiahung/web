using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_UC_Hero : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string s = searchbox.Text;
        GridView_Hero.SelectCommand = "SELECT * FROM [Hero] WHERE Name LIKE '%" + s + "%'";
    }
}