<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Wiki-Document</h1>
        <div style="float: right">
            <a href="#" data-toggle="modal" data-target="#myModal" style="color: black;"><i class="fas fa-cog"></i><span>Setting</span></a>
            <a href="#" style="color: black"><i class="far fa-edit"></i><span>Manager Post</span></a>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4" style="border-right-style: inset">
                <div>
                    Category
  
                     <a href="#">Create Category</a>
                    <a href="#">Create Post</a>

                </div>
            </div>
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
                 <button type="button" class="btn btn-info" >Save infomation</button>
            </div>
           

        </div>
    </div>

</asp:Content>

