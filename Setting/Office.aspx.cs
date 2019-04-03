using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Setting_Office : System.Web.UI.Page
{
    public List<Office> listOffice;
    protected void Page_Load(object sender, EventArgs e)
    {
        OfficeManager om = new OfficeManager();
        listOffice = om.GetOffice();
    }
}