using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (!checktype(FileUpload1.FileName))
            {
                lbl_upload.Text = "فرمت وارد شده پشتیبانی نمیشود";
            }
            else
            {
                DataSet_uploadTableAdapters.tbl_uploadTableAdapter uta = new DataSet_uploadTableAdapters.tbl_uploadTableAdapter();
                string FName = FileUpload1.FileName;
                uta.InsertUpload(txt_uptitle.Text, "http://localhost/site/upload/"+FName, DateTime.Now); //adrese http badan avaz shavad
                lbl_upload.Text = "فایل شما با موفقیت آپلود شد";
                FileUpload1.SaveAs(MapPath("~/Upload_img/"+FileUpload1.FileName));
                GridView1.DataBind();
                txt_uptitle.Text="";
            }
        }
    }

    public bool checktype(string a)
    {
        string ext = Path.GetExtension(a);
        switch (ext.ToLower())
        {
            case ".txt": return true;
            case ".jpg": return true;
            case ".gif": return true;
            case ".jpeg": return true;
            case ".png": return true;
            case ".bmp": return true;
            case ".zip": return true;
            case ".rar": return true;
            case ".doc": return true;
            case ".docx": return true;
            case ".pdf": return true;
            case ".mp3": return true;
            case ".wma": return true;
            case ".ogg": return true;
            case ".wmv": return true;
            case ".avi": return true;
            case ".mp4": return true;
            default: return false;
        }
    }
}