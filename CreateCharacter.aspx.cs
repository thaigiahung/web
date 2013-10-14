using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateCharacter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = "watsu99";// gan thu username de test chuc nang

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Timer1.Enabled = false;
        lbIdHero.Text = Session["username"].ToString();// test lay session username
        string username = Session["username"].ToString();
        WebGameDataContext db = new WebGameDataContext();
        var items = from l in db.HeroCarts
                    where l.UserName == username// tim xem user da co trong HeroCart chua
                    select l;
        if (items.Count() != 0)//User da co trong HeroCart
        {
            foreach (var item in items)
            {
                lbIdHero.Text = "Da co user watsu99";//test xem co lay dc user trong HeroCart ko
                lbIdHero.Text = item.IdSelectedHero.ToString();//lay idhero user da chon
                int dongduocchon = int.Parse(item.SelectedIndex.ToString());// lay index cua listview ma user da chon

                if (dongduocchon % 2 != 0)// neu avatar dc chon nam o ItemTemplate
                {
                    lbSelectedIndex.Text = dongduocchon.ToString();// test lay selectedindex
                    ImageButton SelectedAvatar = (ImageButton)ListView1.Items[dongduocchon - 1].FindControl("ImageButton3");//tim imagebutton o avatar hero dc chon
                    SelectedAvatar.BorderStyle = BorderStyle.Dashed;// chuyen borderstyle thanh dashed

                }
                else // truong hop alternative template
                {
                    lbSelectedIndex.Text = dongduocchon.ToString();// test lay selectedindex
                    ImageButton SelectedAvatar = (ImageButton)ListView1.Items[dongduocchon - 1].FindControl("ImageButton4");//tim imagebutton o avatar hero dc chon
                    SelectedAvatar.BorderStyle = BorderStyle.Dashed;// chuyen borderstyle thanh dashed

                }

            }
           
            
        }
    }
}