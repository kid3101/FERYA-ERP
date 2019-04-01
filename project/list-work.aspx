<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-work.aspx.cs" Inherits="project_list_work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
         <div style="display:flex;">  <h1 class="h3 mb-4 text-gray-800">System Architect</h1><i style="padding-left: 20px;color: black;padding-right: 20px;margin-top:10px;" class="fa fa-angle-right"></i><h1 class="h3 mb-4 text-gray-800">List Work</h1></div>
        <div> 
            <button type="button" class="btn btn-info" onclick="addwork()">Add Work</button>
           
             <a  href="/project/list-version.aspx" style="margin-left: 700px;font-size:20px"><i class="far fa-folder-open"></i>Version</a>
               
      </div>
        <div style="color:white"> 0</div>
        
        <select class="form-control" style="width:400px" >
            <option>Search Work</option>
            <option>Assigned the job</option>
            <option>Solving</option>
            <option>Need to be approved</option>
            <option>Browsing</option>
            <option>Complete but error</option>
            <option>Completed</option>
            <option>Cancel</option>
        </select>
       
       
          
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
                                <th>Version</th>
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
                                <td>version</td>
                                <td>type1</td>
                                <td>Appoint</td>
                                <td>25/3</td>
                                <td>Finish</td>

                                <td>

                                    <a href="/project/change-work.aspx"><i style="width: 25px" class="fas fa-book-open"></i></a>
                                    <a href="/project/list-work.aspx"><i style="width: 25px" class="fas fa-trash-alt"></i></a>
                                    <a href=" /project/edit-work.aspx"><i style="width: 25px" class="fas fa-pen"></i></a>
                                    <a href=" /project/comment-work.aspx"><i style="width: 25px" class="fas fa-comments"></i></a>

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
        function version() {
            location.href = "/project/list-version.aspx";
        }

    </script>
</asp:Content>

