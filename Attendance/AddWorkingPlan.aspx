<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddWorkingPlan.aspx.cs" Inherits="Attendance_AddWorkingPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/Attendance/History.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
    <h1 class="h3 mb-4 text-gray-800">History  > Working plan > Add new</h1>
        <form>
            <div>
                <label for="pwd">Task</label>
                <select id="selectTask" class="form-control" >
                    <%for (int i = 0; i < listTask.Count; i++)
                        { %>
                    <option value="<%=listTask[i].TaskId %>"><%=listTask[i].TaskName %></option>
                    <%} %>
                </select>
            </div>
            <div class="m">
                <label for="pwd">Employee</label>
                <select id="selectEmployee" class="form-control" >
                    <%for (int i = 0; i < listEmployee.Count; i++)
                        { %>
                    <option value="<%=listEmployee[i].EmployeeId %>"><%=listEmployee[i].LastName %></option>
                    <%} %>
                </select>
            </div>
            <div class="m">
                <label for="pwd">Note</label>
                <textarea id="txtNote" class="form-control"></textarea>
            </div>
            <div class="g m">
                <button type="button" class="btn btn-info" onclick="addnew()">Add working plan</button>
            </div>
        </form>
    </div>
    <script>
        function addnew()
        {
            var task = $("#selectTask").val();
            var employee = $("#selectEmployee").val();
            var note = $("#txtNote").val();
            
            $.post ("/do/Attendance/add-new-workingplan.aspx", {
                task: task,
                employee: employee,
                note: note
             
            }, function (data) {
                if (data == 1) {
                    alert("Create new success!");
                    location.href = "/Attendance/WorkingPlan.aspx";
                }
                else {
                    alert("Error", data);
                }
            });
            }
    </script>
</asp:Content>

