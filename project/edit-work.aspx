<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="edit-work.aspx.cs" Inherits="project_edit_work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
    <link href="../dist/fastselect.css" rel="stylesheet" />
    <script src="../dist/fastselect.js"></script>
    <link href="../dist/fastselect.min.css" rel="stylesheet" />
    <script src="../dist/fastselect.min.js"></script>
    <script src="../dist/fastselect.standalone.js"></script>
    <script src="../dist/fastselect.standalone.min.js"></script>
<style>
    .fstChoiceItem {
    display: inline-block;
    font-size: 15px;
    position: relative;
    margin: 0 .41667em .41667em 0;
    padding: .33333em .33333em .33333em 1.5em;
    float: left;
    border-radius: .25em;
    border: 1px solid #43A2F3;
    cursor: auto;
    color: #fff;
    background-color: #43A2F3;
    -webkit-animation: fstAnimationEnter 0.2s;
    -moz-animation: fstAnimationEnter 0.2s;
    animation: fstAnimationEnter 0.2s
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
         <div style="display:flex;">
             <h1 class="h3 mb-4 text-gray-800">System Architect > TAG 1 > Edit Work</h1>

         </div>
        <div style="float: right">
         <%--   <a href="#" data-toggle="modal" data-target="#myModal" style="color: black;"><i class="fas fa-cog"></i><span>Setting</span></a>
            <a href="#" style="color: black"><i class="far fa-edit"></i><span>Manager Post</span></a>--%>
        </div>
        <br />
        <div class="row">

            <div class="col-md-8" style="border-right-style: inset">
                <div class="row">
                    <div class="col-md-8">
                        Name work
                   <input type="text" class="form-control" />
                    </div>

                    <div class="col-md-3">
                        Critical level<br />
                        <select class="form-control">
                            <option>Emergency</option>
                            <option>High</option>
                            <option>Normal</option>
                            <option>Low</option>
                        </select>
                    </div>


                    <div class="col-md-8">
                        Status<br />
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
                    <div class="col-md-8">
                       <%-- Tag<br />
                        <input class="form-control">
                          
                        </input >--%>
                    </div>
                    <div  class="col-md-8">
                    Appoint
                  <div>
                        <select  style="height:8px" class="multipleSelect" multiple name="language">
                <option value="Bangladesh">Bangladesh</option>
                <option selected value="Barbados">Barbados</option>
                <option selected value="Belarus">Belarus</option>
                <option value="Belgium">Belgium</option>
            </select>
                    </div>
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
            <div class="col-md-4">
                <div>
                    Type
                  <select class="form-control">
                      Function
                      <option>problem</option>
                      <option>improve</option>
                      <option>offer</option>
                      <option>design</option>
                  </select>
                </div>

                


                <div>

                  <%--  <select class="form-control">
                        Vision
                      <option>123</option>
                    </select>--%>
                </div>



                <div>
                    Start day
                        <input type="date" class="form-control" />
                </div>
                <div>
                    Complete Day
                        <input type="date" class="form-control" />
                </div>
               <%-- <div>
                    
                  Attach
                    <input type="file" />
                </div>--%>
            </div>

            <div class="col-md-8">
                Tag
                   <input type="text" class="form-control" />
            </div>
         

        </div><div style="color:white"> 0</div>
          <a href="list-work.aspx"> <button type="button" onclick="editwork1()" class="btn btn-info">Edit infomation</button></a>
    </div>
<script>
         $('.multipleSelect').fastselect();
    function editwork1() {
        location.href = "/project/edit-work.aspx";
    }
</script>
</asp:Content>

