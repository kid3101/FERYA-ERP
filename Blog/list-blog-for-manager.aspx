<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager-blog.aspx.cs" Inherits="Blog_manager_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/Css-Blog/blog-company-css.css" rel="stylesheet" />
    <link href="../css/Css-Blog/list-blog-for-manager.css" rel="stylesheet" />
    <div class="header-blog">
        <div style="display: flex;">
            <div class="col-sm-7">
                <a class="title-blog" href="blog-company.aspx">Blog</a> -> <a class="title-blog" href="manager-blog.aspx">Manager</a>
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
            <div class="count">
                <span>All</span>
                <span class="number">0</span>
            </div>
            <div class="search-container">
                <form action="#">
                    <input type="text" placeholder="Search.." name="search">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>
        <br>
    </div>
    <div class="body-manager-list-blog">
        <table class="table table-condensed">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Status</th>
                    <th>Creator</th>
                    <th>Day Created</th>
                    <th>Option</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>DELTAIL MARKETING</td>
                    <td>Active</td>
                    <td>Katewinless</td>
                    <td>22/12/2022</td>
                    <td>
                        <a href="detail-blog.aspx" style="text-decoration: none;"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>

                        <a href="edit-blog.aspx" style="text-decoration: none;"><i style="width: 25px" class="fas fa-pen"></i></a>

                    </td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>DELTAIL MARKETING</td>
                    <td>Active</td>
                    <td>Katewinless</td>
                    <td>22/12/2022</td>
                    <td>
                        <a href="detail-blog.aspx" style="text-decoration: none;"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>

                        <a href="edit-blog.aspx" style="text-decoration: none;"><i style="width: 25px" class="fas fa-pen"></i></a>

                    </td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>DELTAIL MARKETING</td>
                    <td>Active</td>
                    <td>Katewinless</td>
                    <td>22/12/2022</td>
                    <td>
                        <a href="detail-blog.aspx" style="text-decoration: none;"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>

                        <a href="edit-blog.aspx" style="text-decoration: none;"><i style="width: 25px" class="fas fa-pen"></i></a>

                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>

