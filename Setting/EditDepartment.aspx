<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditDepartment.aspx.cs" Inherits="Setting_EditDepartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="modal fade" id="myModal2" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    
                    <h2 class="modal-title kk">Update departments</h2>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label style="float:left;">Name</label>
                            <span class="mau">*</span>
                            <input id="txtName" class="form-control" value="Department 1">
                        </div>
                        <div class="form-group">
                            <label >Office</label>
                            <select class="officee" id="selectList3">
                                <%for (int j = 0; j < listOffice.Count; j++)
                                { %>
                                    <option value="<%=listOffice[j].OfficeId %>"><%=listOffice[j].OfficeName %></option>
                                <%} %>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Company</label>
                            <select class="officee" id="selectList4">
                                <%for (int j = 0; j < listCompany.Count; j++)
                                { %>
                                    <option value="<%=listCompany[j].CompanyId %>"><%=listCompany[j].CompanyName %></option>
                                <%} %>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Manager</label>
                            <select class="officee" id="selectList5">
                                <%for (int j = 0; j < listEmployees.Count; j++)
                                { %>
                                    <option value="<%=listEmployees[j].ManagerId %>"><%=listEmployees[j].LastName %></option>
                                <%} %>
                            </select>
                        </div>
                    </form>
                </div>
                <div style="text-align:center;">
                    <button type="submit" class="btn btn-facebook addd" ><a href="Derpartment.aspx" class="hv">Update</a></button>
                </div>
            </div>

        </div>
    </div>
    </div>
    <script>
        function edit(id)
        {
            var name = $("#txtName").val();
           var office = $("#selectList3").val();
            var company = $("#selectList4").val();
            var manager = $("#selectList5").val();
            $.post('/do/Setting/edit-office.aspx', {
                id:id,
                name: name,
                address: address,
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

