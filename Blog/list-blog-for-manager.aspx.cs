using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blog_list_blog_for_manager : System.Web.UI.Page
{
    public List<Blog> Listblog;
    BlogManager bm = new BlogManager();
    protected void Page_Load(object sender, EventArgs e)
    {

        Listblog = bm.GetList();

    }
}