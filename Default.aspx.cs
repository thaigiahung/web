﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"].ToString() != "")
        {
            Label1.Text = Session["User"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
    }
}