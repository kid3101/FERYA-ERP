<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-version.aspx.cs" Inherits="project_list_vision" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">List Version</h1>
        <button type="button" class="btn btn-info" style="margin-left: 950px; margin-top: -90px" onclick="addversion()">Create Version</button>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Name</th>


                                <th>Status</th>
                                <th>Start Day</th>
                                <th>Finish Day</th>
                                <th>Action</th>

                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>vision1</td>


                                <td>
                                    <select>
                                        <option>Waiting for progressing</option>

                                        <option>Doing</option>
                                        <option>Accomplished</option>
                                        <option>Expired</option>

                                    </select></td>
                                <td>Start Day</td>
                                <td>Finish Day</td>
                                <td>

                                 <%--   <a href="/project/create-vision.aspx"><i onclick="createvision()" style="width: 25px" class="fas fa-book-open"></i></a>--%>

                                    <a href="/project/list-version.aspx"><i onclick="deletevision()" style="width: 25px" class="fas fa-trash-alt"></i></a>
                                    <a href="/project/edit-version.aspx"><i onclick="editversion()" style="width: 25px" class="fas fa-pen"></i></a>
                                </td>
                            </tr>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
     <script>
        function addversion() {
            location.href = "/project/create-vision.aspx";
         }
        function editversion() {
            location.href = "/project/edit-version.aspx";
         }
    </script>
</asp:Content>

