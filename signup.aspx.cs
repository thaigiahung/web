using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Web.Security;

public partial class signup : User
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        account newuser = new account
        {
            ID = Guid.NewGuid(),
            username = txtUN.Text,
            password = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPW.Text, "MD5"),
            email = txtEmail.Text,
            name = txtName.Text,
            idcard = txtIDCard.Text,
            phone = txtPhone.Text,
            status = 0,
            fail_login = 0,
            ip = (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] ?? Request.ServerVariables["REMOTE_ADDR"]).Split(',')[0].Trim(),
            role = 0,
        };
        try
        {
            db.accounts.InsertOnSubmit(newuser);
            db.SubmitChanges();

            //send verification email

            string urlBase = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath;
            string verifyUrl = "/activate.aspx?ID=" + newuser.ID.ToString();
            string fullPath = urlBase + verifyUrl;
            string AppPath = Request.PhysicalApplicationPath;
            StreamReader sr = new StreamReader(AppPath + "resources/EmailTemplates/VerifyNewUser.txt");

            MailMessage message = new MailMessage();
            message.IsBodyHtml = true;
            message.From = new MailAddress("No-reply@gmail.com");
            message.To.Add(new MailAddress(newuser.email));
            message.Subject = "Xác Thực Tài Khoản !!!";

            message.Body = sr.ReadToEnd();
            sr.Close();

            message.Body = message.Body.Replace("<%UserName%>", newuser.username);
            message.Body = message.Body.Replace("<%VerificationUrl%>", fullPath);


            String email = "noreplyminibookstore@gmail.com";
            String password = "phokienhuy";
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential(email, password);
            client.Send(message);
            

            
        }
        catch(Exception ex)
        {
            Label1.Text = ex.Message;
        }
        



    }
}