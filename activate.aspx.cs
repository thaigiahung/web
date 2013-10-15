using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class activate : User
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Request.QueryString["ID"]))
        {
            VerificationMessageLabel.Text = "Truy cập không hợp lệ, chuyển về trang chủ...";
            Response.AddHeader("REFRESH", "3;URL=Default.aspx");

        }
        else
        {
            Guid userId;
            account usr = new account();
            try
            {
                
                userId = new Guid(Request.QueryString["ID"]);
                usr = db.accounts.Single(n => n.ID == userId);
            }
            catch
            {
                VerificationMessageLabel.Text = "Tài khoản không hợp lệ";
                return;
            }
            
            if (usr == null)
            {
                VerificationMessageLabel.Text = "Tài khoản không tồn tại, xin hãy chuyển về trang chủ";
                Response.AddHeader("REFRESH", "3;URL=Default.aspx");


            }
            else if (usr.status == 1)
            {
                VerificationMessageLabel.Text = "Tài khoản đã được kích hoạt từ trước, chuyển về trang chủ";
                Response.AddHeader("REFRESH", "3;URL=Default.aspx");


            }
            else
            {
                usr.status = 1;
                //db.accounts.InsertOnSubmit(usr);
                db.SubmitChanges();
                VerificationMessageLabel.Text = "Chào mừng bạn đến với LOL WEBGAME. Chúng tôi sẽ chuyển bạn về trang đăng nhập để sử dụng dịch vụ!!";
                Response.AddHeader("REFRESH", "3;URL=login.aspx");
            }
        }
    }
}