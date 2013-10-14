using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Summary description for Func
/// </summary>
public class Func
{
    public static void Alert(string str)
    {
        HttpContext.Current.Response.Write("<script>alert('"+str+"');</script>");
    }

    public static void Move(string str)
    {
        HttpContext.Current.Response.Write("<script>window.location = '" + str + "';</script>");
    }

    public static void SendEmail(string from, string to, string subject, string body)
    {
        MailMessage mail = new MailMessage(new MailAddress(from), new MailAddress(to));

        mail.Subject = subject;
        mail.Body = body;

        SmtpClient smtpMail = new SmtpClient("smtp.gmail.com");
        smtpMail.Port = 587;
        smtpMail.EnableSsl = true;
        smtpMail.Credentials = new NetworkCredential("kid.angel1412@gmail.com", "daniel123!@#");
        // and then send the mail
        smtpMail.Send(mail);
    }

    public static string ConvertVN(string chucodau)
    {
        const string FindText = "áàảãạâấầẩẫậăắằẳẵặđéèẻẽẹêếềểễệíìỉĩịóòỏõọôốồổỗộơớờởỡợúùủũụưứừửữựýỳỷỹỵÁÀẢÃẠÂẤẦẨẪẬĂẮẰẲẴẶĐÉÈẺẼẸÊẾỀỂỄỆÍÌỈĨỊÓÒỎÕỌÔỐỒỔỖỘƠỚỜỞỠỢÚÙỦŨỤƯỨỪỬỮỰÝỲỶỸỴ";
        const string ReplText = "aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyyAAAAAAAAAAAAAAAAADEEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOOOUUUUUUUUUUUYYYYY";
        int index = -1;
        char[] arrChar = FindText.ToCharArray();
        while ((index = chucodau.IndexOfAny(arrChar)) != -1)
        {
            int index2 = FindText.IndexOf(chucodau[index]);
            chucodau = chucodau.Replace(chucodau[index], ReplText[index2]);
        }
        return chucodau;
    }
}