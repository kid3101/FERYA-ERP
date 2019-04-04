using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_delete_office : System.Web.UI.Page
{
    public Office deleteoffice;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(Request["id"]);
            OfficeManager OM = new OfficeManager();
            deleteoffice = OM.GetById(id);
            deleteoffice.Status = -1;
            OM.Save();
            Response.Write("1");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}