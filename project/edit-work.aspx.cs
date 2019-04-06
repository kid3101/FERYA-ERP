using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class project_edit_work : System.Web.UI.Page
{
    public List<Employee> listEmployees;

    public List<Project> listProject;

    public Task edittask;

    public List<Task> listTask;
    protected void Page_Load(object sender, EventArgs e)
    {
        EmployeeManager em = new EmployeeManager();
        listEmployees = em.GetUser();

        ProjectManager pm = new ProjectManager();
        listProject = pm.GetList();

        TastManager tm = new TastManager();
        listTask = tm.GetTask();

        int id = Convert.ToInt32(Request["id"]);

        edittask = tm.GetById(id);
    }
}