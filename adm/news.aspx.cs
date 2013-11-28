using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class adm_news : AdminPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["act"] != "")
        {
            if (Request.QueryString["act"] == "delete" && Request.QueryString["id"] != "")
            {
                WebGameDataContext db = new WebGameDataContext();
                var q = from n in db.tintucs
                        where n.ID == int.Parse(Request.QueryString["id"])
                        select n;
                if(q.Count() > 0)
                {
                    try
                    {
                        db.tintucs.DeleteOnSubmit(q.First());
                        db.SubmitChanges();
                        Func.Alert("Xóa bài viết thành công!");
                        Func.Move("news.aspx");
                    }
                    catch
                    {
                        Func.Alert("Có lỗi vui lòng thử lại!");
                        Func.Move("news.aspx");
                    }
                }
                else
                {
                    Func.Alert("Tin tức không tồn tại!");
                    Func.Move("news.aspx");
                }
            }

            if (Request.QueryString["act"] == "add")
            {
                WebGameDataContext db = new WebGameDataContext();
                var w = from n in db.categories
                        select n;
                foreach (var cat in w)
                {
                    ddlCategory.Items.Add(new ListItem(cat.cat_name, cat.ID.ToString()));
                }
            }

            if (Request.QueryString["act"] == "edit" && Request.QueryString["id"] != "")
            {
                if (!IsPostBack)
                {
                    WebGameDataContext db = new WebGameDataContext();
                    var w = from n in db.categories
                            select n;
                    var r = from n in db.tintucs
                            where n.ID == int.Parse(Request.QueryString["id"].ToString())
                            select n;
                    if (r.Count() > 0)
                    {
                        txtTitleEdit.Text = r.First().news_title;
                        txtContentEdit.Text = r.First().news_content;
                        foreach (var cat in w)
                        {
                            ddlCategoryEdit.Items.Add(new ListItem(cat.cat_name, cat.ID.ToString()));
                            if (r.First().news_category == cat.ID)
                                ddlCategoryEdit.SelectedValue = cat.ID.ToString();
                        }
                    }
                    else
                    {
                        Func.Alert("Tin tức không tồn tại!");
                        Func.Move("news.aspx");
                    }
                }
            }
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        WebGameDataContext db = new WebGameDataContext();
        tintuc ndb = new tintuc();
        ndb.news_title = txtTitle.Text;
        ndb.news_content = txtContent.Text;
        ndb.news_category = int.Parse(ddlCategory.SelectedValue);
        ndb.news_date = DateTime.Now;
        try
        {
            db.tintucs.InsertOnSubmit(ndb);
            db.SubmitChanges();
            Func.Alert("Đăng bài mới thành công!");
            Func.Move("news.aspx");
        }
        catch
        {
            Func.Alert("Có lỗi vui lòng thử lại!");
            Func.Move("news.aspx");
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        WebGameDataContext db = new WebGameDataContext();
        var r = from n in db.tintucs
                where n.ID == int.Parse(Request.QueryString["id"].ToString())
                select n;
        if (r.Count() > 0)
        {
            r.First().news_title = txtTitleEdit.Text;
            r.First().news_content = txtContentEdit.Text;
            r.First().news_category = int.Parse(ddlCategoryEdit.SelectedValue);
            r.First().news_date = DateTime.Now;
            try
            {
                db.SubmitChanges();
                Func.Alert("Sửa tin tức thành công!");
                Func.Move("news.aspx");
            }
            catch
            {
                Func.Alert("Có lỗi vui lòng thử lại!");
                Func.Move("news.aspx");
            }
        }
        else
        {
            Func.Alert("Tin tức không tồn tại!");
            Func.Move("news.aspx");
        }
    }
}