using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDown1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void item_value1TextBox_TextChanged(object sender, EventArgs e)
    {
        //string ddl;
        
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string s = searchbox.Text;
        SQLDataSelect.SelectCommand = "SELECT * FROM [item] WHERE item_name LIKE '%" + s + "%'";
        //searchbox.Text = "SELECT * FROM [item] WHERE item_name='s'";
    }
      
}