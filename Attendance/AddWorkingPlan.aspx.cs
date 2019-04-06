using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Attendance_AddWorkingPlan : System.Web.UI.Page
{
    public List<WorkingPlan> listWorkingPlan;

    public List<Task> listTask;

    public List<Employee> listEmployee;

    protected void Page_Load(object sender, EventArgs e)
    {
        WorkingPlanManager wm = new WorkingPlanManager();
        listWorkingPlan = wm.GetWorkingPlan();

        TastManager tm = new TastManager();
        listTask = tm.GetTask();

        EmployeeManager em = new EmployeeManager();
        listEmployee = em.GetUser();
    }
}