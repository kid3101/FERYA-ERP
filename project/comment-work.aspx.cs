using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class project_comment_work : System.Web.UI.Page
{
    public List<Task> listTask;

    public List<TaskComment> listTaskComment;

    public Task task;

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        TastManager tm = new TastManager();

        TaskCommentManager tcm = new TaskCommentManager();
        listTaskComment = tcm.GetListCommentbyTaskId(id);
   
        task = tm.GetById(id);

    }
}