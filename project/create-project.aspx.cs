using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class project_CreateProject_CreateProject : System.Web.UI.Page
{
    public List<Company> listCompany;
    public List<Employee> listemployees;
    protected void Page_Load(object sender, EventArgs e)
    {
        CompanyManager CM = new CompanyManager();
        listCompany = CM.GetCompany();
        EmployeeManager EM = new EmployeeManager();
        listemployees = EM.GetUser();
        ProjectManager PM = new ProjectManager();
        Project project = new Project();
        PM.Save();
        
    }
   
}