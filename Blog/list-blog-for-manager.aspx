<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager-blog.aspx.cs" Inherits="Blog_manager_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="../do/Employee/StyleSheet.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="../do/Employee/bootstrap-table-pagination.js"></script>
    <script src="../do/Employee/pagination.js"></script>

    <link href="../css/Css-Blog/blog-company-css.css" rel="stylesheet" />
    <link href="../css/Css-Blog/list-blog-for-manager.css" rel="stylesheet" />
    <div class="container-fluid">
    <div class="header-blog">
        <div style="display: flex;">
            <div class="col-sm-7" style="display:flex;">
             <h1 class="h3 mb-4 text-gray-800">Blog > Manager List Blog</h1>
             </div>
            <div class="col-sm-5" id="col-5">
                <div class="linkmanagerblog">
                    <div class="managerblog">
                        <a class="btn btn-info" data-toggle="tooltip" href="add-new-blog-for-manager.aspx"> Add New</a>
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

<%--        <div class="col-sm-5" id="searchblog">
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
        </div>--%>
        <br>
    </div>
    <div class="body-manager-list-blog">
         <table class="table table-bordered" id="dataTable ">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>               
                    <th>Describe</th>                  
                    <th>Content</th>
                    <th>CreateDate</th>
                    <th>Status</th>
                    <th>CompanyID</th>
                    <th>CreatedByID</th>
                   <%-- <th>Action</th>--%>
                </tr>
            </thead>
             <tbody id="developers">
                <% for (int i = Listblog.Count -1; i>-1;i--) 
                { %>
                <tr>
                    <td><%=Listblog[i].BlogId %></td>
                    <td><%=Listblog[i].BlogTitle %></td>
                    <td><%=Listblog[i].BlogDesc %></td>
                    <td><%=Listblog[i].BlogContent %></td>
                    <td><%=Listblog[i].CreatedDate %></td>
                    <td><%=Listblog[i].Status %></td>
                    <td><%=Listblog[i].Company.CompanyName %></td>
                    <td><%=Listblog[i].Employee.FirstName %></td>
                    <td>
                        <button type="button" style="border:none;background-color:floralwhite"  title="Detail" onclick="detail(<%=Listblog[i] %>)"><i style="width: 25px" class="fas fa-exclamation-circle"></i></button>
                        <button type="button" style="border:none;background-color:floralwhite" title="Edit" onclick="edit(<%=Listblog[i] %>)"><i style="width: 25px" class="fas fa-pen"></i> </button>
                         <button type="button" style="border:none;background-color:floralwhite"  onclick="del(<%=Listblog[i].BlogId %>)"title="Delete"><i class="fas fa-trash-alt" style="color:red"></i></button>

                    </td>
                    <%} %>
                </tr>               
            </tbody>
        </table>
         <div class="col-md-12 text-center">
			 <ul class="pagination pagination-lg pager" id="developer_page"></ul>
		 </div>
    </div>
        </div>
    <script>
        function del(id){
             var txt;
            var r = confirm("Are you sure Delete?");
        }
    </script>
</asp:Content>

