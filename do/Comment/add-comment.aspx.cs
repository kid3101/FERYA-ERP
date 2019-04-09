using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Comment_add_comment : System.Web.UI.Page
{
    public Blog bl;
    protected void Page_Load(object sender, EventArgs e)
    {
        try { 
        BlogCommentManager bcm = new BlogCommentManager();
        BlogComment bc = new BlogComment();
        BlogManager bm = new BlogManager();
        int id = Convert.ToInt32(Request["id"]);
        bl = bm.GetById(id);
        bc.BlogId = bl.BlogId;
        bc.CommentTitle = bl.BlogTitle;
        bc.CommentNote = Request["comment"];
        bc.CreatedDate = DateTime.Now;
        bc.EmployeeId = 1;
        bc.Status = 1;
        bcm.AddNew(bc);
        bcm.Save();
        Response.Write(1);
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}