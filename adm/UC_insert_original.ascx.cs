using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_UC_insert_original : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void InsertButton_Click(object sender, EventArgs e)
    {
        FileUpload data = FileUpload1;
        string txtname = item_nameTextBox.Text;
        string txtdiscription = item_descriptionTextBox.Text;
        int txtlevel = Convert.ToInt32(item_levelTextBox.Text);
        int txtrequiredlvl = Convert.ToInt32(item_require_levelTextBox.Text);
        int txtitemtype = Convert.ToInt32(DropDownList1.Text);
        int txtvalue1 = Convert.ToInt32(item_value1TextBox.Text);
        int txtvalue2 = Convert.ToInt32(item_value2TextBox.Text);
        int txtvalue3 = Convert.ToInt32(item_value3TextBox.Text);
        int txtvalue4 = Convert.ToInt32(item_value4TextBox.Text);
        int txtvalue5 = Convert.ToInt32(item_value5TextBox.Text);
        
        if (data.HasFile)
        {
            string filename = data.FileName;
            String picname = "~/resources/img/originalitem/" + DateTime.Today.ToString("dd-MM-yyyy")
                    + "-" + filename;
            String physicalpath = Server.MapPath(picname);
            data.SaveAs(physicalpath);

            WebGameDataContext ori = new WebGameDataContext();
            original_item newItem = new original_item();

            newItem.item_name = txtname;
            newItem.item_description = txtdiscription;
            newItem.item_level = txtlevel;
            newItem.item_type = txtitemtype;
            newItem.item_value1 = txtvalue1;
            newItem.item_value2 = txtvalue2;
            newItem.item_value3 = txtvalue3;
            newItem.item_value4 = txtvalue4;
            newItem.item_value5 = txtvalue5;
           
            newItem.item_icon = picname;

            ori.original_items.InsertOnSubmit(newItem);
            ori.SubmitChanges();
        }
    }
}