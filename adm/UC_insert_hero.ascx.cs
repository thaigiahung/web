using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_UC_insert_hero : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void InsertButton_Click(object sender, EventArgs e)
    {
        FileUpload data = FileUpload1;
        FileUpload data2 = FileUpload2;
        string txtname = textboxName.Text;
        int txtidtype = Convert.ToInt32(textboxIDType.Text);
        string txtlore = textboxLore.Text;
        

        if (data.HasFile || data2.HasFile)
        {
            string filename = data.FileName;
            String picname = "~/resources/img/hero/" + DateTime.Today.ToString("dd-MM-yyyy")
                    + "-" + filename;
            String physicalpath = Server.MapPath(picname);
            data.SaveAs(physicalpath);

            string filename2 = data2.FileName;
            String picnameskin = "~/resources/img/hero/" + DateTime.Today.ToString("dd-MM-yyyy")
                    + "-" + filename2;
            String physicalpath2 = Server.MapPath(picnameskin);
            data2.SaveAs(physicalpath2);

            WebGameDataContext inserthero = new WebGameDataContext();
            Hero themhero = new Hero();

            themhero.Name = txtname;
            themhero.IdType = txtidtype;
            themhero.Lore = txtlore;
            themhero.Skin = picnameskin;
            themhero.Avatar = picname;

            inserthero.Heros.InsertOnSubmit(themhero);
            inserthero.SubmitChanges();
        }
    }
}