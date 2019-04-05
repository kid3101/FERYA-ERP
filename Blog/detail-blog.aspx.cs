using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blog_detail_blog : System.Web.UI.Page
{
    public Blog detail;
    protected void Page_Load(object sender, EventArgs e)
    {

        int id = Convert.ToInt32(Request["id"]);
        BlogManager bm = new BlogManager();
        detail = bm.GetById(id);
    }
}