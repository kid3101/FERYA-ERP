<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-work.aspx.cs" Inherits="project_add_work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

     <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
    <link href="../dist/fastselect.css" rel="stylesheet" />
    <script src="../dist/fastselect.js"></script>
    <link href="../dist/fastselect.min.css" rel="stylesheet" />
    <script src="../dist/fastselect.min.js"></script>
    <script src="../dist/fastselect.standalone.js"></script>
    <script src="../dist/fastselect.standalone.min.js"></script>
    <link href="../css/css-project/add-work.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
        <div style="display:flex;">
            <h1 class="h3 mb-4 text-gray-800">System Architect > Add Work</h1></div>
        <div style="float: right">
         <%--   <a href="#" data-toggle="modal" data-target="#myModal" style="color: black;"><i class="fas fa-cog"></i><span>Setting</span></a>
            <a href="#" style="color: black"><i class="far fa-edit"></i><span>Manager Post</span></a>--%>
        </div>
        <br />
        <div class="row">

            <div class="col-md-8" style="border-right-style: inset">
                <div class="row">
                    <div class="col-md-8">
                        <label>Name project</label>
                    <select class="officee form-control" id="txtNameProject">
                        <%for (int j = 0; j < listProject.Count; j++)
                    { %>
                        <option value="<%=listProject[j].ProjectId %>"><%=listProject[j].ProjectTitle %></option>
                    <%} %>            
                    </select>
                   
                    </div>

                    <div class="col-md-3">
                        Name task
                        <input id="txtNameTask" type="text" class="form-control" />
                    </div>
                    <div class="col-md-8">
                    </div>
                    <div class="col-md-8">
                     </div>
                    <div  class="col-md-8">
                 </div>
                </div>
                <div>
                    Content
                    <div>
                        <textarea id="txtDesc" class="tinymce required"></textarea>
                    </div>
                </div>
                <%--File Attach
                <input type="file" class="form-check" />
                <br />--%>

            </div>
            <div class="col-md-4">
            <div>
                </div>
                <div>
                    Start day
                        <input id="txtStartDay" type="date" class="form-control" />
                </div>
                <div>
                    Finish day
                        <input id="txtFinishDay" type="date" class="form-control" />
                </div>
                <div>
                    End day
                        <input id="txtEndDay" type="date" class="form-control" />
                </div>
                <div>
                    <label>Manager</label>
                    <select class="form-control" id="selectListManager">
                        <%for (int i = 0; i < listEmployees.Count; i++)
                    { %>
                        <option value="<%=listEmployees[i].ManagerId %>"><%=listEmployees[i].LastName %></option>
                    <%} %>            
                    </select>
                </div>
             </div>

            <div class="col-md-8">
            </div>
         

        </div>
        <div style="color:white;"> 0</div>
        <div>
           <button type="button" onclick="addnew()" class="btn btn-info">Add new</button>
    </div>
        </div>
<script>
         $('.multipleSelect').fastselect();
    function addwork1() {
        location.href = "/project/list-work.aspx";
    }

    function addnew()
        {
            var project = $("#txtNameProject").val();
            var task = $("#txtNameTask").val();
            var content = tinymce.get("txtDesc").getContent();
            var start = $("#txtStartDay").val();
            var finish = $("#txtFinishDay").val();
            var end = $("#txtEndDay").val();
            //var employee = $("#selectListManager").val();
   
            $.post ("../do/Project/add-new-task.aspx", {
                project: project,
                task: task,
                content: content,
                start: start,
                finish: finish,
                end: end
                //employee:employee
             
            }, function (data) {
                if (data == 1) {
                    alert("Create new success!");
                    location.href = "/project/list-work.aspx";
                }
                else {
                    alert("Error", data);
                }
            });
        }
</script>

</asp:Content>

