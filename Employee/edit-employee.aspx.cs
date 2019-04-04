using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_edit_employee : System.Web.UI.Page
{
    public Employee editEmployee;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        EmployeeManager em = new EmployeeManager();
        editEmployee = em.GetById(id);
    }
}