﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OfficeManager
/// </summary>
public class OfficeManager
{
    public OfficeManager()
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

    public void AddNew(Office office)
    {
        DB.Offices.InsertOnSubmit(office);
        Save();
    }
    public Office GetById(int id)
    {
        try
        {
            return DB.Offices.Where(e => e.OfficeId == id && e.Status != -1).First();
        }
        // lay id va khac -1;
        catch (Exception)
        {

            return new Office();
        }
    }
    public List<Office> GetOffice()
    {
        try
        {
            return DB.Offices.Where(u => u.Status != -1).ToList();
        }
        catch (Exception)
        {
            return null;
        }
    }
    public List<Office> GetListID(long id)
    {
        return DB.Offices.Where(u => u.OfficeId == id).ToList();
    }
}