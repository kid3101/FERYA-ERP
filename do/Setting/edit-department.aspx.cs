using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Setting_edit_department : System.Web.UI.Page
{
    public Department editdepartment;

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        string name = Request["name"];
        string office = Request["office"];
        string company = Request["company"];
        string manager = Request["manager"];

        DepartmentManager dm = new DepartmentManager();

        editdepartment = dm.GetById(id);
        editdepartment.DeparmentName = name;
        editdepartment.OfficeId = Convert.ToInt32(office); ;
        editdepartment.CompanyId = Convert.ToInt32(company);
        editdepartment.ManagerId = Convert.ToInt32(manager);
        dm.Save();
        Response.Write("1");
    }
}