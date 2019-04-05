using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_add_new_office : System.Web.UI.Page
{
    public Office addnewoffice = new Office();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string name = Request["name"];
            string address = Request["address"];
            string company = Request["company"];

            addnewoffice.OfficeName = name;
            addnewoffice.OfficeAddress = address;
            addnewoffice.CompanyId = Convert.ToInt32(company);
            addnewoffice.CreatedDate = DateTime.Now;
            addnewoffice.Status = 1;

            OfficeManager om = new OfficeManager();

            om.AddNew(addnewoffice);
            Response.Write("1");
        }
        catch (Exception EX)
        {

            Response.Write(EX);
        }
    }
}