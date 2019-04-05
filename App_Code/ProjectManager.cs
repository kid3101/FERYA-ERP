using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProjectManager
/// </summary>
public class ProjectManager
{
    public ProjectManager()
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
    public void AddNew(Project project)
    {
        DB.Projects.InsertOnSubmit(project);
    }
    public Project GetById(int id)
    {
        try
        {
            return DB.Projects.Where(n => n.ProjectId == id && n.Status != -1).First();
        }
        catch (Exception)
        {
            return new Project();
        }
    }
    public List<Project> GetList()
    {
        try
        {
            return DB.Projects.Where(n => n.Status != -1).ToList();
        }
        catch (Exception)
        {
            return null;
        }
    }
}