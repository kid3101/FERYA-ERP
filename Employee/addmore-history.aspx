<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addmore-history.aspx.cs" Inherits="Employee_addmore_history" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/Attendance/SearchKeepingHistory.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <div style="line-height: 1;display: inline-block;margin-left: 40px;vertical-align: middle;">
            <a class="abc tab-content" style="text-decoration:none;" href="#"><span><h2 style="cursor:pointer;">Employee grading history</h2></span></a>
        </div>
        <ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
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
        </ul>
        <div class="container-fluid" style="margin-top: -34px;margin-left: 380px;">
            <div class="container" style="float:left;">
                <a class="ls" style="margin-left: 15px;text-decoration:none;" href="#"><i class="fa fa-cog"></i> Setting criteria</a>
                <a class="ls" style="margin-left: 15px;text-decoration:none;" data-toggle="modal" data-target="#myModal"><i class="fa fa-download"></i>Export Excel</a>
                <a class="ls" style="margin-left: 15px;text-decoration:none;" href="synthetic-point-employee.aspx"  ><i class="fas fa-chart-pie"></i> Synthetic by employess</a>
                
                <a class="nutchamcong"  href="add-point-employee.aspx" title="Add new" style="color:white;margin-left: 15px;padding-left: 20px;padding-right: 20px;text-decoration:none;"><i class="fa fa-plus-circle"></i> ADD THE REVIEW</a>
            </div>
            <div class="container" style="display: inline-flex;padding-left: 500px; padding-top: 20px;">
                <a href="#" style="height: 20px;width: 20px;color: #555;"><i class="fa fa-chevron-left"></i></a>
                <div style="margin-right: 6px;">
                    <a href="#" style="color:#555;text-decoration:none;">
                        <span>Page</span>
                        <span>0</span>
                        <span>/</span>
                        <span>0</span>
                    </a>
                </div>
                <a href="#" style="height: 48px;width: 48px;color: #555;"><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>
    </div>
    <div style="margin-top: 20px;margin-left: 6px;">
        <span class="aa">
            <span>
                <span>Employee:</span>
                <strong>Thong Huyen Trang</strong>
            </span>
            <span class="closee">
                <a href="list-point-employee.aspx" class="closee"><i class="fa fa-times" title="Remove this condition"></i></a>
            </span>
        </span>
    </div>
        <div class="table">
            <table id="employeetable" style="margin:0;" class="table">
                <thead>
                    <tr>
                        <th class="clo">SID</th>
                        <th class="clo">EMPLOYEES</th>
                        <th class="clo">HEADQUARTERS</th>
                        <th class="clo">CRITERIA</th>
                        <th class="clo">TYPE OF CRITERIA</th>
                        <th class="clo">POINT</th>
                        <th class="clo">STATUS</th>
                        <th class="clo">CREATOR</th>
                        <th class="clo">DATE CREATED</th>
                        <th></th>
                    </tr>
                    
                </thead>
            </table>
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
                    <a class="btn btn-default" data-dismiss="modal">Close</a>
                    <a class="btn bg-teal-active" style="margin-left:10px; text-decoration:none;">Download the excel file</a>
                </div>
            </div>

        </div>
    </div>
    </asp:Content>