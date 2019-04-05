using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blog_list_blog : System.Web.UI.Page
{
    public List<Blog> Listblog;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        BlogManager bm = new BlogManager();
        Listblog = bm.GetList();
    }
}