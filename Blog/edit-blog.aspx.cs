using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blog_add_new_blog : System.Web.UI.Page
{
    public Blog blog;
    protected void Page_Load(object sender, EventArgs e)
    {
        int BlogId = Convert.ToInt32(Request["id"]);
        BlogManager bm = new BlogManager();
        blog = bm.GetById(BlogId);
    }
}