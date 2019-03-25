<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="project-list.aspx.cs" Inherits="ListProject" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Project List</h1>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
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
                                <td>No</td>
                                <td>System Architect</td>
                                <td>Edinburgh</td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>$320,800</td>
                                <td>

                                    <a href="/project/create-project.aspx"><i style="width: 25px" class="fas fa-book-open"></i></a>
                            
                                    <a href="/project/project-list.aspx"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>
                                            <a href=" /project/edit-project.aspx"><i style="width: 25px" class="fas fa-pen"></i></a>
                                </td>
                            </tr>
                           

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

