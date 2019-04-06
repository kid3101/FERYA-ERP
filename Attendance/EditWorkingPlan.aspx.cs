using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Attendance_EditWorkingPlan : System.Web.UI.Page
{
    public List<WorkingPlan> listWork;

    public List<Task> listTask;

    public List<Employee> listEmployee;

    public WorkingPlan editwork;

    protected void Page_Load(object sender, EventArgs e)
    {
        TastManager tm = new TastManager();
        listTask = tm.GetTask();

        EmployeeManager em = new EmployeeManager();
        listEmployee = em.GetUser();

        WorkingPlanManager wm = new WorkingPlanManager();
        listWork = wm.GetWorkingPlan();

        int id = Convert.ToInt32(Request["id"]);

        editwork = wm.GetById(id);
    }
}