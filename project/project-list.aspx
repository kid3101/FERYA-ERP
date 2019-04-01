﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="project-list.aspx.cs" Inherits="ListProject" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Project List</h1>
        <button type="button" class="btn btn-info" style="margin-left: 950px; margin-top: -90px" onclick="addproject()">Create Project</button>
        <div>
            <select style="width: 400px" class="form-control">
                <option value="">Search</option>
                <option value="">New</option>
                <option value="">Working</option>
                <option value="">Finish</option>
                <option value="">Close</option>
            </select>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive" style="margin-top:10px">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
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

                                    <a href="/project/list-work.aspx"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>
                                    <a href=" /project/edit-project.aspx"><i style="width: 25px" class="fas fa-pen"></i></a>
                                    <a href=" /project/project-list.aspx"><i style="width: 25px" class="fas fa-trash-alt"></i></a>

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

                                    <a href="/project/list-work.aspx"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>
                                    <a href=" /project/edit-project.aspx"><i style="width: 25px" class="fas fa-pen"></i></a>
                                    <a href=" /project/project-list.aspx"><i style="width: 25px" class="fas fa-trash-alt"></i></a>

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
    </script>

</asp:Content>

