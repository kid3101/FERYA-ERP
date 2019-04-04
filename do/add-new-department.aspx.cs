using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_add_new_department : System.Web.UI.Page
{
    public Department addnewdepartment = new Department();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string name = Request["name"];
            string office = Request["office"];
            string company = Request["company"];

            addnewdepartment.DeparmentName = name;
            addnewdepartment.Office.OfficeName = office;
            addnewdepartment.Company.CompanyName = company;
            addnewdepartment.Status = 1;

            DepartmentManager dm = new DepartmentManager();

            dm.AddNew(addnewdepartment);
            Response.Write(1);
        }
        catch (Exception EX)
        {

            Response.Write(EX);
        }
    }
}