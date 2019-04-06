using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TaskCommentManager
/// </summary>
public class TaskCommentManager
{
    public TaskCommentManager()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    DataClassesDataContext DB = new DataClassesDataContext();
    public void Save()
    {
        DB.SubmitChanges();
    }

    public void AddNew(TaskComment taskcomment)
    {
        DB.TaskComments.InsertOnSubmit(taskcomment);
        Save();
    }
    public TaskComment GetById(int id)
    {
        try
        {
            return DB.TaskComments.Where(e => e.TaskCommentId == id ).First();
        }
        // lay id va khac -1;
        catch (Exception)
        {

            return new TaskComment();
        }
    }
    //public List<TaskComment> GetTaskComment()
    //{
    //    try
    //    {
    //        return DB.TaskComments.Where(u => u.Status != -1).ToList();
    //    }
    //    catch (Exception)
    //    {
    //        return null;
    //    }
    //}
    public List<TaskComment> GetListID(long id)
    {
        return DB.TaskComments.Where(u => u.TaskCommentId == id).ToList();
    }
}