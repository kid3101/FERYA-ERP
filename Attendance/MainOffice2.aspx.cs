using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Attendance_MainOffice2 : System.Web.UI.Page
{
    //public List<Office> listOffice;

    //public List<Employee> listEmployees;

    //public List<Attendant> listAttendant;

    public Attendant attendant;
    public Office office;
    public Employee employee;
    protected void Page_Load(object sender, EventArgs e)
    {
        OfficeManager om = new OfficeManager();
        office = om.GetById(Convert.ToInt32(Request["idoffice"]));

        EmployeeManager em = new EmployeeManager();
        employee = em.GetById(Convert.ToInt32(Request["idemployee"]));
    }
}