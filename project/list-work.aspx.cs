using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class project_list_work : System.Web.UI.Page
{

    public List<Project> listProject;

    public List<Task> listTask;

    public List<Employee> listEmployee;

    protected void Page_Load(object sender, EventArgs e)
    {
        ProjectManager pm = new ProjectManager();
        listProject = pm.GetList();

        TastManager tm = new TastManager();
        listTask = tm.GetTask();

        EmployeeManager em = new EmployeeManager();
        listEmployee = em.GetUser();
    }
}