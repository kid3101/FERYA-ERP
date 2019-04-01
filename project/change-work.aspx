<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="change-work.aspx.cs" Inherits="project_change_work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
        <div style="display:flex;">
             <h1 class="h3 mb-4 text-gray-800">System Architect > TAG 1 > Update Status</h1>

         </div>
        <div style="float: right">
            <a href="#" data-toggle="modal" data-target="#myModal" style="color: black;"><i class="fas fa-cog"></i><span>Setting</span></a>
            <a href="#" style="color: black"><i class="far fa-edit"></i><span>Manager Post</span></a>
        </div>
        <br />
        <div class="row">

            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-4">
                        New Status
                    <select class="form-control">
                        <option>Assigned the job</option>
                        <option>Solving</option>
                        <option>Need to be approved</option>
                        <option>Browsing</option>
                        <option>Complete but error</option>
                        <option>completed</option>
                        <option>Cancel</option>
                    </select>
                    </div>

                    <div class="col-md-12">
                        Note change
                        <input type="text" class="form-control" style="height: 90px" />
                    </div>

                    <div class="col-md-4">
                        Day update
                        <input type="date" class="form-control" />
                    </div>
                    <br />
                    <div class="col-md-4">
                        History update
                       <input type="text" class="form-control" />
                    </div>
                    <br /><div></div>
                </div>
                <div>  </div>
                <br />
                <button type="button" class="btn btn-facebook" onclick="updatework()">Update</button>
                   <button type="button" class="btn btn-info" onclick="historywork()">HistoryUpdate</button>
            </div>



        </div>

    </div>
    <script>
        function updatework() {
            location.href = "/project/change-work.aspx";
        }
        function historywork() {
            location.href = "/project/history-changework.aspx";
        }
</script>
</asp:Content>

