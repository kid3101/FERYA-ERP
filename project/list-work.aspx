<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-work.aspx.cs" Inherits="project_list_work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">List-Work</h1>
        <button  type="button" class="btn btn-info" onclick="addwork()">Add Work</button>
        <br />

        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <br />
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Critical Level</th>
                                <th>Name</th>
                                <th>Code Work</th>
                                <th>Vision</th>
                                <th>Type</th>
                                <th>Appoint</th>
                                <th>Day create</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>12</td>
                                <td>TAG1</td>
                                <td>api</td>
                                <td>vision</td>
                                <td>type1</td>
                                <td>Appoint</td>
                                <td>25/3</td>
                                <td>1</td>

                                <td>

                                    <a href="/project/change-work.aspx"><i style="width: 25px" class="fas fa-book-open"></i></a>
                                    <a href="/project/list-work.aspx"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>
                                    <a href=" /project/edit-work.aspx"><i style="width: 25px" class="fas fa-pen"></i></a>
                                     <a href=" /project/comment-work.aspx"> <i style="width: 25px" class="fas fa-comments"></i></a>
                                   
                                </td>
                            </tr>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
        function addwork() {
            location.href = "/project/add-work.aspx";
        }
    </script>
</asp:Content>

