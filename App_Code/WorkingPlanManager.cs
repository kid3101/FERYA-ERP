using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for WorkingPlanManager
/// </summary>
public class WorkingPlanManager
{
    public WorkingPlanManager()
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

    public void AddNew(WorkingPlan workingPlan)
    {
        DB.WorkingPlans.InsertOnSubmit(workingPlan);
        Save();
    }
    public WorkingPlan GetById(int id)
    {
        try
        {
            return DB.WorkingPlans.Where(e => e.WorkingPlanId == id && e.Status != -1).First();
        }
        // lay id va khac -1;
        catch (Exception)
        {

            return new WorkingPlan();
        }
    }
    public List<WorkingPlan> GetWorkingPlan()
    {
        try
        {
            return DB.WorkingPlans.Where(u => u.Status != -1).ToList();
        }
        catch (Exception)
        {
            return null;
        }
    }
    public List<WorkingPlan> GetListID(long id)
    {
        return DB.WorkingPlans.Where(u => u.WorkingPlanId == id).ToList();
    }
}