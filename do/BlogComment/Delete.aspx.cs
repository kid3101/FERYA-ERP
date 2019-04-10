using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_BlogComment_Delete : System.Web.UI.Page
{
    public BlogComment blogcmt;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            BlogCommentManager bm = new BlogCommentManager();
            int id = Convert.ToInt32(Request["id"]);
            blogcmt = bm.GetById(id);
            blogcmt.Status = -1;
            bm.Save();
            Response.Write(1);
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}