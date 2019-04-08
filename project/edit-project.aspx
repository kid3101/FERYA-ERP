<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="edit-project.aspx.cs" Inherits="project_edit_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
    <link href="../dist/fastselect.css" rel="stylesheet" />
    <script src="../dist/fastselect.js"></script>
    <link href="../dist/fastselect.min.css" rel="stylesheet" />
    <script src="../dist/fastselect.min.js"></script>
    <script src="../dist/fastselect.standalone.js"></script>
    <script src="../dist/fastselect.standalone.min.js"></script>
    <link href="../css/css-project/edit-project.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container-fluid">
      <div style="display:flex;">
          <h1 class="h3 mb-4 text-gray-800">System Architect > Edit</h1></div>
      <div class="row">
            <div class="col-sm-3">
                <div>
                    <div><b>Overview</b></div>

                </div>
            </div>
            <div class="col-sm-8">
                <br>
                <label>Name <i style="color:red">*</i></label>
                <div>
                    <input class="form-control" type="text">
                    <br>
                </div>

                <label>Description</label>
                <div>
                    <textarea style="width:700px" class="tinymce form-control " ></textarea>
                </div>
                 <label>Content</label>
                <div>
                    <textarea style="width:700px" class="tinymce form-control " ></textarea>
                </div>
                <br />
                <div class="col-sm" style="display: flex;margin-left:-22px;">
                    <div class="col-sm-6">
                        <label for="ex1">Start Day</label>

                        <div id="datepicker" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control" type="date">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                    </div>

                    <div class="col-sm-6">

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
          
            <br />


        </div>
        <hr />
        <div class="row">

            <div class="col-sm-3">

                <div>Manager Project </div>
                <br /><br />
                <br />
                <br /><br />
                <div>Company <i style="color:red">*</i></div>
            </div>

            <div class="col-sm-6">
                <div>
                    <div>Member</div>
                    <div>
                        <select id="10" style="height:8px" class="multipleSelect" multiple name="language">
                <option value="Bangladesh">Mr Peter</option>
                <option selected value="Barbados">Mr TomMy</option>
                <option selected value="Belarus">Mr Anh</option>
                <option value="Belgium">Belgium</option>
            </select>
                    </div>
                </div>
            </div>
           <%-- <div class="col-sm-3">
                <div class="flew" style=" margin-top:31px">
                    <label class="switch">
                        <input type="checkbox" checked>
                        <span class="slider round"></span>

                    </label>

                    <span>Can create work</span>
                </div>
            </div>--%>
        </div>
        <div class="row">

            <div class="col-sm-3">
            </div>
            <div class="col-sm-6">
                <div>
                    <div>Member</div>
                    <div>
                        <select style="height:8px" class="multipleSelect" multiple name="language">
                <option value="Bangladesh">FERYA</option>
                <option selected value="Barbados">GOOGLE</option>
                <option selected value="Belarus">AMAZON</option>
                <option value="Belgium">SAMSUNG</option>
            </select>
                    </div>
                </div>
            </div>
          <%--  <div class="col-sm-3">
                <div class="flew" style=" margin-top:31px" >
                    <label class="switch">
                        <input type="checkbox" checked>
                        <span class="slider round"></span>
                    </label>
                    <span>Can create work</span>
                </div>
            </div>--%>
        </div>
        <hr />
      
        <button type="button" onclick="editproject()" class="btn btn-info">Edit Project</button>

    </div>

    <script>
         $('.multipleSelect').fastselect();
        function createproject() {
            location.href = "/project/project-list.aspx";
        }

        function myfunction() {

        }
    </script>

</asp:Content>

