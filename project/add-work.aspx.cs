using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class project_add_work : System.Web.UI.Page
{
    public List<Employee> listEmployees;

    public List<Project> listProject;

    protected void Page_Load(object sender, EventArgs e)
    {
        EmployeeManager em = new EmployeeManager();
        listEmployees = em.GetUser();

        ProjectManager pm = new ProjectManager();
        listProject = pm.GetList();
    }
}