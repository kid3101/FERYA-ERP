using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Blog_edit_blog : System.Web.UI.Page
{
    public Blog blog;
    protected void Page_Load(object sender, EventArgs e)
    {

        BlogManager bm = new BlogManager();
        int id = Convert.ToInt32(Request["id"]);
        blog = bm.GetById(id);
        blog.BlogTitle = Request["title"];
        blog.BlogDesc = Request["desc"];
        blog.Status = 1;
        blog.BlogContent = Request["content"];
        blog.CreatedDate = DateTime.Now;
        blog.CompanyId = 1;
        blog.CreatedByEmployeeId = 1;
        bm.Save();
    }
}