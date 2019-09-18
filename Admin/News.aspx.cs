using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_SendNews_Click(object sender, EventArgs e)
    {
        if (File_image.HasFile)
        {
            if (!CheckType(File_image.FileName))
            {
                lbl_SendNews.Text = "فرمت مورد نظر پشتیبانی نمیشود";

            }
            else
            {
                DataSet_newsTableAdapters.newsTableAdapter nta = new DataSet_newsTableAdapters.newsTableAdapter();
                DateTime dt = DateTime.Now;
                string imgname = File_image.FileName;
                nta.InsertNews(txt_title.Text, txt_desc.Text, dt, 0, txt_writer.Text, imgname, int.Parse(drp_catid.SelectedValue));
                lbl_SendNews.Text = "ارسال با موفقیت انجام شد";

                File_image.SaveAs(MapPath("~/Upload_img/" + File_image.FileName));
                GridView1.DataBind();
                txt_title.Text = "";
                txt_desc.Text = "";
                txt_writer.Text = "";

            }
        }

    }


    public bool CheckType(string a)
    {
        string ext = Path.GetExtension(a);
        switch (ext.ToLower())
        {
            case ".gif": return true;
            case ".jpg": return true;
            case ".jpeg":return true;
            case ".png": return true;
            case ".bmp": return true;
            default: return false;
        }
    }
}