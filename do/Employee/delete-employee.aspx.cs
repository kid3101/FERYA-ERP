using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Employee_delete_employee : System.Web.UI.Page
{
    public Employee delete;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(Request["id"]);
            EmployeeManager em = new EmployeeManager();
            delete = em.GetById(id);
            delete.Status = -1;
            em.Save();
            Response.Write(1);
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}