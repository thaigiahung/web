using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm_UC_insertmonster : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void InsertButton_Click(object sender, EventArgs e)
    {
        FileUpload data = FileUpload1;
        string txtname = monster_nameTextBox0.Text;
        int txtlvl = Convert.ToInt32(monster_levelTextBox0.Text);
        int txtexp = Convert.ToInt32(monster_expTextBox0.Text);
        int txtmoney = Convert.ToInt32(monster_moneyTextBox0.Text);
        int txtboss = Convert.ToInt32(monster_is_bossTextBox0.Text);
        int txtmap = Convert.ToInt32(monster_mapTextBox0.Text);
        int txtdmg = Convert.ToInt32(monster_damageTextBox0.Text);
        int txthp = Convert.ToInt32(monster_hpTextBox0.Text);
        int txtdef = Convert.ToInt32(monster_defendTextBox0.Text);
        int txtnormal = Convert.ToInt32(monster_drop_normalTextBox0.Text);
        int txtrare = Convert.ToInt32(monster_drop_rareTextBox0.Text);
        int txtepic = Convert.ToInt32(monster_drop_epicTextBox0.Text);

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