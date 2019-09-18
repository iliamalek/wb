using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shownews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet_newsTableAdapters.newsTableAdapter ntb = new DataSet_newsTableAdapters.newsTableAdapter();
        string nid = Request.QueryString["nid"];
        string numbernews = ntb.numberOfnv(int.Parse(nid)).ToString();
        ntb.nvu(int.Parse(numbernews), int.Parse(nid));

        string TitleOfNew = ntb.TitleOfNews(int.Parse(nid)).ToString();
        Page.Title = TitleOfNew;
    }

    protected void btn_submitcmnt_Click(object sender, EventArgs e)
    {
        DataSet_commentTableAdapters.tbl_commentTableAdapter cta = new DataSet_commentTableAdapters.tbl_commentTableAdapter();
        string nid = Request.QueryString["nid"];
        cta.InsertComment(txt_name.Text.Trim(), txt_email.Text.Trim(), DateTime.Now, txt_comment.Text.Trim(), true, int.Parse(nid));

        DataList1.DataBind();
        txt_comment.Text = "";
        txt_email.Text = "";
        txt_name.Text = "";

    }
}