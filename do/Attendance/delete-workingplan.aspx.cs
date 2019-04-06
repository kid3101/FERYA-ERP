using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Attendance_delete_workingplan : System.Web.UI.Page
{
    public WorkingPlan deletework;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(Request["id"]);
            WorkingPlanManager WM = new WorkingPlanManager();
            deletework = WM.GetById(id);
            deletework.Status = -1;
            WM.Save();
            Response.Write("1");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}