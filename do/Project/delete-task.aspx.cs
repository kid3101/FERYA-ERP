using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Project_delete_task : System.Web.UI.Page
{
    public Task deletetask;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(Request["id"]);
            TastManager TM = new TastManager();
            deletetask = TM.GetById(id);
            deletetask.Status = -1;
            TM.Save();
            Response.Write("1");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}