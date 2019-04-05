<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditDepartment.aspx.cs" Inherits="Setting_EditDepartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
           <h1 class="h3 mb-4 text-gray-800">Setting  > Update Departments</h1>
                <div>
                    <form>
                        <div>
                            <label style="float:left;">Name</label>
                            <span class="mau">*</span>
                            <input id="txtName" class="form-control" value="<%=editdepartment.DeparmentName %>">
                        </div>
                        <div>
                            <label >Office</label>
                            <select class="officee form-control" id="selectList3">
                                <%for (int j = 0; j < listOffice.Count; j++)
                                { %>
                                    <option value="<%=listOffice[j].OfficeId %>"><%=listOffice[j].OfficeName %></option>
                                <%} %>
                            </select>
                        </div>
                        <div>
                            <label>Company</label>
                            <select class="officee form-control" id="selectList4">
                                <%for (int i = 0; i < listCompany.Count; i++)
                                { %>
                                    <option value="<%=listCompany[i].CompanyId %>"><%=listCompany[i].CompanyName %></option>
                                <%} %>
                            </select>
                        </div>
                        <div>
                            <label>Manager</label>
                            <select class="officee form-control" id="selectList5">
                                <%for (int k = 0; k < listEmployees.Count; k++)
                                { %>
                                    <option value="<%=listEmployees[k].ManagerId %>"><%=listEmployees[k].LastName %></option>
                                <%} %>
                            </select>
                        </div>
                    </form>
                </div>
                <div style="text-align:center;margin-top: 40px;">
                    <button type="button" class="btn btn-facebook addd" onclick="edit(<%=editdepartment.DepartmentId%>)">Update</button>
                </div>
            </div>

    <script>
        function edit(id)
        {
            var name = $("#txtName").val();
           var office = $("#selectList3").val();
            var company = $("#selectList4").val();
            var manager = $("#selectList5").val();
            $.post('/do/Setting/edit-department.aspx', {
                id:id,
                name: name,
                office: office,
                company: company,
                manager: manager

            }, function (data) {
                    if (data == 1) {
                        alert("Successful update!");
                        location.href = "/Setting/Derpartment.aspx";
                    }
                    else {
                        alert("Error", data)
                    }
                });


        }
    </script>
</asp:Content>

