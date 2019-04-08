using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Project_edit_project : System.Web.UI.Page
{
    public Project editproject;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
           ;
            int id = Convert.ToInt32(Request["id"]);
            string name = Request["name"];
            string desc = Request["desc"];
            string content = Request["content"];
            DateTime startday = Convert.ToDateTime(Request["startday"]);
            DateTime finish = Convert.ToDateTime(Request["finish"]);
            int manager = Convert.ToInt32(Request["manager"]);
            int company = Convert.ToInt32(Request["company"]);
            ProjectManager pm = new ProjectManager();

            editproject = pm.GetById(id);
            //editproject.ProjectId = Convert.ToInt32(editproject);
            editproject.ProjectTitle = name;
            editproject.ProjectDesc = desc;
            editproject.ProjectContent = content;
        
            editproject.StartTime = startday;
            editproject.FinishTime = finish;
            editproject.CompanyId = company;
            editproject.ManagerId = manager;
            pm.Save();
            Response.Write(1);
        }
        catch (Exception ex)
        {
          Response.Write(ex.ToString());
        }        
    }
}