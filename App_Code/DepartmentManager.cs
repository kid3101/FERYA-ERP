using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DepartmentManager
/// </summary>
public class DepartmentManager
{
    public DepartmentManager()
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

    public void AddNew(Department department)
    {
        DB.Departments.InsertOnSubmit(department);
        Save();
    }
    public Department GetById(int id)
    {
        try
        {
            return DB.Departments.Where(e => e.DepartmentId == id && e.Status != -1).First();
        }
        // lay id va khac -1;
        catch (Exception)
        {

            return new Department();
        }
    }
    public List<Department> GetDepartment()
    {
        try
        {
            return DB.Departments.Where(u => u.Status != -1).ToList();
        }
        catch (Exception)
        {
            return null;
        }
    }
}