using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Project_edit_task : System.Web.UI.Page
{

    public Task edittask;

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        string project = Request["project"];
        string task = Request["task"];
        string content = Request["content"];
        DateTime start = Convert.ToDateTime(Request["start"]);
        DateTime finish = Convert.ToDateTime(Request["finish"]);
        DateTime end = Convert.ToDateTime(Request["end"]);

        TastManager tm = new TastManager();

        edittask = tm.GetById(id);
        edittask.ProjectId = Convert.ToInt32(project);
        edittask.TaskName = task;
        edittask.TaskContent = content;
        edittask.CreatedDate = DateTime.Now;
        edittask.StartTime = start;
        edittask.FinishTime = finish;
        edittask.EndTime = end;

        tm.Save();
        Response.Write("1");
    }
}