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
                            <label>Name<span class="star-sign">*</span></label>
                            <input class="form-control" type="text">
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
                            <label>Email<span class="star-sign">*</span></label>
                            <input class="form-control" type="text">
                            <div class="email">Email must work. Password will be sent to this email address.</div>
                        </div>
                        <div class="col-xs-5">
                            <label>Tel</label>
                            <input class="form-control" type="text">
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
                        </div>

                        <%--<div class="col-xs-4" >
                            <label>Internal ID<i class="fa fa-exclamation-circle" data-toggle="tooltip" title="If your company / group is running (or has) a system to manage all accounts, this field will store the user ID of your current system. (Allow A-Z, 0-9 characters). Example: E16217, CE40128 ..." ></i></label>
                            <br />  
                            <input  type="text">
                            <lable class="lab">@acb560</lable>
                        </div>--%>

                        <div class="col-xs-5">
                            <label>Position<span class="star-sign">*</span></label>
                            <input class="form-control" type="text">
                        </div>
                    </div>  
                </div>

        <div >

            <div class="col-sm-8" id="col-8" >
                <div >
                    <a href="update-employee.aspx" class="btn btn-info"> Add</a>
                </div>
            </div>
        </div>
           

            </form>
        </div>
</asp:Content>
