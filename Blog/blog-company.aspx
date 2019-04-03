<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blog-company.aspx.cs" Inherits="Blog_blog_company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/Css-Blog/blog-company-css.css" rel="stylesheet" />
    <div class="container-fluid">
      <div class="header-blog">
          <div style="display:flex;">
             <div class="col-sm-7" style="display:flex;">
             <h1 class="h3 mb-4 text-gray-800">Blog</h1>
             </div>
          <div class="col-sm-5" id="col-5">
                  <div class="linkmanagerblog">
                    <div class="managerblog">
                        <a class="btn btn-info" data-toggle="tooltip" href="list-blog-for-manager.aspx">For Manager</a>
                    </div>
                      <br />
                    <div class="page">    
                        <div >
                                <a href="#"><i class="fa fa-chevron-left"></i></a>
                                <span>Page</span>
                                <span>0</span>
                                <span>/</span>
                                <span>0</span>
                                <a href="#"><i class="fa fa-chevron-right"></i></a>
                        </div>
                        
                    </div>
              </div>
              </div>
              </div>

          <div class="col-sm-5" id="searchblog"> 
           <%--          <div class="count">
                            <span>All</span>
                            <span class="number">0</span>
                       </div>
                    <div class="search-container">
                            <form action="#">
                              <input type="text" placeholder="Search.." name="search">
                              <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                      </div>--%>
              </div>
        <br>
    </div>
        
<div class="zerodata">
        <div>
            <div class="zerodataimage"><img src="/imgs/zerodata/info.png"></div>
            <h3>Blog is empty</h3>
            <p>Please add new blog</p>
            <div class="zerodatabutton"><a href="add-new-blog.aspx" class="btn btn-info">Add New</a></div>
        </div>
    </div>
        </div>
    <script>

    </script>
</asp:Content>

