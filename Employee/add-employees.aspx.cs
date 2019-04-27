using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_AddEmployees : System.Web.UI.Page
{

    public List<Employee> listEmployee;

    protected void Page_Load(object sender, EventArgs e)
    {
        EmployeeManager om = new EmployeeManager();
        listEmployee = om.GetUser();
    }
}