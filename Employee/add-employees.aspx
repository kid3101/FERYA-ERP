<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-employees.aspx.cs" Inherits="Employee_AddEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../css/Attendance/History.css" rel="stylesheet" />
    <link href="../css/employee.css/addemployee.css" rel="stylesheet" />
    <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
    <link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" >
        <div style="line-height: 1;display: inline-block;margin-left: 40px;vertical-align: middle;">
            <a class="abc tab-content" style="text-decoration:none;" href="#"><span><h2 style="cursor:pointer;"> Employee</h2></span></a>
        </div>
        <ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">Add new</span>
                </a>
            </li>
        </ul>
    </div>

    <div class="segment">
            <form class="ui form">
                <div class="top" style="margin-top:10px;">
                    <div class="left" style="width:30%;">
                        <h4>Personal information </h4>
                        <p></p>
                    </div>
                    <div class="right">
                        <div class="col-xs-5">
                            <label>Name<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="form-control" type="text" id="txtName">

                        </div>
                        <div class="col-xs-5">
                            <label>
                                Gender
                            </label>
                            <select class="form-control">
                                <option>Woman</option>
                                <option>
                                    Male
                                </option>
                            </select>
                        </div>
                        <div class="col-xs-5">
                            <label>Email<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="form-control" type="text" id="txtEmail">
                        </div>
                        <div class="col-xs-5">
                            <label>Phone</label>
                            <input class="form-control" type="text" id="txtPhone">
                        </div>
                    </div>
                </div>
                <div class="center" style="border-top-style:outset; margin-top: 15px; ">
                    <div class="left" style="width:30%;">
                        <h4>Staff information</h4>
                        <p>Detailed employee information</p>
                    </div>
                    <div class="right">

                        <div class="col-xs-5">
                            <label>Office</label>
                            <select class="form-control">
                                <option></option>
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
                            <select class="form-control"></select>
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
                        </div>

                        <div class="col-xs-5" >
                            <label>Internal ID<i class="fa fa-exclamation-circle" data-toggle="tooltip" title="If your company / group is running (or has) a system to manage all accounts, this field will store the user ID of your current system. (Allow A-Z, 0-9 characters). Example: E16217, CE40128 ..." ></i></label>
                            <div class="ui right labeled input">
                                <input name="internalid" type="text" value="" >
                                <lable style="background-color: gray; padding: 3px 1px; color: white;">@acb560</lable>
                            </div>
                        </div>

                        <div class="col-xs-5">
                            <label>Position<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="form-control" type="text" id="txtPosition">
                        </div>

                        <div class="col-xs-5" >
                            <label>Unlimited IP timekeeping</label><br />
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </div>
                    </div>  
                </div>

                  <div style="background-color:#eee;width:100%;height:80px;">
            <div class="col-sm-4 sidenav" style="margin-top:20px;">
                <span>*: Obligatory</span>
            </div>

            <div class="col-sm-8" style="text-align:center;">
                <div style="margin-top:-13px;">
                    <a href="update-employee.aspx" class="addnew" style="width: 30%;border: none;" onclick="addnew()"> MORE</a>
                </div>
            </div>
        </div>
           

            </form>
        </div>

    <script> function addnew()
        {
            var name = $("#txtName").val();
            var email = $("#txtEmail").val();
            var phone = $("#txtPhone").val();
   
            $.post ("/do/add-employee.aspx", {
                name: name,
                email: email,
                phone: phone,   
             
            }, function (data) {
                if (data == 1) {
                    alertify.alert("Success");
                    location.href = "employee.aspx";
                }
                else {
                    alertify.alert("Error", data);
                }
            });
            }
           
    </script>


</asp:Content>

