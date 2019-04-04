<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-point-employee.aspx.cs" Inherits="Employee_list_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../css/Attendance/History.css" rel="stylesheet" />
     <link href="../css/Attendance/Payroll.css" rel="stylesheet" />
    <link href="../css/employee.css/list-point-employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <h1 class ="h3 mb-4 text-gray-800">Employee grading history</h1>

        <%--<ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">1</span>
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
                                                <span style="margin-right:10px;">Status</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="border-radius: 7px;">
                                                    <option>All</option>
                                                    <option>Effective</option>
                                                    <option>Disabled</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
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
                                                <span style="margin-right:10px;">Headquarters</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>All</option>
                                                    <option>Main office</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Criteria</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>All</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                         <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Creator</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>Employee</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Date</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div>
                                                <input style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;" />

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a href="search-point-employee.aspx" style="color:white;text-decoration:none;">Search</a></button>
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
                <a class="ls" style="margin-left: 15px;text-decoration:none;" href="#"><i class="fa fa-cog"></i> Setting criteria</a>
                <a class="ls" style="margin-left: 15px;text-decoration:none;" data-toggle="modal" data-target="#myModal"><i class="fa fa-download"></i>Export Excel</a>
                <a class="ls" style="margin-left: 15px;text-decoration:none;" href="synthetic-point-employee.aspx"  ><i class="fas fa-chart-pie"></i> Synthetic by employess</a>
                
                <a class="btn btn-info"  href="add-point-employee.aspx" title="Add new"><i class="fa fa-plus-circle"></i> ADD THE REVIEW</a>
            </div>
<%--            <div class="container" style="display: inline-flex;padding-left: 500px; padding-top: 20px;">
                <a href="#" style="height: 20px;width: 20px;color: #555;"><i class="fa fa-chevron-left"></i></a>
                <div style="margin-right: 6px;">
                    <a href="#" style="color:#555;text-decoration:none;">
                        <span>Page</span>
                        <span>1</span>
                        <span>/</span>
                        <span>1</span>
                    </a>
                </div>
                <a href="#" style="height: 48px;width: 48px;color: #555;"><i class="fa fa-chevron-right"></i></a>
            </div>--%>
        </div>
       
    </div>
    <br />
    <br />
    <br />
    <br />
            <div class="col-md-12">
                <div>
                    <table class="table table-bordered" id="dataTable" >
                        <thead>
                    <tr>
                        <th>Id</th>
                        <th>Employees</th>
                        <th>Headquarters</th>
                        <th>Criteria</th>
                        <th>Type Of Criteria</th>
                        <th>Point</th>
                        <th>Status</th>
                        <th>Creator</th>
                        <th>Date Created</th>
                        <th>Action</th>
                    </tr>
                    <tr>
                        <td>
                            <a href="detailt-point-employee.aspx">470707</a>
                        </td>
                        <td> a </td>
                        <td>dsd</td>
                        <td>sas</td>
                        <td>Good</td>
                        <td>10</td>
                        <td> <label style="background-color:#93ef93;">Effective</label></td>
                        <td> Thong Huyen Trang</td>
                        <td>14:06, Today</td>
                        <td>
                            <a href=" update-point-employee.aspx" title="Edit"><i class="fas fa-pen"></i></a>
                            <button type="button" style="border:none;background-color:floralwhite"  onclick="del()" title="Delete"><i class="fas fa-trash-alt" style="color:red"></i></button>

                        </td>
                    </tr>
                </thead>
            </table>
        </div>
        </div>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <div class="modal-content">
                <div class="modal-header">

                    <h4 class="modal-title" style="color:black;"><b>Export Excel</b></h4>
                </div>
                <div class="modal-body">
                    <div>
                        <label style="color:black;">
                            Headquarters
                        </label>
                        <select class="form-control">
                            <option>All</option>
                            <option></option>
                        </select>
                    </div>
                    <div>
                        <label style="color:black;">
                            Employees
                        </label>
                        <select class="form-control">
                            <option>-----</option>
                            <option></option>
                        </select>
                    </div>
                    <div>
                        <label style="color:black;">Date created</label>
                        <br />
                        <input type="date"/>                                            

                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                    <button type="submit" class="nutchamcong2" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="File.html" style="color:white;text-decoration:none;">Download the Excel file</a></button>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

