using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Setting_edit_office : System.Web.UI.Page
{
    public Office editoffice;

    protected void Page_Load(object sender, EventArgs e)
    {
            int id = Convert.ToInt32(Request["id"]);
            string name = Request["name"];
            string address = Request["address"];
            string company = Request["company"];
            
            OfficeManager om = new OfficeManager();

            editoffice = om.GetById(id);
            editoffice.OfficeName = name;
            editoffice.OfficeAddress = address;
            editoffice.CompanyId = Convert.ToInt32(company);
            om.Save();
            Response.Write("1");
        
    }
}