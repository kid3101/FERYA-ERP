﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="create-project.aspx.cs" Inherits="project_CreateProject_CreateProject" %>

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
    animation: fstAnimationEnter 0.2s
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container-fluid">
      <div style="display:flex;">  <h1 class="h3 mb-4 text-gray-800">System Architect</h1><i style="padding-left: 20px;color: black;padding-right: 20px;margin-top:10px;" class="fa fa-angle-right"></i><h1 class="h3 mb-4 text-gray-800">Edit</h1></div>
        <div class="row">
            <div class="col-sm-3">
                <div>
                    <div><b>Overview</b></div>

                </div>
            </div>
            <div class="col-sm-4">
                <br>
                <label>Name</label>
                <div>
                    <input class="form-control" type="text">
                    <br>
                </div>

                <label>Position</label>
                <div>
                    <input style="height: 60px" class="form-control" type="text">
                </div>
                <div class="col-sm" style="display: flex;margin-left:-22px;">
                    <div class="col-sm-8">
                        <label for="ex1">Start Day</label>

                        <div id="datepicker" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control" type="date">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                    </div>

                    <div class="col-sm-8">

                        <label for="ex2">Finish Day</label>
                        <div id="datepicker1" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control" type="date">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                    </div>

                </div>
                <br />
                 <div class="col-sm-5" style="margin-left:-10px;">
                        <label>Status </label>
                        <select class="form-control">
                            <option> New </option>
                            <option> Working </option>
                            <option> Finish </option>
                            <option> Close </option>
                        </select>
                    </div>
            </div>

            <div class="col-sm-4">
                <br>
                <label>Position</label>
                <div>
                    <input class="form-control" type="text">
                </div>
            </div>
            <br />


        </div>
        <hr />
        <div class="row">

            <div class="col-sm-3">

                <div>Assigned </div>
                <br /><br />
                <br />
                <br /><br />
                <div>Assign employees to the project</div>
            </div>

            <div class="col-sm-6">
                <div>
                    <div>Member</div>
                    <div>
                        <select style="height:8px" class="multipleSelect" multiple name="language">
                <option value="Bangladesh">Bangladesh</option>
                <option selected value="Barbados">Barbados</option>
                <option selected value="Belarus">Belarus</option>
                <option value="Belgium">Belgium</option>
            </select>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="flew" style=" margin-top:43px">
                    <label class="switch">
                        <input type="checkbox" checked>
                        <span class="slider round"></span>

                    </label>

                    <span>Can create work</span>
                </div>
            </div>
        </div>


        <div class="row">

            <div class="col-sm-3">
            </div>
            <div class="col-sm-6">
                <div>
                    <div>Member</div>
                    <div>
                        <select style="height:8px" class="multipleSelect" multiple name="language">
                <option value="Bangladesh">Bangladesh</option>
                <option selected value="Barbados">Barbados</option>
                <option selected value="Belarus">Belarus</option>
                <option value="Belgium">Belgium</option>
            </select>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="flew" style=" margin-top:43px" >
                    <label class="switch">
                        <input type="checkbox" checked>
                        <span class="slider round"></span>

                    </label>

                    <span>Can create work</span>
                </div>
            </div>
        </div>
        <hr />
        <span>*:Obligatory
        </span>
        <button type="button" onclick="editproject()" class="btn btn-facebook">Edit Project</button>

    </div>

    <script>
         $('.multipleSelect').fastselect();
        function editproject() {
            location.href = "/project/project-list.aspx";
        }
    </script>

</asp:Content>

