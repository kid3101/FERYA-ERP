using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Attendance_getlistemployee : System.Web.UI.Page
{
    public List<Employee> listemployee;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        int id = Convert.ToInt32(Request["id"]);
        WorkingLocationManager wm = new WorkingLocationManager();
        listemployee = wm.getbyoffice(id);
        foreach(var i in listemployee)
        {
            Response.Write("<option>" + i.FirstName + "</option>");
        }
    }
}