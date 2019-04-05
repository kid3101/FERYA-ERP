<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="edit-employee.aspx.cs" Inherits="Employee_edit_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/addemployee.css" rel="stylesheet" />
    <link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" >
        <h1 class ="h3 mb-4 text-gray-800">Employee 
          <span> > </span>
            Edit
        </h1>
    </div>

    <div class="segment">
            <form class="ui form">
                <div class="top" >
                    <div class="left">
                        <h4>Personal information </h4>
                        <p></p>
                    </div>
                    <div class="right">
                        <div class="col-xs-5">
                            <label>EmployeeCode<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtEmployeeCode" value="<%=editEmployee.EmployeeCode %>">
                        </div>
                        <div class="col-xs-5">
                            <label>FirstName<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtFirstName" value="<%=editEmployee.FirstName %>">
                        </div>
                        <div class="col-xs-5">
                            <label>LastName<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtLastName" value="<%=editEmployee.LastName %>">
                        </div>
                        <div class="col-xs-5">
                            <label>Email<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" placeholder="Email" id="txtEmail" value="<%=editEmployee.Email %>">
                            <div class="email">Email must work. Password will be sent to this email address.</div>
                        </div>
                        <div class="col-xs-5">
                            <label>Address</label>
                            <input class="form-control" type="text" id="txtAddress" value="<%=editEmployee.Address %>">
                        </div>
                        <div class="col-xs-5">
                            <label>Phone</label>
                            <input class="form-control" type="text" id="txtPhone" value="<%=editEmployee.Phone%>">
                        </div>
                    </div>
                </div>
                <div class="center" >
                    <div class="left" >
                        <h4>Staff information</h4>
                        <p>Detailed employee information</p>
                    </div>
                    <div class="right">

                        <div class="col-xs-5">
                            <label>Position<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtPosition" value="<%=editEmployee.Position %>">
                        </div>
                         <div class="col-xs-5">
                            <label>ManagerId<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtManagerId" value="<%=editEmployee.ManagerId %>">
                        </div>
                        <div class="col-xs-5">
                            <label>BasicSalary<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtBasicSalary" value="<%=editEmployee.BasicSalary %>">
                        </div>
                        <div class="col-xs-5">
                            <label>KPISalary<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtKPISalary" value="<%=editEmployee.KPISalary %>">
                        </div>
                    </div>  
                </div>
            </form>
        <button type="button" class="btn btn-info" onclick="editem(<%=editEmployee.EmployeeId%>)">Edit</button>
        </div>

    <script>
        function editem(id)
        {
           var code = $("#txtEmployeeCode").val();
            var first = $("#txtFirstName").val();
            var last = $("#txtLastName").val();
            var email = $("#txtEmail").val();
            var address = $("#txtAddress").val();
            var phone = $("#txtPhone").val();
            var position = $("#txtPosition").val();
            var manager = $("#txtManagerId").val();
            var basic = $("#txtBasicSalary").val();
             var kpi = $("#txtKPISalary").val();

            $.post('/do/Employee/edit-employee.aspx', {
            id: id,
            code: code,
            first: first,
            last: last,
            email: email,
            address: address,
            phone: phone,
            position: position,
            manager: manager,
            basic: basic,
            kpi: kpi
            }, function (data) {
                if (data == 1) {
                    alertify.alert("Success");
                    location.href = "/Employee/employee.aspx";
                }
                else {
                    alertify.alert("Error", data)
                }
            });
        }
    </script>




</asp:Content>