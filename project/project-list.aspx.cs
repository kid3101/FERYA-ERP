using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListProject : System.Web.UI.Page
{
    public List<Project> listProject;
    protected void Page_Load(object sender, EventArgs e)
    {
        ProjectManager PM = new ProjectManager();
        listProject = PM.GetList();
    }
}