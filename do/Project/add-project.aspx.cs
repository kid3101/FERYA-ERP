using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Project_add_project : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string name = Request["name"];
            string desc = Request["desc"];
            string content = Request["content"];
            DateTime startday= Convert.ToDateTime(Request["startday"]);
            DateTime finish= Convert.ToDateTime(Request["finish"]);
            int status = Convert.ToInt32(Request["status"]);
            int company = Convert.ToInt32(Request["company"]);
            int manager = Convert.ToInt32(Request["manager"]);
            ProjectManager PM = new ProjectManager();
            Project project = new Project();
            project.ProjectTitle = name;
            project.ProjectDesc = desc;
            project.ProjectContent = content;
            project.StartTime = startday;
            project.FinishTime = finish;
            project.Status = status;
            project.CreatedDate = DateTime.Now;
            project.CompanyId = company;
            project.ManagerId = manager;
           
            PM.AddNew(project);
            Response.Write("1");
        }
        catch (Exception)
        {

            throw;
        }
    }
}