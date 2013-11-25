using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_UC_Monster : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string s = searchbox.Text;
        SQLSelectMonster.SelectCommand = "SELECT * FROM [monster] WHERE monster_name LIKE '%" + s + "%'";
    }
}