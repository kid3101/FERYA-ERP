<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager-blog.aspx.cs" Inherits="Blog_manager_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
     <link href="../css/Css-Blog/blog-company-css.css" rel="stylesheet" />
    <link href="../css/Css-Blog/manager-blog.css" rel="stylesheet" />
          <div class="header-blog">
          <div style="display:flex;">
            <div class="col-sm-7" style="display:flex;">
             <h1 class="h3 mb-4 text-gray-800">Blog > Manager</h1>
             </div> 
          <div class="col-sm-5" id="col-5">
                                   <div class="linkmanagerblog">
                    <div class="managerblog">
                        <a class="btn btn-info" data-toggle="tooltip" href="add-new-blog-for-manager.aspx" title="Timekeeping">+ Add New</a>
                    </div>
                      <br />
                    <div class="page">    
                        <div style="margin-right: 6px;">
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
                   <%--  <div class="count">
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
    <div class="body-manager-blog">

    </div>
        </div>
</asp:Content>

