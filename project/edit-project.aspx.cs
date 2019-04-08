using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class project_edit_project : System.Web.UI.Page
{
    public Project editproject;
    public List<Employee> listemployee;
    public Project project;
    public List<Company> listcom;
    public Employee employee;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        ProjectManager pm = new ProjectManager();
        editproject = pm.GetById(id);
        EmployeeManager em = new EmployeeManager();
        listemployee = em.GetUser();
        project = pm.GetById(id);
        CompanyManager cm = new CompanyManager();
        listcom = cm.GetCompany();
        employee = em.GetById(id);
    }
}