<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-employees.aspx.cs" Inherits="Employee_AddEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/addemployee.css" rel="stylesheet" />
     <link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <h3 class="title">Employees</h3>
    <ul class="nav nav-tabs" style="display:block; list-style-type:disc; ">
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">Add new</span>
                </a>
            </li>
        </ul>
    </div>

    <div class="segment">
            <form class="ui form">
                <div class="top" style="margin-top:10px;">
                    <div class="left" style="width:25%;">
                        <h2>Personal information </h2>
                        <p></p>
                    </div>
                    <div class="right">
                        <div class="col-xs-5">
                            <label>Name<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-xs-5">
                            <label>
                                Sex
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
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-xs-5">
                            <label>Tel</label>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                </div>
                <div class="center" style="border-top-style:outset; margin-top: 15px; ">
                    <div class="left" style="width:25%;">
                        <h4>Staff information</h4>
                        <p>Detailed employee information</p>
                    </div>
                    <div class="right">

                        <div class="col-xs-5">
                            <label>Office</label>
                            <select class="form-control"></select>
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
                            <label>Internal ID</label>
                            <a href="#" data-toggle="tooltip" title="If your company / group is running (or has) a system to manage all accounts, this field will store the user ID of your current system. (Allow A-Z, 0-9 characters). Example: E16217, CE40128 ..." style="text-decoration:none;"><i class="fa fa-exclamation-circle"></i></a>
                            <select class="form-control"></select>
                        </div>

                        <div class="col-xs-5">
                            <label>Position<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="form-control" type="text">
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
                <div class="bottom" style="border-top-style:outset; margin-top: 10px;">
                    <div class="Begin" style=" margin-top: 10px;">
                        <p class="requirebox">
                            <span>* : </span>
                            <span>
                                Obligatory
                            </span>
                        </p>
                    </div>
                    <div class="add" style=" margin-top: -35px">
                        <a href="detailt-employees.aspx" class="addnew" >
                            MORE
                        </a>
                    </div>
                </div>
            </form>
        </div>
</asp:Content>

