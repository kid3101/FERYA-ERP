using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Setting_delete_department : System.Web.UI.Page
{
    public Department deletedepartment;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(Request["id"]);
            DepartmentManager DM = new DepartmentManager();
            deletedepartment = DM.GetById(id);
            deletedepartment.Status = -1;
            DM.Save();
            Response.Write("1");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}