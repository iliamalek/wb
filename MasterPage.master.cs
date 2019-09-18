using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_bazdid.Text = "بازدید کنندگان سایت :" + Application["visitor"].ToString();
    }

    protected void btn_search_Click(object sender, EventArgs e)
    {
        Response.Redirect("search.aspx?search="+txt_search.Text);
    }

    protected void btn_chat_Click(object sender, EventArgs e)
    {
        DataSet_chatTableAdapters.tbl_chatTableAdapter chta = new DataSet_chatTableAdapters.tbl_chatTableAdapter();
        chta.InsertChat(txt_username.Text,txt_text.Text);
        DataList_Chat.DataBind();
        txt_username.Text = "";
        txt_text.Text = "";

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        lbl_time.Text = DateTime.Now.ToString();
    }
}
