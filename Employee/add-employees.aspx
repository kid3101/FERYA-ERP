<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-employees.aspx.cs" Inherits="Employee_AddEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/Attendance/History.css" rel="stylesheet" />
    <link href="../css/employee.css/addemployee.css" rel="stylesheet" />
    <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
    <link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" >
        <h1 class ="h3 mb-4 text-gray-800">Employee 
          <span> > </span>
            Add new
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
                            <input class="form-control" type="text" id="txtEmployeeCode">
                        </div>
                        <div class="col-xs-5">
                            <label>FirstName<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtFirstName">
                        </div>
                        <div class="col-xs-5">
                            <label>LastName<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtLastName">
                        </div>
                       
                        <div class="col-xs-5">
                            <label>Email<span class="star-sign">*</span></label>
                            <input id="txtEmail" class="form-control" type="text" placeholder="Email" >
                            <div class="email">Email must work. Password will be sent to this email address.</div>
                        </div>
                        <div class="col-xs-5">
                            <label>Address</label>
                            <input class="form-control" type="text" id="txtAddress">
                        </div>
                        <div class="col-xs-5">
                            <label>Phone</label>
                            <input class="form-control" type="text" id="txtPhone">
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
                            <input class="form-control" type="text" id="txtPosition">
                        </div>
                         <div class="col-xs-5">
                            <label>Manager<span class="star-sign">*</span></label>
                             <p></p>
                            <%--<input class="form-control" type="text" id="txtManagerId">--%>
                             <select id="txtManagerId" class="form-control" style="height: 38px;margin-top: -10px;width: 276px;">
                                <%for (int j = 0; j < listEmployee.Count; j++)
                                    { %>
                                <option value="<%=listEmployee[j].ManagerId %>"><%=listEmployee[j].LastName %></option>
                                <%} %>
                            </select>
                        </div>
                        <p></p>
                        <div class="col-xs-5">
                            <label>BasicSalary<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtBasicSalary">
                        </div>
                        <div class="col-xs-5">
                            <label>KPISalary<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtKPISalary">
                        </div>
                    </div>  
                </div>

        <div >

            <div class="col-sm-8" id="col-8" >
                <div >
                    <button type="button"  onclick="addnew()" class="btn btn-info"> Add</button>
                </div>
            </div>
        </div>
           

            </form>
        </div>

    <script>
        function addnew()
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
   
            $.post("/do/Employee/add-new-employee.aspx", {
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
                   alert("Success");
                    location.href = "/Employee/employee.aspx"; 
                } 
                else {
                   alert("Error", data);
                }
            });
        }

        
    </script>




</asp:Content>
