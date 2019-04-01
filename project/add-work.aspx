﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-work.aspx.cs" Inherits="project_add_work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

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
    animation: fstAnimationEnter 0.2s;
}
.fstMultipleMode .fstControls {
    box-sizing: border-box;
    padding: 0.5em 0.5em 0em 0.5em;
    overflow: hidden;
    width: 50em;
    cursor: text;
    border: 1px solid #d1d3e2;
    border-radius: .35rem;
    height: 60px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Add Work</h1>
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
           <button type="button" onclick="addwork1()" class="btn btn-info">Save infomation</button>
    </div>
<script>
         $('.multipleSelect').fastselect();
    function addwork1() {
        location.href = "/project/list-work.aspx";
    }
</script>

</asp:Content>

