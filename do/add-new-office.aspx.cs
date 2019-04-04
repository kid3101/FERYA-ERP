using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_add_new_office : System.Web.UI.Page
{
    public Office addnewuser = new Office();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            
        }
        catch (Exception EX)
        {

            Response.Write(EX);
        }
    }
}