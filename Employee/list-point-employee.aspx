<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-point-employee.aspx.cs" Inherits="Employee_list_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:35%; color:black">
              <h2>Employee grading history</h2>
          </div>
          <div class="righted" style="margin-top: 12px;width: 100%;">
              <div class="icon" style="text-align: right; margin-bottom:10px">
                  <div class="imported" style="margin-right: 200px;">
                     <span class="time">
                            <a  href="EmployeeGradingCriteria2.html"  class="cog" style="text-decoration:none;">
                                <i class="fa fa-cog"></i>
                                Setting criteria
                            </a>

                            <span class="cog" data-toggle="modal" data-target="#myModal"><i class="fa fa-download"></i>Export Excel</span>

                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">

                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <h4 class="modal-title" style="color:black;"><b>Export Excel</b></h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="modal-table" >
                                                <label style="color:black; margin-right:30px">
                                                    Headquarters
                                                </label>
                                                <select class="form-control">
                                                    <option>All</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <div class="modal-table" >
                                                <label style="color:black;margin-right:50px">
                                                    Employees
                                                </label>
                                                <select class="form-control">
                                                    <option>-----</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <div class="modal-table" >
                                                <label style="color:black;margin-right:40px">Date created</label>
                                                <input type="date" />
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <a class="btn btn-default" data-dismiss="modal">Close</a>
                                            <a class="btn bg-teal-active" style="margin-left:10px; text-decoration:none;color: white;">Download the excel file</a>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <a class="cog" style="text-decoration:none ;"href="synthetic-point-employee.aspx" >
                               <i class="fas fa-chart-pie"></i>
                                Synthetic by employess
                            </a>
                        </span>
                  </div>
                  <div class="added" style=" margin-top: -35px;">
                     <a class="btn asc" style="margin-left:100px;" href="add-point-employee.aspx">  
                      <i class="fas fa-plus-square"></i> ADD THE REVIEW
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
                                            <span style="margin-right:10px;">Employee</span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="text">
                                            <select class="form-control" style="width: 100%;border-radius: 5px;">
                                                <option>Employee 1</option>
                                                <option>Employee 2</option>
                                                <option></option>
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
                                        <div class="text">
                                            <select class="form-control" style="width: 100%;border-radius: 5px;">
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
                                            <span style="margin-right:10px;">Criteria</span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="text">
                                            <select class="form-control" style="width: 100%;border-radius: 5px;">
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
                                        <div class="text">
                                            <select class="form-control" style="width: 100%;border-radius: 5px;">
                                                 <option>Employee 1</option>
                                                <option>Employee 2</option>
                                                <option></option>
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
                                        <div class="text">
                                            <input type="date" />
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
                            <a href="upload-point-employee.aspx"class="edit" title="Click here to update data">EDIT</a>
                        </td>
                    </tr>
                </thead>
            </table>
        </div>

</asp:Content>

