<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="browser-leave.aspx.cs" Inherits="Employee_browser_leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../css/Attendance/History.css" rel="stylesheet" />
    <link href="../css/employee.css/list-point-employee.css" rel="stylesheet" />
    <link href="../css/employee.css/employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <h1 class ="h3 mb-4 text-gray-800"> Please take leave</h1>


        <%--<ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                <ul class="dropdown-menu filterbarfull filterbar" style="top: 0px;transform: translate3d(0px, 26px, 0px);width: 354px;margin-top: 185px;">
                    <li>
                        <form class="ui form">
                            <table width="100%" cellpadding="10">
                                <tbody>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Key word</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <input type="text" name="keyword" value="" style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;">
                                            </div>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Employee</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>----</option>
                                                    <option>Employee 1</option>
                                                    <option>Employee 2</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Date created</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div>
                                                <input style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;" type="date" />

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a href="search-leave.aspx" style="color:white;text-decoration:none;">Search</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="text-align:center;padding-top: 17px;">
                                            <a href="#" style="text-decoration:none;">Closed</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </li>
                </ul>
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

        <div class="container-fluid" style="margin-top: -34px;margin-left: 380px;">
            <div class="container" style="float:left;">
                <a class="ls" style="margin-left: 15px;text-decoration:none;" href="#"><i class="fa fa-cog"></i> Setting</a>
                <a class="ls" style="margin-left: 15px;text-decoration:none;" title="Waiting for you to browse" href="browser-leave.aspx"><i class="fa fa-clock"></i> Wait for you to browse </a>
                
                <a class="btn btn-info"  href="add-leave.aspx" title="Create a new leave application"> <i class="fa fa-plus-circle"></i>CREATE A NEW LICENSE APPLICATION</a>
            </div>
            <div class="container" style="display: inline-flex;padding-left: 500px; padding-top: 20px;">
                <a href="#" class="chevron-left"><i class="fa fa-chevron-left"></i></a>
                <div class="page">
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
    <div class="table">
        <table class="tables">
            <thead>
                    <tr>
                        <th>
                            <a class="sortable" style="text-decoration:none; cursor: pointer; color:black;">SID</a>
                        </th>
                        <th></th>
                        <th class="clo">
                            EMPLOYEES
                        </th>
                        <th class="clo">
                            REASON
                        </th>
                        <th class="clo">TIME</th>
                        <th class="clo">ROUND 1</th>
                        <th class="clo">ROUND 2</th>
                        <th class="clo">ROUND 3</th>
                        <th class="clo">STATUS</th>
                        <th class="clo">
                            DATE CREATED
                        </th>
                        <th></th>
                    </tr>
                </thead>
            </table>
            <div style="color:black; margin-left:500px; margin-top:10px;">
                <i class="fa fa-exclamation-circle"></i>There are no applications!
            </div>
        </div>


</asp:Content>

