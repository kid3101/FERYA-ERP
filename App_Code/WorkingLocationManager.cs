using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for WorkingLocationManager
/// </summary>
public class WorkingLocationManager
{
    public WorkingLocationManager()
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

    public void AddNew(WorkingLocation workinglocation)
    {
        DB.WorkingLocations.InsertOnSubmit(workinglocation);
        Save();
    }
    public WorkingLocation GetById(int id)
    {
        try
        {
            return DB.WorkingLocations.Where(e => e.WorkingLocationId == id && e.Status != "1").First();
        }
        // lay id va khac -1;
        catch (Exception)
        {

            return new WorkingLocation();
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
    public List<WorkingLocation> GetListID(long id)
    {
        return DB.WorkingLocations.Where(u => u.WorkingLocationId == id).ToList();
    }

    public List<Employee> getbyoffice(int id)
    {

        return DB.WorkingLocations.Where(t => t.CompanyId == id).ToList().Select(t => t.Employee).ToList();

    }
}