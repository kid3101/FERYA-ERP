<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="edit-post.aspx.cs" Inherits="project_edit_post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Edit Manage Post</h1>
        <div style="float: right">
            <a href="#" data-toggle="modal" data-target="#myModal" style="color: black;"><i class="fas fa-cog"></i><span>Setting</span></a>
            <a href="#" style="color: black"><i class="far fa-edit"></i><span>Manager Post</span></a>
        </div>
        <br />
        <div class="row">
           
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-9">
                        Title Post
                   <input type="text" class="form-control" />
                    </div>
                    <div class="col-md-3">
                        Status<br />
                        <select class="form-control">
                            <option>Invalid</option>
                            <option>Effective</option>
                        </select>
                    </div>
                </div>
                 
                <div>
                    Content
                    <div>
                        <textarea id="txtDesc" class="tinymce required"></textarea>
                    </div>
                </div>
                File Attach
                <input type="file" class="form-check" />
                <br />
                
            </div>
            <div class="col-md-9">
                       Category Id
                   <input type="text" class="form-control" />
                    </div>
            <button type="button" onclick="editpost()" class="btn btn-info" >Edit Post</button>

        </div>
    </div>
    <script>
        function editpost() {
            location.href = "/project/list-post.aspx";
        }
    </script>
</asp:Content>

