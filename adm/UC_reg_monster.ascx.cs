using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_UC_reg_monster : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void InsertButton_Click(object sender, EventArgs e)
    {
        FileUpload data = (FileUpload)FormView3.FindControl("FileUpload1");
        string txtname = (FormView3.FindControl("monster_nameTextBox0") as TextBox).Text;
        int txtlvl = Convert.ToInt32((FormView3.FindControl("monster_levelTextBox0") as TextBox).Text);
        int txtexp = Convert.ToInt32((FormView3.FindControl("monster_expTextBox0") as TextBox).Text);
        int txtmoney = Convert.ToInt32((FormView3.FindControl("monster_moneyTextBox0") as TextBox).Text);
        int txtboss = Convert.ToInt32((FormView3.FindControl("monster_is_bossTextBox0") as TextBox).Text);
        int txtmap = Convert.ToInt32((FormView3.FindControl("monster_mapTextBox0") as TextBox).Text);
        int txtdmg = Convert.ToInt32((FormView3.FindControl("monster_damageTextBox0") as TextBox).Text);
        int txthp = Convert.ToInt32((FormView3.FindControl("monster_hpTextBox0") as TextBox).Text);
        int txtdef = Convert.ToInt32((FormView3.FindControl("monster_defendTextBox0") as TextBox).Text);
        int txtnormal = Convert.ToInt32((FormView3.FindControl("monster_drop_normalTextBox0") as TextBox).Text);
        int txtrare = Convert.ToInt32((FormView3.FindControl("monster_drop_rareTextBox0") as TextBox).Text);
        int txtepic = Convert.ToInt32((FormView3.FindControl("monster_drop_epicTextBox0") as TextBox).Text);

        if (data.HasFile)
        {
            string filename = data.FileName;
            String picname = "~/resources/img/monsters/" + DateTime.Today.ToString("dd-MM-yyyy")
                    + "-" + filename;
            String physicalpath = Server.MapPath(picname);
            data.SaveAs(physicalpath);

            WebGameDataContext insertmonster = new WebGameDataContext();
            monster newMonster = new monster();

            newMonster.monster_name = txtname;
            newMonster.monster_level = txtlvl;
            newMonster.monster_money = txtmoney;
            newMonster.monster_exp = txtexp;
            newMonster.monster_is_boss = txtboss;
            newMonster.monster_map = txtmap;
            newMonster.monster_damage = txtdmg;
            newMonster.monster_hp = txthp;
            newMonster.monster_defend = txtdef;
            newMonster.monster_drop_normal = txtnormal;
            newMonster.monster_drop_rare = txtrare;
            newMonster.monster_drop_epic = txtepic;

            newMonster.monster_img = picname;

            insertmonster.monsters.InsertOnSubmit(newMonster);
            insertmonster.SubmitChanges();
        }
    }
}