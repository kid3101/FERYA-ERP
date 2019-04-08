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
                   <input id="txtName"value="<%=project.ProjectTitle%>" class="form-control" type="text">
                    <br>
                </div>

                <label>Description</label>
                <div>
                    <textarea id="txtDesc" style="width: 700px" class="tinymce form-control "><%=project.ProjectDesc%></textarea>
                </div>
                 <label>Content</label>
                <div>
                    <textarea id="txtContent" style="width: 700px"  class="tinymce form-control "><%=project.ProjectContent%></textarea>
                </div>
                <br />
                <div class="col-sm" style="display: flex;margin-left:-22px;">
                    <div class="col-sm-6">
                        <label for="ex1">Start Day</label>

                        <div id="datepicker" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input  id="txtStartDay"value="<%=project.StartTime%>" class="form-control" onfocus="(this.type='date')" onblur="if(!this.value).this.type='text'" >
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                    </div>

                    <div class="col-sm-6">

                        <label for="ex2">Finish Day</label>
                        <div id="datepicker1" class="input-group date" data-date-format="dd-mm-yyyy">
                           <input  id="txtFinishDay"value="<%=project.FinishTime%>"class="form-control" onfocus="(this.type='date')" onblur="if(!this.value).this.type='text'" >
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

        function editproject() {
               
          
            var name = $("#txtName").val();
            var desc = tinymce.get("txtDesc").getContent();
          var content = tinymce.get("txtContent").getContent();
           var startday = $("#txtStartDay").val();
          var finish = $("#txtFinishDay").val();
           var manager = $("#txtManager").val();
            var company = $("#txtComPaNy").val();
           

        function myfunction() {
           
            $.post("/do/Project/edit-project.aspx", {
                 id: <%=editproject.ProjectId%>,
                idmanager: idmanager,
                name: name,
                desc: desc,
                content: content,
                startday: startday,
                finish: finish,
                manager: manager,
                company: company,
               
            }, function (data) {
                if (data == 1) {
                    alert("Success");
                    location.href = "/project/project-list.aspx";
                }
                else {
                   alert("Error", data);
                    
                }
            }
            );

        }

    </script>

</asp:Content>

