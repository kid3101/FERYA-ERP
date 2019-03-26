<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="create-project.aspx.cs" Inherits="project_CreateProject_CreateProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Create List</h1>
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
                <div class="col-sm" style="display: flex">
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
                    <div class="col-sm-4">

                        <label>Status </label>
                        <select class="form-control">
                            <option value="">New</option>
                            <option value="">Working</option>
                            <option value="">Finish</option>
                            <option value="">Close</option>
                        </select>
                    </div>
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
                <br />
                <div>Assign employees to the project</div>
            </div>

            <div class="col-sm-6">
                <div>
                    <div>Member</div>
                    <div>
                        <select class="form-control">
                            <option>nhanvien1</option>
                            <option>nhanvien2</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="flew">
                    <label class="switch">
                        <input type="checkbox" checked>
                        <span class="slider round"></span>

                    </label>

                    <span>Can you</span>
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
                        <select class="form-control">
                            <option>nhanvien1</option>
                            <option>nhanvien2</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="flew">
                    <label class="switch">
                        <input type="checkbox" checked>
                        <span class="slider round"></span>

                    </label>

                    <span>Can you</span>
                </div>
            </div>
        </div>
        <hr />
        <span>*:Obligatory
        </span>
        <button type="button" onclick="createproject()" class="btn btn-facebook">Create new Project</button>

    </div>

    <script>

        function createproject() {
            location.href = "/project/project-list.aspx";
        }
    </script>

</asp:Content>

