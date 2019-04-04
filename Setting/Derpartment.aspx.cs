using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Setting_Derpartment : System.Web.UI.Page
{
    public List<Department> listDepartment;
    protected void Page_Load(object sender, EventArgs e)
    {
        DepartmentManager dm = new DepartmentManager();
        listDepartment = dm.GetDepartment();
    }
}