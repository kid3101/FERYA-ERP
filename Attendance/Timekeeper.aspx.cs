using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Attendance_Timekeeper : System.Web.UI.Page
{
    public List<Office> listOffice;

    public List<Employee> listEmployees;

    protected void Page_Load(object sender, EventArgs e)
    {
        OfficeManager om = new OfficeManager();
        listOffice = om.GetOffice();

        EmployeeManager em = new EmployeeManager();
        listEmployees = em.GetUser();
    }
}