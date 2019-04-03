<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="project-list.aspx.cs" Inherits="ListProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/css-project/project-list.css" rel="stylesheet" />
    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Project List</h1>
        <button id="btn1" type="button" class="btn btn-info" style="" onclick="addproject()">Create Project</button>
<%--        <div>
            <select id="slt1"class="form-control">
                <option value="">Search</option>
                <option value="">New</option>
                <option value="">Working</option>
                <option value="">Finish</option>
                <option value="">Close</option>
            </select>
        </div>--%>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" >
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Name</th>
                                <th>Work</th>
                                <th>Member</th>
                                <th>Start date</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>System Architect</td>
                                <td>Edinburgh</td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>New</td>
                                <td>

                                   <%-- <a href="/project/category-list.aspx"><i style="width: 25px" class="fas fa-book-open"></i></a>--%>

                                    <a href="/project/list-work.aspx" title="Add work"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>
                                    <a href=" /project/edit-project.aspx" title="Edit"><i style="width: 25px" class="fas fa-pen"></i></a>
                                    <button type="button" style="border:none;background-color:floralwhite"  onclick="del()" title="Delete"><i class="fas fa-trash-alt" style="color:red"></i></button>

                                </td>
                            </tr>


                        </tbody>
                        <tbody>
                            <tr>
                                <td>2</td>
                                <td>App ERP</td>
                                <td>Create app</td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>New</td>
                                <td>
                                   <%-- <a href="/project/category-list.aspx"><i style="width: 25px" class="fas fa-book-open"></i></a>--%>
                                     <a href="/project/list-work.aspx" title="Add work"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>
                                    <a href=" /project/edit-project.aspx" title="Edit"><i style="width: 25px" class="fas fa-pen"></i></a>
                                    <button type="button" style="border:none;background-color:floralwhite"  onclick="del()" title="Delete"><i class="fas fa-trash-alt" style="color:red"></i></button>
                                </td>
                            </tr>
                        </tbody>

                        <tbody>
                            <tr>
                                <td>3</td>
                                <td>App ERP333</td>
                                <td>Create app33</td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>New</td>
                                <td>
                                   <%-- <a href="/project/category-list.aspx"><i style="width: 25px" class="fas fa-book-open"></i></a>--%>
                                     <a href="/project/list-work.aspx" title="Add work"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>
                                    <a href=" /project/edit-project.aspx" title="Edit"><i style="width: 25px" class="fas fa-pen"></i></a>
                                    <button type="button" style="border:none;background-color:floralwhite"  onclick="del()" title="Delete"><i class="fas fa-trash-alt" style="color:red"></i></button>
                                </td>
                            </tr>
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
        function addproject() {
            location.href = "/project/create-project.aspx";
        }
         function del(){
            alert("Are You Sure?");
        }
    </script>

</asp:Content>

