using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Blog_delete_blog : System.Web.UI.Page
{
    public Blog del;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            BlogManager bm = new BlogManager();
            int id = Convert.ToInt32(Request["id"]);
            del = bm.GetById(id);
            del.Status = -1;
            bm.Save();
            Response.Write("1");
        }
        catch (Exception ex)
        {

            Response.Write(ex);
        }
       
    }
}