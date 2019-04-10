using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BlogCommentManager
/// </summary>
public class BlogCommentManager
{
    public BlogCommentManager()
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
    public void AddNew(BlogComment blog)
    {
        DB.BlogComments.InsertOnSubmit(blog);
    }
    public BlogComment GetById(int id)
    {
        try
        {
            return DB.BlogComments.Where(n => n.BlogCommentId==id).First();
        }
        catch (Exception)
        {
            return new BlogComment();
        }
    }
    public List<BlogComment> GetList()
    {
        try
        {
            return DB.BlogComments.Where(n => n.Status != -1).ToList();
        }
        catch (Exception)
        {
            return null;
        }
    }
    public List<BlogComment> GetListComment(int id)
    {
        return DB.BlogComments.Where(n => n.BlogId == id && n.Status != -1).ToList();
    }
}
        
