using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Setting_Office : System.Web.UI.Page
{
    public List<Office> listOffice;

    public List<Company> listCompany;

    public Office editoffice;

    protected void Page_Load(object sender, EventArgs e)
    {
        OfficeManager om = new OfficeManager();
        listOffice = om.GetOffice();

        CompanyManager cm = new CompanyManager();
        listCompany = cm.GetCompany();

        int id = Convert.ToInt32(Request["id"]);

        editoffice = om.GetById(id);
    }
}