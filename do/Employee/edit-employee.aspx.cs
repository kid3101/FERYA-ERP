using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Employee_edit_employee : System.Web.UI.Page
{
    public Employee editEmployee;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        string code = Request["code"];
        string first = Request["first"];
        string last = Request["last"];
        string email = Request["email"];
        string address = Request["address"];
        string phone = Request["phone"];
        string position = Request["position"];
        string manager = Request["manager"];
        string basic = Request["basic"];
        string kpi = Request["kpi"];

        EmployeeManager em = new EmployeeManager();
        editEmployee = em.GetById(id);
        editEmployee.EmployeeCode = code;
        editEmployee.FirstName = first;
        editEmployee.LastName = last;
        editEmployee.Email = email;
        editEmployee.Address = address;
        editEmployee.Phone = phone;
        editEmployee.Position = position;
        editEmployee.ManagerId = Convert.ToInt32(manager);
        editEmployee.BasicSalary = Convert.ToInt32(basic);
        editEmployee.KPISalary = Convert.ToInt32(kpi);
        em.Save();
        Response.Write(1);
    }
}