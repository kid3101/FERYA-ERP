using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Attendance_add_new_workingplan : System.Web.UI.Page
{
    public WorkingPlan addnewwork = new WorkingPlan();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string task = Request["task"];
            string employee = Request["employee"];
            string note = Request["note"];

            addnewwork.TaskId = Convert.ToInt32(task);
            addnewwork.EmployeeId = Convert.ToInt32(employee);
            addnewwork.Note = note;
            addnewwork.Status = 1;

            WorkingPlanManager wm = new WorkingPlanManager();

            wm.AddNew(addnewwork);
            Response.Write("1");
        }
        catch (Exception EX)
        {

            Response.Write(EX);
        }
    }
}