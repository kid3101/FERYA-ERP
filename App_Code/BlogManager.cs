using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BlogManager
/// </summary>
public class BlogManager
{
    public BlogManager()
    {
       
    }
    DataClassesDataContext DB = new DataClassesDataContext();
    
    public void Save()
    {
        DB.SubmitChanges();
    }
    public void AddNew(Blog blog)
    {
        DB.Blogs.InsertOnSubmit(blog);
    }
    public Blog GetById(int id)
    {
        try
        {
            return DB.Blogs.Where(n => n.BlogId == id && n.Status != -1).First();
        }
        catch (Exception)
        {
            return new Blog();
        }
    }
    public List<Blog> GetList()
    {
        try
        { 
          return DB.Blogs.Where(n => n.Status != -1).ToList();
        }
        catch (Exception)
        {
            return null;
        }
    }
}