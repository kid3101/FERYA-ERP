<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-post.aspx.cs" Inherits="project_list_post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800"> List Post</h1>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Title</th>
                              
                                <th>Url</th>
                                <th>Status</th>
                                <th>Action</th>
                            
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>title</td>
                               
                                <td>123</td>
                                <td><select>
                                    <option>op1</option>
                                     <option>op2</option>
                                    </select></td>
                              
                                <td>

                                    <a href="/project/add-post.aspx"><i style="width: 25px" class="fas fa-book-open"></i></a>
                            
                                    <a href="/project/list-post.aspx"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>
                                            <a href=" /project/edit-post.aspx"><i style="width: 25px" class="fas fa-pen"></i></a>
                                </td>
                            </tr>
                           

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

