using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Employee_add_new_employee : System.Web.UI.Page
{
    public Employee addemployee = new Employee();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string code = Request["code"];
            string first = Request["first"];
            string last = Request["last"];
            string email = Request["email"];
            string address = Request["address"];
            string phone = Request["phone"];
            string position = Request["position"];
            int manager = Convert.ToInt32(Request["manager"]);
            int basic = Convert.ToInt32(Request["basic"]);
            int kpi = Convert.ToInt32(Request["kpi"]);

            //DateTime registerdate = Convert.ToDateTime(Request["registerdate"]);
            EmployeeManager em = new EmployeeManager();
            addemployee.EmployeeCode = code;
            addemployee.FirstName = first;
            addemployee.LastName = last;
            addemployee.Email = email;
            addemployee.Address = address;
            addemployee.Phone = phone;
            addemployee.Position = position;
            addemployee.ManagerId = manager;
            addemployee.BasicSalary = basic;
            addemployee.KPISalary = kpi;
            addemployee.Status = 1;
            em.AddNew(addemployee);
            Response.Write(1);
        }

        catch (Exception EX)
        {

            Response.Write(EX);
        }
        
    }
}