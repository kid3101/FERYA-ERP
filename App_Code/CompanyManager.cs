using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CompanyManager
/// </summary>
public class CompanyManager
{
    public CompanyManager()
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

    public void AddNew(Company office)
    {
        DB.Companies.InsertOnSubmit(office);
        Save();
    }
    public Company GetById(int id)
    {
        try
        {
            return DB.Companies.Where(e => e.CompanyId == id && e.Status != -1).First();
        }
        // lay id va khac -1;
        catch (Exception)
        {

            return new Company();
        }
    }
    public List<Company> GetCompany()
    {
        try
        {
            return DB.Companies.Where(u => u.Status != -1).ToList();
        }
        catch (Exception)
        {
            return null;
        }
    }
}