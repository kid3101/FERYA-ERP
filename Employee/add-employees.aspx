﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-employees.aspx.cs" Inherits="Employee_AddEmployees" %>

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
                        <%--<div class="col-xs-5">
                            <label>
                                Gender
                            </label>
                            <select class="form-control">
                                <option>Woman</option>
                                <option>
                                    Male
                                </option>
                            </select>
                        </div>--%>
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

                        <%--<div class="col-xs-5">
                            <label>Office</label>
                            <select class="form-control">
                                <option>Office 1</option>
                                <option>Office 2</option>
                                <option>Office 3</option>
                            </select>
                        </div>

                        <div class="col-xs-5">
                            <label>Type of work</label>
                            <select class="form-control">
                                <option>
                                    Official staff
                                </option>
                                <option>
                                    Part-time
                                </option>
                                <option>Probation</option>
                                <option>Extra work</option>
                                <option>Part-time employee</option>
                                <option>Project</option>
                            </select>
                        </div>

                        <div class="col-xs-5" >
                            <label>Department</label>
                            <select class="form-control">
                                <option>Hoa Su</option>
                                <option>Hoa Lan</option>
                                <option>Hoa Hong</option>
                            </select>
                        </div>

                        <div class="col-xs-5" >
                            <label>Rank</label>
                            <select class="form-control">
                                <option>New graduate / Internship</option>
                                <option>Employee</option>
                                <option>Team Leader / Supervisor</option>
                                <option>Deputy</option>
                                <option>Shop management assistant</option>
                                <option>Manager</option>
                            </select>
                        </div>--%>

                        <%--<div class="col-xs-4" >
                            <label>Internal ID<i class="fa fa-exclamation-circle" data-toggle="tooltip" title="If your company / group is running (or has) a system to manage all accounts, this field will store the user ID of your current system. (Allow A-Z, 0-9 characters). Example: E16217, CE40128 ..." ></i></label>
                            <br />  
                            <input  type="text">
                            <lable class="lab">@acb560</lable>
                        </div>--%>

                        <div class="col-xs-5">
                            <label>Position<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtPosition">
                        </div>
                         <div class="col-xs-5">
                            <label>ManagerId<span class="star-sign">*</span></label>
                            <input class="form-control" type="text" id="txtManagerId">
                        </div>
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
                if (data == -1) {
                    alert("Error", data);
                } 
                else {
                    alert("Success");
                    location.href = "/Employee/employee.aspx"; 
                }
            });
        }       
    </script>
</asp:Content>
