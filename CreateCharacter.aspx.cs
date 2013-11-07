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
        //Session["username"] = "99";// gan thu username de test chuc nang
        string us = Session["User"].ToString();
        if (us == "")//chua dang nhap
        {
            Response.Redirect("Default.aspx");//link ve trang chu
        }
        else
        {
            WebGameDataContext db = new WebGameDataContext();
            var items = from y in db.characters
                        where y.username == us
                        select y;
            if (items.Count() != 0)//user da tao nhan vat
            {
                Response.Redirect("Default.aspx");//link ve trang chu
            }
        }
       
        
    }
   protected void Timer1_Tick(object sender, EventArgs e)
    {
       Timer1.Enabled = false;
       string username = Session["User"].ToString();
        /*Label5.Text=username;
        WebGameDataContext db = new WebGameDataContext();
        var items = from l in db.HeroCarts
                    where l.UserName == username
                    select l;
        if (items.Count() == 0)
        {
            Label5.Text = "Khong co user watsu999";
            HeroCart hcart = new HeroCart();
            hcart.UserName = "watsu1000";
            hcart.IdSelectedHero = 1;
            hcart.SelectedIndex = 1;
            db.HeroCarts.InsertOnSubmit(hcart);
            db.SubmitChanges();
        }
        else
        {
            Label5.Text = "Co user watsu99";
        }*/
        WebGameDataContext db = new WebGameDataContext();
        var items = from l in db.HeroCarts
                    where l.UserName == username// tim xem user da co trong HeroCart chua
                    select l;
        if (items.Count() != 0)//User da co trong HeroCart
        {
            foreach (var item in items)
            {

                lbIdHero.Text = item.IdSelectedHero.ToString();//lay idhero user da chon
                int dongduocchon = int.Parse(item.SelectedIndex.ToString());// lay index cua listview ma user da chon
                if (dongduocchon % 2 == 0)// neu avatar dc chon nam o ItemTemplate
                {
                    lbSelectedIndex.Text = dongduocchon.ToString();// test lay selectedindex
                    ImageButton SelectedAvatar = (ImageButton)ListView1.Items[dongduocchon].FindControl("ImageButton3");//tim imagebutton o avatar hero dc chon
                    SelectedAvatar.BorderStyle = BorderStyle.Dashed;// chuyen borderstyle thanh dashed

                }
                else // truong hop alternative template
                {
                    lbSelectedIndex.Text = dongduocchon.ToString();// test lay selectedindex
                    ImageButton SelectedAvatar = (ImageButton)ListView1.Items[dongduocchon].FindControl("ImageButton4");//tim imagebutton o avatar hero dc chon
                    SelectedAvatar.BorderStyle = BorderStyle.Dashed;// chuyen borderstyle thanh dashed

                }

            }


        }
        else// neu user khong co trong herocart
        {
            // tien hanh dua lua chon mac dinh cho user la tuong o vi tri 1 
            HeroCart hcart = new HeroCart();
            hcart.UserName = username;
            hcart.IdSelectedHero = 1;
            hcart.SelectedIndex = 0;
            db.HeroCarts.InsertOnSubmit(hcart);
            db.SubmitChanges();
            ImageButton SelectedAvatar = (ImageButton)ListView1.Items[0].FindControl("ImageButton3");
            SelectedAvatar.BorderStyle = BorderStyle.Dashed;
            DataList1.DataBind();
        }
        
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        string username = Session["User"].ToString();
        if (e.CommandName == "PickHero1")//truong hop select nhung vi tri item template
        {
            int vitriduocchon = e.Item.DataItemIndex;
            WebGameDataContext db = new WebGameDataContext();
            var items = from l in db.HeroCarts
                        where l.UserName == username
                        select l;
            Label idhero = (Label)ListView1.Items[vitriduocchon].FindControl("lbIdHero1");
            int idherochon = int.Parse(idhero.Text.ToString());// lay dc idhero dc chon
            lbIdHero.Text = idherochon.ToString();// gan vao label nay de datalist lay id ma show tuong
            foreach (var item in items)//xu li select va deselect
            {
                int vitridachon = int.Parse(item.SelectedIndex.ToString());//lay ra vi tri hero da chon trc do
                if (vitridachon != vitriduocchon)//so sanh vi tri da chon va vi tri vua dc chon
                {

                    if (vitridachon % 2 == 0)
                    {
                        ImageButton AvatarDaChon = (ImageButton)ListView1.Items[vitridachon].FindControl("ImageButton3");
                        if (vitriduocchon % 2 == 0)
                        {
                            ImageButton AvatarDuocChon = (ImageButton)ListView1.Items[vitriduocchon].FindControl("ImageButton3");
                            AvatarDaChon.BorderStyle = BorderStyle.None;//xoa bo border cua avatar da chon
                            AvatarDuocChon.BorderStyle = BorderStyle.Dashed;//them border cho avatar vua duoc chon
                            item.SelectedIndex = vitriduocchon;// gan vi tri vua chon vao database
                            item.IdSelectedHero = idherochon;
                          
                            db.SubmitChanges();
                        }
                        else
                        {
                            ImageButton AvatarDuocChon = (ImageButton)ListView1.Items[vitriduocchon].FindControl("ImageButton4");
                            AvatarDaChon.BorderStyle = BorderStyle.None;//xoa bo border cua avatar da chon
                            AvatarDuocChon.BorderStyle = BorderStyle.Dashed;//them border cho avatar vua duoc chon
                            item.SelectedIndex = vitriduocchon;// gan vi tri vua chon vao database
                            item.IdSelectedHero = idherochon;
                            
                            db.SubmitChanges();
                        }

                    }
                    else
                    {
                        ImageButton AvatarDaChon = (ImageButton)ListView1.Items[vitridachon].FindControl("ImageButton4");
                        if (vitriduocchon % 2 == 0)
                        {
                            ImageButton AvatarDuocChon = (ImageButton)ListView1.Items[vitriduocchon].FindControl("ImageButton3");
                            AvatarDaChon.BorderStyle = BorderStyle.None;//xoa bo border cua avatar da chon
                            AvatarDuocChon.BorderStyle = BorderStyle.Dashed;//them border cho avatar vua duoc chon
                            item.SelectedIndex = vitriduocchon;// gan vi tri vua chon vao database
                            item.IdSelectedHero = idherochon;
                            
                            db.SubmitChanges();
                        }
                        else
                        {
                            ImageButton AvatarDuocChon = (ImageButton)ListView1.Items[vitriduocchon].FindControl("ImageButton4");
                            AvatarDaChon.BorderStyle = BorderStyle.None;//xoa bo border cua avatar da chon
                            AvatarDuocChon.BorderStyle = BorderStyle.Dashed;//them border cho avatar vua duoc chon
                            item.SelectedIndex = vitriduocchon;// gan vi tri vua chon vao database
                            item.IdSelectedHero = idherochon;
                            
                            db.SubmitChanges();
                        }
                    }
                    
                    
                    
                    
                    
                   
                    
                }

            }
        }else if(e.CommandName == "PickHero2")
        {
            int vitriduocchon = e.Item.DataItemIndex;
            WebGameDataContext db = new WebGameDataContext();
            var items = from l in db.HeroCarts
                        where l.UserName == username
                        select l;
            Label idhero = (Label)ListView1.Items[vitriduocchon].FindControl("lbIdHero2");
            int idherochon = int.Parse(idhero.Text.ToString());// lay dc idhero dc chon
            lbIdHero.Text = idherochon.ToString();// gan vao label nay de datalist lay id ma show tuong
            foreach (var item in items)//xu li select va deselect
            {
                int vitridachon = int.Parse(item.SelectedIndex.ToString());//lay ra vi tri hero da chon trc do
                if (vitridachon != vitriduocchon)//so sanh vi tri da chon va vi tri vua dc chon
                {

                    if (vitridachon % 2 == 0)
                    {
                        ImageButton AvatarDaChon = (ImageButton)ListView1.Items[vitridachon].FindControl("ImageButton3");
                        if (vitriduocchon % 2 == 0)
                        {
                            ImageButton AvatarDuocChon = (ImageButton)ListView1.Items[vitriduocchon].FindControl("ImageButton3");
                            AvatarDaChon.BorderStyle = BorderStyle.None;//xoa bo border cua avatar da chon
                            AvatarDuocChon.BorderStyle = BorderStyle.Dashed;//them border cho avatar vua duoc chon
                            item.SelectedIndex = vitriduocchon;// gan vi tri vua chon vao database
                            item.IdSelectedHero = idherochon;
                            
                            db.SubmitChanges();
                        }
                        else
                        {
                            ImageButton AvatarDuocChon = (ImageButton)ListView1.Items[vitriduocchon].FindControl("ImageButton4");
                            AvatarDaChon.BorderStyle = BorderStyle.None;//xoa bo border cua avatar da chon
                            AvatarDuocChon.BorderStyle = BorderStyle.Dashed;//them border cho avatar vua duoc chon
                            item.SelectedIndex = vitriduocchon;// gan vi tri vua chon vao database
                            item.IdSelectedHero = idherochon;
                            
                            db.SubmitChanges();
                        }

                    }
                    else
                    {
                        ImageButton AvatarDaChon = (ImageButton)ListView1.Items[vitridachon].FindControl("ImageButton4");
                        if (vitriduocchon % 2 == 0)
                        {
                            ImageButton AvatarDuocChon = (ImageButton)ListView1.Items[vitriduocchon].FindControl("ImageButton3");
                            AvatarDaChon.BorderStyle = BorderStyle.None;//xoa bo border cua avatar da chon
                            AvatarDuocChon.BorderStyle = BorderStyle.Dashed;//them border cho avatar vua duoc chon
                            item.SelectedIndex = vitriduocchon;// gan vi tri vua chon vao database
                            item.IdSelectedHero = idherochon;
                            
                            db.SubmitChanges();
                        }
                        else
                        {
                            ImageButton AvatarDuocChon = (ImageButton)ListView1.Items[vitriduocchon].FindControl("ImageButton4");
                            AvatarDaChon.BorderStyle = BorderStyle.None;//xoa bo border cua avatar da chon
                            AvatarDuocChon.BorderStyle = BorderStyle.Dashed;//them border cho avatar vua duoc chon
                            item.SelectedIndex = vitriduocchon;// gan vi tri vua chon vao database
                            item.IdSelectedHero = idherochon;
                           
                            db.SubmitChanges();
                        }
                    }







                }

            }
        }
    }
    protected void btnCreateChar_Click(object sender, EventArgs e)
    {
        WebGameDataContext db = new WebGameDataContext();
        string username = Session["User"].ToString();
        int idherochon = int.Parse(lbIdHero.Text);// lay ra idherochon
        character nhanvat = new character();
        nhanvat.username = username;
        nhanvat.char_level = 1;
        nhanvat.char_exp = 30;
        var items = from y in db.Heros
                    where y.IdHero == idherochon
                    select y;// lay duoc hero trong table hero
        foreach (var item in items)
        {
            int idloaiherochon = int.Parse(item.IdType.ToString());
            nhanvat.char_avatar = item.Avatar.ToString();
            nhanvat.char_skin = item.Skin.ToString();
            var items1 = from l in db.HeroTypes
                         where l.IdType == idloaiherochon
                         select l;
            foreach (var item1 in items1)// lay chi so cua loai hero tuong ung
            {
                nhanvat.char_energy = item1.Energy;
                nhanvat.char_damage = item1.Damage;
                nhanvat.char_defend = item1.Defence;
                nhanvat.char_hp = item1.HP;
            }
        }
        nhanvat.char_money = 100;
        nhanvat.char_cash = 0;
        nhanvat.char_kill = 0;
        db.characters.InsertOnSubmit(nhanvat);
        db.SubmitChanges();


        //link sang trang choi game bo sung sau 
        Response.Redirect("Default.aspx");
    }
}