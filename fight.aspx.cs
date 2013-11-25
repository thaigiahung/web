using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Timers;



public partial class fight : User
{
    public int temp_HeroHP;
    public int temp_HeroDamage;
    public int temp_HeroDefend;
    public int temp_MonsterHP;
    public int temp_MonsterDamage;
    public int temp_MonsterDefend;
    public int flag = 0;
    public int mark = 0;

    public void Page_Load(object sender, EventArgs e)
    {
        Session["User"] = "hung";
        if (Session["User"] == null)
        {
            Response.Redirect("~/login.aspx");
            
        }
        else
        {
            string monsterid = "1"; //Request.QueryString["id"];
            account user = db.accounts.SingleOrDefault(n => n.username == Session["User"]);
            character cha = db.characters.SingleOrDefault(c => c.username == Session["User"]);
            monster mon = db.monsters.SingleOrDefault(m => m.ID.ToString() == monsterid);
            
            //lấy item

            //  helmet:        + Defend + HP (  2 3)
            //  armor:         + Defend + HP (  2 3)
            //  shield:        + Defend +    (  2  )
            //  weapon: Damage +        +    (1    )
            //  gloves: Damage +        + HP (1   3)
            //  boots:  Damage +        + HP (1   3)

            item helmet = db.items.SingleOrDefault(h => h.ID == cha.char_item_equipment_helm.Value);
            item armor = db.items.SingleOrDefault(a => a.ID == cha.char_item_equipment_armor.Value);
            item shield = db.items.SingleOrDefault(s => s.ID == cha.char_item_equipment_shield.Value);
            item weapon = db.items.SingleOrDefault(w => w.ID == cha.char_item_equipment_weapon.Value);
            item gloves = db.items.SingleOrDefault(g => g.ID == cha.char_item_equipment_gloves.Value);
            item boots = db.items.SingleOrDefault(i => i.ID == cha.char_item_equipment_boots.Value);

            //param 1 + value 1 => damage
            //param 2 + value 2 => defend
            //param 3 + value 3 => HP
            //param 4 + value 4 => 
            //param 5 + value 5 => 

            //lấy chỉ số tổng
            temp_HeroHP = cha.char_hp.Value;
            temp_HeroDamage = cha.char_damage.Value;
            temp_HeroDefend = cha.char_defend.Value;

            temp_MonsterDamage = mon.monster_damage.Value;
            temp_MonsterDefend = mon.monster_defend.Value;
            temp_MonsterHP = mon.monster_hp.Value;

            if (helmet != null)
            {
                temp_HeroHP = temp_HeroHP + helmet.item_value3.Value;
                temp_HeroDefend = temp_HeroDefend + helmet.item_value3.Value;
            }
            if(armor != null)
            {
                temp_HeroDefend = temp_HeroDefend + armor.item_value2.Value;
                temp_HeroHP = temp_HeroHP + armor.item_value3.Value;
            }
            if (shield != null)
            {
                temp_HeroDefend = temp_HeroDefend + shield.item_value2.Value;
            }
            if(weapon != null)
            {
                temp_HeroDamage = temp_HeroDamage + weapon.item_value1.Value;
            }
            if (gloves != null)
            {
                temp_HeroDamage = temp_HeroDamage + gloves.item_value2.Value;
                temp_HeroHP = temp_HeroHP + gloves.item_value3.Value;
            }
            if (boots != null)
            {
                temp_HeroDamage = temp_HeroDamage + boots.item_value2.Value;
                temp_HeroHP = temp_HeroHP + boots.item_value3.Value;
            }
            lbHeroName.Text = cha.char_name;
            lbMonsterName.Text = mon.monster_name;
            lbHeroLv.Text = "Level " + cha.char_level.Value.ToString();
            lbMonsterLv.Text = "Level " + mon.monster_level.Value.ToString();
            ImgHero.ImageUrl = cha.char_skin;
            ImgMonster.ImageUrl = mon.monster_img;

            
            lbHeroDamage.Text = temp_HeroDamage.ToString();
            lbHeroDefend.Text = temp_HeroDefend.ToString();
            lbMonsterDamage.Text = mon.monster_damage.ToString();
            lbMonsterDefend.Text = mon.monster_defend.ToString();
            if (lbmark.Text == "0")
            {
                UHP.Text = temp_HeroHP.ToString();
                MHP.Text = temp_MonsterHP.ToString();
                lbHeroHP.Text = UHP.Text;
                lbMonsterHP.Text = MHP.Text;
            }
            //else
            //{
            //    lbMonsterHP.Text = temp_MonsterHP.ToString();
            //    lbHeroHP.Text = temp_HeroHP.ToString();
            //}
        }
        
    }
    protected void btnFight_Click(object sender, EventArgs e)
    {

        btnFight.Visible = false;
        btnCancel.Visible = false;
        
        
        //for (int i = 0; i < 10; i++)
        //{
        //    int dmg1 = temp_HeroDamage - temp_MonsterDefend;
        //    if (dmg1 > 0)
        //    {
        //        temp_MonsterHP = temp_MonsterHP - dmg1;
        //        lbMonsterHP.Text = temp_MonsterHP.ToString();

        //    }
        //    damageMonster.Visible = true;
        //    UpdatePanel1.Update();
        //    Thread.Sleep(2000);
        //    damageMonster.Visible = false;
        //    damageHero.Visible = false;
        //}
        //flag = 1;

        
        //while (temp_MonsterHP > 0 && temp_HeroHP > 0)
        //{
        //    if (flag == 0)
        //    {
        //        int dmg1 = temp_HeroDamage - temp_MonsterDefend;
        //        if (dmg1 > 0)
        //        {
        //            temp_MonsterHP = temp_MonsterHP - dmg1;
        //            lbMonsterHP.Text = temp_MonsterHP.ToString();
                    
        //        }
        //        damageMonster.Visible = true;
        //        UpdatePanel1.Update();
        //        flag = 1;
        //    }
        //    else
        //    {
        //        int dmg = temp_MonsterDamage - temp_HeroDefend;
        //        if (dmg > 0)
        //        {
        //            temp_HeroHP = temp_HeroHP - dmg;
        //            lbHeroHP.Text = temp_HeroHP.ToString();
                    
        //        }
        //        damageHero.Visible = true;
        //        UpdatePanel1.Update();
        //        flag = 0;
        //    }

        //    System.Threading.Thread.Sleep(2000);
        //    damageMonster.Visible = false;
        //    damageHero.Visible = false;

        //}

        //do
        //{
        //    if (flag == 0)
        //    {
        //        int dmg1 = temp_HeroDamage - temp_MonsterDefend;
        //        if (dmg1 > 0)
        //            temp_MonsterHP = temp_MonsterHP - dmg1;

        //        damageMonster.Visible = true;
        //        lbMonsterHP.Text = temp_MonsterHP.ToString();
        //        flag = 1;
                
        //    }
        //    else
        //    {
        //        int dmg = temp_MonsterDamage - temp_HeroDefend;
        //        if (dmg > 0)
        //            temp_HeroHP = temp_HeroHP - dmg;
                
        //        damageHero.Visible = true;
        //        lbHeroHP.Text = temp_HeroHP.ToString();
        //        flag = 0;
                
        //    }
            
            
        //    damageMonster.Visible = true;
        //    damageHero.Visible = false;
           
        //}
        //while (temp_MonsterHP > 0 && temp_HeroHP > 0);

        //for (int i = 0; i < 1000; i++)
        //{
        //    if (temp_MonsterHP > 0 && temp_HeroHP > 0)
        //    {
        //        if (flag == 0)
        //        {
        //            int dmg1 = temp_HeroDamage - temp_MonsterDefend;
        //            if (dmg1 > 0)
        //                temp_MonsterHP = temp_MonsterHP - dmg1;
        //            damageMonster.Visible = true;
        //            lbMonsterHP.Text = temp_MonsterHP.ToString();
        //            flag = 1;
        //            UpdatePanel1.Update();
        //        }
        //        else
        //        {
        //            int dmg = temp_MonsterDamage - temp_HeroDefend;
        //            if (dmg > 0)
        //                temp_HeroHP = temp_HeroHP - dmg;
        //            damageHero.Visible = true;
        //            lbHeroHP.Text = temp_HeroHP.ToString();
        //            flag = 0;
        //            UpdatePanel1.Update();
                    
        //        }
        //        Thread.Sleep(2000);
        //        UpdatePanel1.Update();
        //        damageMonster.Visible = true;
        //        damageHero.Visible = false;
        //    }
        //    else
        //    {

        //        damageMonster.Visible = true;
        //        damageHero.Visible = false;
        //        UpdatePanel1.Update();
        //        break;
        //    }
        //}

        Timer1.Enabled = true;
              
  
                
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/map.aspx");
    }




