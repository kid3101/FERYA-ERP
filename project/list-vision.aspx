<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-vision.aspx.cs" Inherits="project_list_vision" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">List Vision</h1>
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

                                    <a href="/project/create-vision.aspx"><i onclick="createvision()" style="width: 25px" class="fas fa-book-open"></i></a>

                                    <a href="/project/list-vision.aspx"><i onclick="deletevision()" style="width: 25px" class="fas fa-trash-alt"></i></a>
                                    <a href=" /project/edit-vision.aspx"><i onclick="editvision()" style="width: 25px" class="fas fa-pen"></i></a>
                                </td>
                            </tr>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
       
    </script>
</asp:Content>

