<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="employee.aspx.cs" Inherits="NhanVien_Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
      <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:25%; color:black">
              <h2>Employee</h2>
          </div>
          <div class="righted" style="margin-top: 12px;width: 100%;">
              <div class="icon" style="text-align: right; margin-bottom:10px">
                  <div class="imported" style="margin-right: 200px;">
                      <i class="fas fa-cloud-upload-alt"></i> Import
                  </div>
                  <div class="added" style=" margin-top: -35px;">
                    <a class="btn asc" style="margin-left:100px;" href="add-employees.aspx">
                      <i class="fas fa-plus-square"></i> ADD NEW STAFF
                    </a>
                  </div>
              </div>
              <div class="paged" style="display: inline-flex; margin-left: 750px;cursor: pointer;">
                    <a href="#" style="height:20px; width:20px; color:#555;">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <div style="margin-left:7px;">
                        <a style="display:block; text-decoration: none; color:#555; ">
                            <span>Page</span>
                            <span>0</span>
                            <span class="total">
                                <span>/</span>
                                <span>0</span>
                            </span>
                        </a>
                    </div>
                    <a href="#" style="height:15px; color:#555; margin-left: 20px;">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>
          </div>
      </div>
      <div class="container">
          <ul class="nav nav-tabs">
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
                </a>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" style="" title="Turn on / off the search function">Filter & search ...</a>
              <ul class="dropdown-menu filterbarfull filterbar" style="position: absolute; will-change: transform; margin-top:190px">
                    <li>
                        <form class="ui form">
                            <table width="100%" >
                                <tbody>

                                    <tr>
                                        <td>
                                            <span style="margin-right:10px;">Key word</span>
                                        </td>
                                        <td>
                                            <div>
                                                <input style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;" />

                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px">Office</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text">
                                                <select class="form-control"style="width: 100%;border-radius: 5px;">
                                                    <option>All</option>
                                                    <option>Main office</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Department</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text">
                                                <select class="form-control" style="width: 100%;border-radius: 5px;">
                                                    <option>All</option>
                                                    <option>Board of directors</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Status</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text">
                                                <select class="form-control" style="width: 100%;border-radius: 5px;">
                                                    <option>Effective</option>
                                                    <option> Disabled</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Rank</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text">
                                                <select class="form-control" style="width: 100%;border-radius: 5px;">
                                                    <option>All</option>
                                                    <option>New graduate / Internship</option>
                                                    <option>Employees</option>
                                                    <option> Team Leader / Supervisor</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Type of work</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text">
                                                <select class="form-control" style="width: 100%;border-radius: 5px;">
                                                    <option>All</option>
                                                    <option>Official staff</option>
                                                    <option> Part-time</option>
                                                    <option>Probation</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="search"><a href="searchEmployee.html" style="color:white;">Search</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="text-align:center;padding-top: 17px;">
                                            <a href="#">Closed</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </li>

                </ul>
            </li>
          </ul>
        </div>
        <div class="table">
            <table id="employeetable" style="margin:0;" class="table">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" />

                            <a class="sortable" style="text-decoration:none; cursor: pointer;color:black;">SID</a>
                        </th>
                        <th></th>
                        <th class="clo">NAME</th>
                        <th class="clo"> OFFICE</th>
                        <th class="clo"> RANK</th>
                        <th class="clo">TYPE OF WORK</th>
                        <th class="clo">EMAIL</th>
                        <th class="clo">INTERNAL ID</th>
                        <th class="clo"> STATUS</th>
                        <th class="clo"> CREATOR</th>
                        <th class="clo"> DATE CREATED</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" />

                            <a class="sortable" style="text-decoration:none; cursor: pointer;color:black;">18169</a>
                        </td>
                        <td>
                            <img style="width:35px;height:35px;" src="https://api.teamcrop.com/v1/photoavatar/a/5c53f5/7a013/40.jpg">
                        </td>
                        <td>
                            <a href="#employee/detail/18169" data-toggle="tooltip" title="View details" style="text-decoration:none">ed</a>
                            <br />
                            <span>Employees @</span>
                        </td>
                        <td> </td>
                        <td> Employees </td>
                        <td>Official staff</td>
                        <td>
                            <span>a@gmail.com</span>
                            <br />
                            <span>0327825991</span>
                        </td>
                        <td>7</td>
                        <td> <label style="background-color:#93ef93;">Effective</label></td>
                        <td> Thong Huyen Trang</td>
                        <td>14:06, Today</td>
                        <td>
                            <a href="edit_employee.html" class="edit" title="Click here to update data">EDIT</a>
                        </td>
                        <td>
                            <a href="#" class="delete     >                                                                                                                                                                                                                                                                                                                      " title="Click here to delete this data line ..">DELETE</a>
                        </td>
                    </tr>
                </thead>
            </table>
            <div class="bottom" style="margin-top:10px;margin-left:10px">
             
                    <tr>
                        
                        <th style=" margin-top:30px; ">
                            <input type="checkbox" />
                                <span>
                                    Selected
                                </span>
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
                                        <span> (</span><span>0</span><span> </span><span>current</span><span>)</span>
                                    </span>
                                </button>
                                <div class="modal fade" id="myModal" role="dialog">
                                    <div class="modal-dialog">

                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" style="text-align:center">You want to export 0 lines from the system.</h4>
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


