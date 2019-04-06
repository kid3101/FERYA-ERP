using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Attendance_edit_workingplan : System.Web.UI.Page
{
    public WorkingPlan editwork;

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        string task = Request["task"];
        string employee = Request["employee"];
        string note = Request["note"];

        WorkingPlanManager wm = new WorkingPlanManager();

        editwork = wm.GetById(id);
        editwork.TaskId = Convert.ToInt32(task);
        editwork.EmployeeId = Convert.ToInt32(employee);
        editwork.Note = note;
        wm.Save();
        Response.Write("1");
    }
}