<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="employee.aspx.cs" Inherits="NhanVien_Employees" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
<link href="../css/Attendance/History.css" rel="stylesheet" />
<link href="../css/employee.css/list-point-employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <div style="line-height: 1;display: inline-block;margin-left: 40px;vertical-align: middle;">
            <a class="abc tab-content" style="text-decoration:none;" href="#"><span><h2 style="cursor:pointer;">Employee</h2></span></a>
        </div>
        <ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">1</span>
                </a>
            </li>
            <li class="dropdown" style="box-shadow: inset 0 2px 3px #ccc; border-radius: 4px 4px 0 0; background: #ddd;">
                <a class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                <ul class="dropdown-menu filterbarfull filterbar" style="top: 0px;transform: translate3d(0px, 26px, 0px);width: 354px;margin-top: 185px; left:0px">
                    <li>
                        <form class="ui form">
                            <table width="100%" cellpadding="3">
                                <tbody>
                                    <tr>
                                        <td>
                                            <label style="font-size:17px">
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
                                            <label style="font-size:17px">
                                                <span style="margin-right:10px;">Office</span>
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
                                            <label style="font-size:17px">
                                                <span style="margin-right:10px;">Department</span>
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
                                            <label style="font-size:17px">
                                                <span style="margin-right:10px;">Status</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
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
                                            <label style="font-size:17px">
                                                <span style="margin-right:10px;">Rank</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>All</option>
                                                    <option>New graduate / Internship</option>
                                                    <option>Employees</option>
                                                    <option>Team Leader / Supervisor</option>
                                                    <option>deputy</option>
                                                    <option>Shop management assistant</option>
                                                    <option>Manager</option>
                                                    <option>Store manager</option>
                                                    <option>Vice president</option>
                                                    <option>Manager</option>
                                                    <option>Managing director</option>
                                                    <option>Vice president</option>
                                                    <option>Chairman</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <label style="font-size:17px">
                                                <span >Type of work</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>All</option>
                                                    <option>Official staff</option>
                                                    <option>Part-time</option>
                                                    <option>Probation</option>
                                                    <option>Extra work</option>
                                                    <option>Part-time employee</option>
                                                    <option>Project</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a href="search-employee.aspx" style="color:white;text-decoration:none;">Search</a></button>
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
        <div class="container-fluid" style="margin-top: -34px;margin-left: 450px;">
            <div class="container" style="float:left; margin-left:250px">

                <div class="dropdown" style="position: relative;display: inline-block;">

                    <a class="ls dropdown-toggle" title="For management"  data-toggle="dropdown"><i class="fas fa-cloud-upload-alt"></i> Import</a>

                    <ul class="dropdown-menu " role="menu" aria-labelledby="menu1" style="width: 200px;">
                        <li  role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="import-list.aspx" style="color: black;text-decoration:none;"><i class="fas fa-cloud-upload-alt"></i> Import employee list</a></li>
                        <li role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="import-vitae.aspx" style="color: black;text-decoration:none;"<i class="fas fa-cloud-upload-alt"></i> Import curriculum vitae</a></li>
                        <li role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="import-transfer.aspx" style="color: black;text-decoration:none;"><i class="fas fa-cloud-upload-alt"></i> Import work transfer</a></li>
                    </ul>
                </div>

               
                <a class="nutchamcong"  href="add-employees.aspx" title="Create a new leave application" style="color:white;margin-left: 15px;padding-left: 20px;padding-right: 20px;text-decoration:none;" > <i class="fas fa-plus-square"></i> ADD NEW STAFF</a>
            </div>
            <div class="container" style="display: inline-flex;padding-left: 500px; padding-top: 20px;">
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
            </div>
        </div>
        <br>
    </div>

        <div class="table">
            <table id="employeetable" style="margin:0;" class="table">
                <thead>
                    <tr>
                        <th style="width:5px">
                           <%-- <input type="checkbox" />--%>

                            <a <%--class="sortable" style="text-decoration:none; cursor: pointer;color:black;"--%> style="width:5px">SID</a>
                        </th>
                        <th style="width:5px"></th>
                        <th style="width:20px" class="clo">NAME</th>
                        <th style="width:20px" class="clo">OFFICE</th>
                        <th style="width:10px" class="clo">RANK</th>
                        <th style="width:25px" class="clo">TYPE</th>
                        <th style="width:20px" class="clo">EMAIL</th>
                        <th style="width:25px" class="clo">INTERNAL</th>
                        <th style="width:20px" class="clo">STATUS</th>
                        <th style="width:20px" class="clo">CREATOR</th>
                        <th style="width:25px" class="clo">CREATED</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                         
                        <td>
                            <%--<input type="checkbox" />--%>

                            <a class="sortable" style="text-decoration:none; cursor: pointer;color:black;">1</a>
                        </td>
                        <td>
                            <img style="width:35px;height:35px;" src="https://api.teamcrop.com/v1/photoavatar/a/5c53f5/7a013/40.jpg">
                        </td>
                        <td>
                            <a href="#employee/detail/18169" data-toggle="tooltip" title="View details" style="text-decoration:none">my</a>
                            <br />
                            <span>Employees @</span>
                        </td>
                        <td> </td>
                        <td> Employees </td>
                        <td>Official staff</td>
                        <td>
                            <span>u@gmail.com</span>
                            <br />
                            <span>345678</span>
                        </td>
                        <td>7</td>
                        <td> <label style="background-color:#93ef93;">Effective</label></td>
                        <td> Thong Huyen Trang</td>
                        <td>14:06, Today</td>
                        <td style="width:5px">
                            <a href="edit-employee.aspx" class="edit" title="Click here to update data"><i style="width: 25px" class="fas fa-pen"></i></a>
                        </td>
                        <td style="width:5px" >
                            <a href="#" ><i style="width: 25px" class="fas fa-trash-alt"></i></a>                                                                                                                                                                                                                                                                                                                    
                        </td>
                       
                    </tr>
                </thead>
            </table>
            <div class="bottom" style="margin-top:10px;margin-left:10px">
             
                    <tr>
                        
                        <th style=" margin-top:30px; ">
                          
                                <span>&nbsp;</span>
                                <span>0</span>
                                <span>&nbsp;</span>
                                <span>element</span>
                            <select style="height:30px;margin-right:5px;" class="selection ">
                                <option value="">
                                    --Choose action--
                                </option>
                                <option value="1">
                                    Effective
                                </option>
                                <option value="3">
                                    Disabled
                                </option>
                                <option value="5">Deletes</option>
                            </select>
                            <span>
                                <button type="button" class="btn btn-primary">
                                    Perform
                                </button>
                            </span>
                        </th>
                        <th class="right">
                            <div style="text-align:right;margin-top:-30px;">
                                <button class="btn blue" data-toggle="modal" data-target="#myModal">
                                    <i class="fa fa-download"></i>
                                    <span>
                                        Export data
                                    </span>
                                    <span>
                                        <span> (</span><span>1</span><span> </span><span>current</span><span>)</span>
                                    </span>
                                </button>
                                <div class="modal fade" id="myModal" role="dialog">
                                    <div class="modal-dialog">

                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" style="text-align:center">You want to export 1 lines from the system.</h4>
                                            </div>
                                            <div class="modal-footer">
                                                <a class="btn btn-default" data-dismiss="modal">Close</a>
                                                <a class="btn bg-teal-active" style="margin-left:10px; text-decoration:none; color:white;background-color:#0094ff">Download</a>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </th>
                    </tr>
            </div>
        </div>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });

    </script>
</asp:Content>


