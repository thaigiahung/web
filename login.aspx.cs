﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class login : User
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.txtUN.Focus();
        if (Session["User"] != null)
        {
            Response.Redirect("~/main.aspx");
        }
    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        
            //string currentIP = Request.UserHostAddress();
            string currentIp = (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] ?? Request.ServerVariables["REMOTE_ADDR"]).Split(',')[0].Trim();

            string UN = txtUN.Text;
            string PW = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPW.Text, "MD5");
            account user = db.accounts.SingleOrDefault(n => n.username == UN);

            if (user == null || txtPW == null || txtUN == null)
            {
                if (user == null)
                {
                    LbMessages.Visible = true;
                    LbMessages.Text = "tài khoản không tồn tại";
                }
                else
                    if (txtUN == null || txtPW == null)
                    {
                        LbMessages.Visible = true;
                        LbMessages.Text = "Sai tên đăng nhập hoặc mật khẩu";
                    }
            }
            else
            try
            {
                if (PW == user.password)
                {
                    if (user.status == 0)
                    {
                        LbMessages.Visible = true;
                        LbMessages.Text = "Tài khoản chưa được kích hoạt";
                        //FormsAuthentication.HashPasswordForStoringInConfigFile(n.password, "MD5") == PW
                    }
                    else
                    {
                        if (user.status == 2 && user.ip == currentIp)
                        {
                            LbMessages.Visible = true;
                            LbMessages.Text = "Tài khoản đã bị khóa";
                        }
                        else
                        {
                            user.status = 1;
                            Session["User"] = user.username;
                            character cha = new character();
                            cha = db.characters.SingleOrDefault(n => n.username == user.username);
                            if (cha == null)
                            {
                                Response.Redirect("~/CreateCharacter.aspx");
                            }
                            else
                                Response.Redirect("~/main.aspx");
                        }
                    }
                }
                else
                {
                    if (user.fail_login == 3 && user.ip == currentIp)
                    {

                        user.status = 2;
                        user.date_lock = DateTime.Now;
                        LbMessages.Visible = true;
                        LbMessages.Text = "Tài khoản của bạn đã bị khóa vì đăng nhập sai 3 lần liên tiếp";

                    }
                    else
                    {
                        if (user.fail_login <= 2 && user.ip == currentIp)
                        {
                            user.fail_login = user.fail_login + 1;
                            user.ip = currentIp;
                            LbMessages.Visible = true;
                            LbMessages.Text = "Sai tên đăng nhập hoặc mật khẩu - Bạn đã nhập sai " + user.fail_login + "/3 lần";

                        }
                        else
                        {
                            if (user.ip != currentIp)
                            {
                                LbMessages.Visible = true;
                                LbMessages.Text = "Sai tên đăng nhập hoặc mật khẩu";
                                user.ip = currentIp;
                                user.fail_login = 1;

                            }
                            
                        }
                    }
                }
                db.SubmitChanges();

            }
            catch (Exception ex)
            {
                LbMessages.Text = ex.Message;

            }
        }
    
}