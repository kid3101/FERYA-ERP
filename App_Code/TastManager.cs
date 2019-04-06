using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TastManager
/// </summary>
public class TastManager
{
    public TastManager()
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

    public void AddNew(Task task)
    {
        DB.Tasks.InsertOnSubmit(task);
        Save();
    }
    public Task GetById(int id)
    {
        try
        {
            return DB.Tasks.Where(e => e.TaskId == id && e.Status != -1).First();
        }
        // lay id va khac -1;
        catch (Exception)
        {

            return new Task();
        }
    }
    public List<Task> GetTask()
    {
        try
        {
            return DB.Tasks.Where(u => u.Status != -1).ToList();
        }
        catch (Exception)
        {
            return null;
        }
    }
    public List<Task> GetListID(long id)
    {
        return DB.Tasks.Where(u => u.TaskId == id).ToList();
    }
}