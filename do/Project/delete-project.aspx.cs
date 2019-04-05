using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Project_delete_project : System.Web.UI.Page
{ public Project delete;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(Request["id"]);
            ProjectManager PM = new ProjectManager();
            delete = PM.GetById(id);
            delete.Status = -1;
            PM.Save();
            Response.Write(1);

        }
        catch (Exception ex)
        {

            Response.Write(ex);
        }

    }
}
