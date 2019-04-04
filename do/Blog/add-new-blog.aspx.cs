using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Blog_add_new_blog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BlogManager bm = new BlogManager();
        Blog blog = new Blog();
        blog.BlogTitle = Request["title"];
        blog.BlogDesc = Request["desc"];
        if (Request["status"] == "Active")
        {
            blog.Status = 1;
        }
        else
        {
            blog.Status = -1;
        }
        blog.BlogContent = Request["content"];
        blog.CreatedDate = DateTime.Now;
        blog.CompanyId = 1;
        blog.CreatedByEmployeeId = 1;
        
        bm.AddNew(blog);
        bm.Save();
    }
}