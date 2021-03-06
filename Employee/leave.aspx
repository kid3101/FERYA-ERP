﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="leave.aspx.cs" Inherits="Employee_leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/Attendance/History.css" rel="stylesheet" />
     <link href="../css/employee.css/employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" >
        <h1 class ="h3 mb-4 text-gray-800">
             Please take leave
        </h1>
        <%--<ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
                </a>
            </li>
            <li class="dropdown">
                <a  style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                
            </li>
        </ul>--%>
        <div class="col-sm-5" id="searchblog"> 
        <div class="search-container">
                <form action="#">
                    <input type="text" placeholder="Search.." name="search">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>

        <div class="container-fluid"  style="margin-top: -34px;margin-left: 380px;">
            <div class="container" style="float:left;">
                <a class="ls" style="margin-left: 15px;text-decoration:none;" href="#"><i class="fa fa-cog"></i> Setting</a>
                <a class="ls" style="margin-left: 15px;text-decoration:none;" title="Waiting for you to browse" href="browser-leave.aspx"><i class="fa fa-clock"></i> Wait for you to browse </a>
                
                <a class="btn btn-info"  href="add-leave.aspx" title="Create a new leave application"> <i class="fa fa-plus-circle"></i>CREATE A NEW LICENSE APPLICATION</a>
            </div>

            <div class="container" style="display: inline-flex;padding-left: 500px; padding-top: 20px;">
                <a href="#" class="chevron-left"><i class="fa fa-chevron-left"></i></a>
                <div style="margin-right: 6px;">
                    <a href="#" style="color:#555;text-decoration:none;">
                        <span>Page</span>
                        <span>0</span>
                        <span>/</span>
                        <span>0</span>
                    </a>
                </div>
                <a href="#" class="chevron-right"><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>
    </div>


        <div class="segment" style="display: block; min-height: 558px; margin-top:30px">
            <div class="zerodata" style="text-align:center">
                <div>
                    <div class="zerodataimage">
                        <img src="../img/Untitled.png"  width="240" height="240" />
                    </div>
                    <h3 style="color: darkgray; font-size:30px;">No application for leave yet.</h3>
                    <p style="color: darkgray;">Create your first leave application by pressing the button below.</p>
                     <div class="zerodatabutton" >
                        <a class="btn btn-facebook" href="add-leave.aspx" >
                            Add new
                        </a>
                    </div>
                </div>
            </div>
        </div>


</asp:Content>

