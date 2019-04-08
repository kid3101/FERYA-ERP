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

    public List<Project> listProject;

    public List<Employee> listEmployee;

    protected void Page_Load(object sender, EventArgs e)
    {
        TastManager tm = new TastManager();
        listTask = tm.GetTask();

        TaskCommentManager tcm = new TaskCommentManager();
        listTaskComment = tcm.GetTaskComment();

        ProjectManager pm = new ProjectManager();
        listProject = pm.GetList();

        EmployeeManager em = new EmployeeManager();
        listEmployee = em.GetUser();
    }
}