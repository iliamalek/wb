using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_contact_Click(object sender, EventArgs e)
    {
        DataSet_contactTableAdapters.tbl_contactTableAdapter cnta = new DataSet_contactTableAdapters.tbl_contactTableAdapter();
        cnta.InsertContact(txt_name.Text, txt_email.Text, txt_title.Text, txt_desc.Text, DateTime.Now);
        lbl_contact.Text = "پیغام شما با موفقیت برای ما ارسال شد، با سپاس";
        txt_name.Text = "";
        txt_title.Text = "";
        txt_email.Text = "";
        txt_desc.Text = "";
    }
}