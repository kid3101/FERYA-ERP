using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AttendantManager
/// </summary>
public class AttendantManager
{
    public AttendantManager()
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

    public void AddNew(Attendant attendant)
    {
        DB.Attendants.InsertOnSubmit(attendant);
        Save();
    }
    public Attendant GetById(int id)
    {
        try
        {
            return DB.Attendants.Where(e => e.AttendantId == id && e.Status != -1).First();
        }
        // lay id va khac -1;
        catch (Exception)
        {

            return new Attendant();
        }
    }
    public List<Attendant> GetAttendant()
    {
        try
        {
            return DB.Attendants.Where(u => u.Status != -1).ToList();
        }
        catch (Exception)
        {
            return null;
        }
    }
    public List<Attendant> GetListID(long id)
    {
        return DB.Attendants.Where(u => u.AttendantId == id).ToList();
    }
}