    protected void Timer1_Tick(object sender, EventArgs e)
    {
        lbmark.Text = "1";
        string flag = lbflag.Text.ToString();
        temp_MonsterHP = Convert.ToInt32(MHP.Text);
        temp_HeroHP = Convert.ToInt32(UHP.Text);
        if (temp_MonsterHP > 0 && temp_HeroHP > 0)
        {
            if (flag == "0")
            {
                int dmg1 = temp_HeroDamage - temp_MonsterDefend;
                if (dmg1 > 0)
                    temp_MonsterHP = temp_MonsterHP - dmg1;

                lbMonsterHP.Text = temp_MonsterHP.ToString();
                MHP.Text = temp_MonsterHP.ToString();
                damageMonster.Visible = true;
                damageHero.Visible = false;

                lbflag.Text = "1";
                
                return;

            }
            else
            {
                int dmg = temp_MonsterDamage - temp_HeroDefend;
                if (dmg > 0)
                    temp_HeroHP = temp_HeroHP - dmg;

                lbHeroHP.Text = temp_HeroHP.ToString();
                UHP.Text = temp_HeroHP.ToString();
                damageMonster.Visible = false;
                damageHero.Visible = true;

                lbflag.Text = "0";
                
                return;
            }
        }
        else
        {
            if (temp_HeroHP < 0)
            {
                lbHeroHP.Text = "0";
                Timer1.Enabled = false;
            }
            if (temp_MonsterHP < 0)
            {
                lbMonsterHP.Text = "0";
                Timer1.Enabled = false;
            }
        }
        
        //    if (temp_MonsterHP > 0 && temp_HeroHP > 0)
        //    {
        //        if (flag == 0)
        //        {
        //            int dmg1 = temp_HeroDamage - temp_MonsterDefend;
        //            if (dmg1 > 0)
        //                temp_MonsterHP = temp_MonsterHP - dmg1;
        //            damageMonster.Visible = true;
        //            lbMonsterHP.Text = temp_MonsterHP.ToString();
        //            flag = 1;
        //            UpdatePanel1.Update();
        //        }
        //        else
        //        {
        //            int dmg = temp_MonsterDamage - temp_HeroDefend;
        //            if (dmg > 0)
        //                temp_HeroHP = temp_HeroHP - dmg;
        //            damageHero.Visible = true;
        //            lbHeroHP.Text = temp_HeroHP.ToString();
        //            flag = 0;
        //            UpdatePanel1.Update();

        //        }
        //        Thread.Sleep(2000);
        //        UpdatePanel1.Update();
        //        damageMonster.Visible = true;
        //        damageHero.Visible = false;
        //    }
    }
}