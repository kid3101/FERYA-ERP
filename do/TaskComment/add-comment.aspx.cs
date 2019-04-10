using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_TaskComment_add_comment : System.Web.UI.Page
{
    //public TaskComment tm;
    public Task task;
    protected void Page_Load(object sender, EventArgs e)
    {
        TaskCommentManager tcm = new TaskCommentManager();
        TastManager ttm = new TastManager();
        TaskComment tc = new TaskComment();
        int id = Convert.ToInt32(Request["id"]);
        task = ttm.GetById(id);
        tc.CommentTitle = task.TaskName;
        tc.CommentNote = Request["conten"];
        tc.CreatedDate = DateTime.Now;
        tc.EmployeeId = 1;
        tc.TaskId = id;
        tc.ProjectId = task.ProjectId;
        tcm.AddNew(tc);
        tcm.Save();
        Response.Write(1);
    }
}