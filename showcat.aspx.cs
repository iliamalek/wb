using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showcats : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet_categoryTableAdapters.categoryTableAdapter cata = new DataSet_categoryTableAdapters.categoryTableAdapter();
        string cid = Request.QueryString["cid"];
        string TitleOfCat = cata.TitleOfCategory(int.Parse(cid)).ToString();
        Page.Title = TitleOfCat;
    }
}