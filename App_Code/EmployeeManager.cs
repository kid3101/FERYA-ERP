using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EmployeeManager
/// </summary>
public class EmployeeManager
{
    public EmployeeManager()
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
    public void AddNew(Employee emp)
    {
        DB.Employees.InsertOnSubmit(emp);
        Save();
    }
    //co bien va kieu du kieu
    public Employee GetById(int id)
    {
        try
        {
            return DB.Employees.Where(e => e.EmployeeId == id && e.Status != -1).First();
        }
        // lay id va khac -1;
        catch (Exception)
        {

            return new Employee();
        }
    }
    public List<Employee> GetUser()
    {
        try
        {
            return DB.Employees.Where(u => u.Status != -1).ToList();
        }
        catch (Exception)
        {
            return null;
        }
    }
   
}