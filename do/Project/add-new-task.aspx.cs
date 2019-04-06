using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Project_add_new_task : System.Web.UI.Page
{
    public Task addnewtask = new Task();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string project = Request["project"];
            string task = Request["task"];
            string content = Request["content"];
            DateTime start = Convert.ToDateTime(Request["start"]);
            DateTime finish = Convert.ToDateTime(Request["finish"]);
            DateTime end = Convert.ToDateTime(Request["end"]);
            //string employee = Request["employee"];

            addnewtask.ProjectId = Convert.ToInt32(project);
            addnewtask.TaskName = task;
            addnewtask.TaskContent = content;
            addnewtask.CreatedDate = DateTime.Now;
            addnewtask.StartTime = start;
            addnewtask.FinishTime = finish;
            addnewtask.EndTime = end;
            addnewtask.Status = 1;
            //addnewtask.CreatedByEmpId = Convert.ToInt32(employee);

            TastManager tm = new TastManager();

            tm.AddNew(addnewtask);
            Response.Write("1");
        }
        catch (Exception EX)
        {

            Response.Write(EX);
        }
    }
}