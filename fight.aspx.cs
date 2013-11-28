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
        if (Session["User"] == null)
        {
            Response.Redirect("~/login.aspx");
            
        }
        else
        {
            string monsterid = Request.QueryString["id"];
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
                lbFullHeroHP.Text = UHP.Text;
                lbFullMonsterHP.Text = MHP.Text;
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
                if (temp_HeroHP < 0)
                {
                    lbHeroHP.Text = "0";
                    
                }
                if (temp_MonsterHP < 0)
                {
                    lbMonsterHP.Text = "0";
                    
                }
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
                if (temp_HeroHP < 0)
                {
                    lbHeroHP.Text = "0";

                }
                if (temp_MonsterHP < 0)
                {
                    lbMonsterHP.Text = "0";

                }
                return;
            }
        }
        else
        {
            
            Timer1.Enabled = false;
            if(Convert.ToInt32(MHP.Text)<=0)
            {
                dropItemExp(Session["User"].ToString(), Request.QueryString["id"]);
            }
            else
                if(Convert.ToInt32(UHP.Text)<=0)
                {
                    punish(Session["User"].ToString());
                }
           
        }
        btnFightAgain.Text = "Đánh tiếp";
        btnFightAgain.Visible = true;
        btnCancel.Text = "Quay lại";
        btnCancel.Visible = true;
         
        
    }
    public void punish(string hero)
    {
        character cha = db.characters.SingleOrDefault(c => c.username == hero);
        int sub = Convert.ToInt32(cha.char_exp) * 5 / 100;
        cha.char_exp = cha.char_exp - sub;

        db.SubmitChanges();
    }
    public void dropItemExp(string hero, string monster)
    {
        account user = db.accounts.SingleOrDefault(n => n.username == hero);
        character cha = db.characters.SingleOrDefault(c => c.username == hero);
        monster mon = db.monsters.SingleOrDefault(m => m.ID.ToString() == monster);

        cha.char_exp = cha.char_exp + mon.monster_exp;
        cha.char_money = cha.char_money + mon.monster_money;
        char_level lv = db.char_levels.SingleOrDefault(l => l.char_level1 == cha.char_level);
        if (cha.char_exp >= lv.char_require_exp)
        {
            cha.char_level = cha.char_level +1;
            cha.char_exp = 0;
            messagelv.Text = "Chúc mừng, bạn đã thăng cấp " + cha.char_level;
        }
        
        Random rand = new Random();
        
        int low = Convert.ToInt32(cha.char_level) - 5;
        if (low <= 0)
        {
            low = 1;
        }
        int high = Convert.ToInt32(cha.char_level) + 5;
        int itemlv = rand.Next(low, high);

        original_item[] itels = db.original_items.Where(i => i.item_level == itemlv).ToArray();


        original_item sourceItem = new original_item();
        sourceItem = itels[rand.Next(0,itels.Count()-1)];
        
        item reward = getOpt(sourceItem);
        messagereward.Text = "Bạn đã nhận được một " + itels[0].item_name +", " + mon.monster_exp + " exp và " + mon.monster_money + " vàng";
        //message.Text = itels[1].item_name;
        //message.Text = itels[2].item_name;
        db.items.InsertOnSubmit(reward);
        db.SubmitChanges();
    }
    public item getOpt(original_item sourceItem)
    {
        Random rand = new Random();
        int opt1 = rand.Next(-5, 5);
        int opt2 = rand.Next(-5, 5);
        int opt3 = rand.Next(-5, 5);

        item reward = new item();
        reward.item_value1 = sourceItem.item_value1 + opt1;
        reward.item_value2 = sourceItem.item_value2 + opt2;
        reward.item_value3 = sourceItem.item_value3 + opt3;
        reward.item_username = Session["User"].ToString();
        reward.item_type = sourceItem.item_type;
        reward.item_require_level = sourceItem.item_level;
        reward.item_icon = sourceItem.item_icon;
        reward.item_name = sourceItem.item_name;
        reward.item_description = sourceItem.item_description;
        reward.item_equip = 0;

        return reward;
    }
    protected void btnFightAgain_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
}